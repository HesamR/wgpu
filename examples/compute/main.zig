const std = @import("std");
const log = std.log.scoped(.main);

const wgpu = @import("wgpu");

const AdapterRequest = struct {
    status: wgpu.RequestAdapterStatus,
    message: [*:0]const u8,
    adapter: wgpu.Adapter,

    pub fn init() AdapterRequest {
        return AdapterRequest{
            .status = undefined,
            .message = undefined,
            .adapter = undefined,
        };
    }

    pub fn callback(
        status: wgpu.RequestAdapterStatus,
        adapter: wgpu.Adapter,
        message: [*:0]const u8,
        userdata: ?*anyopaque,
    ) callconv(.C) void {
        const data: *AdapterRequest = @ptrCast(@alignCast(userdata.?));

        data.* = .{
            .status = status,
            .message = message,
            .adapter = adapter,
        };
    }

    pub fn get(self: AdapterRequest) !wgpu.Adapter {
        if (self.status == .success) {
            return self.adapter;
        } else {
            log.err(
                "Failed to get adapter. status: {s}, message: {s}",
                .{ @tagName(self.status), self.message },
            );
            return error.AdapterRetrivalFailed;
        }
    }
};

const DeviceRequest = struct {
    status: wgpu.RequestDeviceStatus,
    message: [*:0]const u8,
    device: wgpu.Device,

    pub fn init() DeviceRequest {
        return DeviceRequest{
            .status = undefined,
            .message = undefined,
            .device = undefined,
        };
    }

    pub fn callback(
        status: wgpu.RequestDeviceStatus,
        device: wgpu.Device,
        message: [*:0]const u8,
        userdata: ?*anyopaque,
    ) callconv(.C) void {
        const data: *DeviceRequest = @ptrCast(@alignCast(userdata.?));

        data.* = .{
            .status = status,
            .message = message,
            .device = device,
        };
    }

    pub fn get(self: DeviceRequest) !wgpu.Device {
        if (self.status == .success) {
            return self.device;
        } else {
            log.err(
                "Failed to get device. status: {s}, message: {s}",
                .{ @tagName(self.status), self.message },
            );

            return error.DeviceRetrivalFailed;
        }
    }
};

pub fn main() !void {
    const instance = wgpu.createInstance(null);
    defer instance.release();

    var adapter_request = AdapterRequest.init();
    instance.requestAdapter(null, AdapterRequest.callback, &adapter_request);
    const adapter = try adapter_request.get();
    defer adapter.release();

    var device_request = DeviceRequest.init();
    adapter.requestDevice(null, DeviceRequest.callback, &device_request);
    const device = try device_request.get();
    defer device.release();

    const queue = device.getQueue();
    defer queue.release();

    const numbers = [_]u32{ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 };
    const numbers_size = @sizeOf(@TypeOf(numbers));

    const staging_buffer = device.createBuffer(&.{
        .label = "staging buffer",
        .usage = .{ .map_read = true, .copy_dst = true },
        .size = numbers_size,
        .mapped_at_creation = .false,
    });
    defer staging_buffer.release();

    const storage_buffer = device.createBuffer(&.{
        .label = "storage buffer",
        .usage = .{
            .storage = true,
            .copy_dst = true,
            .copy_src = true,
        },
        .size = numbers_size,
        .mapped_at_creation = .false,
    });
    defer storage_buffer.release();

    const shader_module = device.createShaderModule(&.{
        .next_in_chain = @ptrCast(&wgpu.ShaderModuleWgslDescriptor{
            .code = @embedFile("shader.wgsl"),
        }),
        .hint_count = 0,
        .hints = undefined,
    });
    defer shader_module.release();

    const pipeline = device.createComputePipeline(&.{
        .compute = .{
            .module = shader_module,
            .entry_point = "main",
            .constant_count = 0,
            .constants = undefined,
        },
    });
    defer pipeline.release();

    const bind_group_layout = pipeline.getBindGroupLayout(0);
    defer bind_group_layout.release();

    const bind_group = device.createBindGroup(&.{
        .layout = bind_group_layout,
        .entry_count = 1,
        .entries = &.{.{
            .binding = 0,
            .buffer = storage_buffer,
            .offset = 0,
            .size = numbers_size,
        }},
    });
    defer bind_group.release();

    const encoder = device.createCommandEncoder(null);
    defer encoder.release();

    const compute_pass = encoder.beginComputePass(null);

    compute_pass.setPipeline(pipeline);
    compute_pass.setBindGroup(0, bind_group, &.{});
    compute_pass.dispatchWorkgroups(@intCast(numbers.len), 1, 1);
    compute_pass.end();
    compute_pass.release();

    encoder.copyBufferToBuffer(storage_buffer, 0, staging_buffer, 0, numbers_size);

    const cmd_buffer = encoder.finish(null);
    defer cmd_buffer.release();

    queue.writeBuffer(storage_buffer, 0, &numbers, numbers_size);
    queue.submit(&.{cmd_buffer});

    staging_buffer.mapAsync(.{ .read = true }, 0, numbers_size, (struct {
        pub fn exec(
            status: wgpu.BufferMapAsyncStatus,
            userdata: ?*anyopaque,
        ) callconv(.C) void {
            _ = userdata;
            if (status != .success) {
                @panic("buffer map failed");
            }
        }
    }).exec, null);

    _ = wgpu.native.devicePoll(device, .true, null);

    const buf: [*]const u32 = @ptrCast(@alignCast(
        staging_buffer.getConstMappedRange(0, numbers_size),
    ));

    log.info("times: {any}", .{buf[0..numbers.len]});
}
