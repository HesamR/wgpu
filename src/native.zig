const wgpu = @import("wgpu.zig");

pub const STypeNative = enum(c_uint) {
    device_extras = 0x00030001,
    required_limits_extras = 0x00030002,
    pipeline_layout_extras = 0x00030003,
    shader_module_glsl_descriptor = 0x00030004,
    supported_limits_extras = 0x00030005,
    instance_extras = 0x00030006,
    bind_group_entry_extras = 0x00030007,
    bind_group_layout_entry_extras = 0x00030008,
    query_set_descriptor_extras = 0x00030009,
    surface_configuration_extras = 0x0003000a,

    pub fn into(in: STypeNative) wgpu.SType {
        return @enumFromInt(@intFromEnum(in));
    }
};

pub const FeatureNameNative = enum(c_uint) {
    push_constants = 0x00030001,
    texture_adapter_specific_format_features = 0x00030002,
    multi_draw_indirect = 0x00030003,
    multi_draw_indirect_count = 0x00030004,
    vertex_writable_storage = 0x00030005,
    texture_binding_array = 0x00030006,
    sampled_texture_and_storage_buffer_array_non_uniform_indexing = 0x00030007,
    pipeline_statistics_query = 0x00030008,
    storage_resource_binding_array = 0x00030009,
    partially_bound_binding_array = 0x0003000a,
    texture_format_16bit_norm = 0x0003000b,
    texture_compression_astc_hdr = 0x0003000c,
    // TODO: requires wgpu.h api change
    // timestamp_query_inside_passes = 0x0003000d,
    mappable_primary_buffers = 0x0003000e,
    buffer_binding_array = 0x0003000f,
    uniform_buffer_and_storage_texture_array_non_uniform_indexing = 0x00030010,
    // TODO: requires wgpu.h api change
    // address_mode_clamp_to_zero = 0x00030011,
    // address_mode_clamp_to_border = 0x00030012,
    // polygon_mode_line = 0x00030013,
    // polygon_mode_point = 0x00030014,
    // conservative_rasterization = 0x00030015,
    // clear_texture = 0x00030016,
    // spirv_shader_passthrough = 0x00030017,
    // multiview = 0x00030018,
    vertex_attribute_64bit = 0x00030019,
    texture_format_nv12 = 0x0003001a,
    ray_tracing_acceleration_structure = 0x0003001b,
    ray_query = 0x0003001c,
    shader_f64 = 0x0003001d,
    shader_i16 = 0x0003001e,
    shader_primitive_index = 0x0003001f,
    shader_early_depth_test = 0x00030020,

    pub fn into(in: FeatureNameNative) wgpu.FeatureName {
        return @enumFromInt(@intFromEnum(in));
    }
};

pub const TextureFormatNative = enum(c_uint) {
    // From Features::TEXTURE_FORMAT_16BIT_NORM
    r16_unorm = 0x00030001,
    r16_snorm = 0x00030002,
    rg16_unorm = 0x00030003,
    rg16_snorm = 0x00030004,
    rgba16_unorm = 0x00030005,
    rgba16_snorm = 0x00030006,

    // From Features::TEXTURE_FORMAT_NV12
    nv12 = 0x00030007,

    pub fn into(in: TextureFormatNative) wgpu.TextureFormat {
        return @enumFromInt(@intFromEnum(in));
    }
};

pub const LogLevel = enum(c_uint) {
    off = 0x00000000,
    err = 0x00000001,
    warn = 0x00000002,
    info = 0x00000003,
    debug = 0x00000004,
    trace = 0x00000005,
};

pub const Dx12Compiler = enum(c_uint) {
    undef = 0x00000000,
    fxc = 0x00000001,
    dxc = 0x00000002,
};

pub const Gles3MinorVersion = enum(c_uint) {
    automatic = 0x00000000,
    version0 = 0x00000001,
    version1 = 0x00000002,
    version2 = 0x00000003,
};

pub const InstanceFlags = packed struct(u32) {
    debug: bool = false,
    validation: bool = false,
    discard_hal_labels: bool = false,

    _padding: u29 = 0,
};

pub const InstanceBackendFlags = packed struct(u32) {
    vulkan: bool = false,
    gl: bool = false,
    metal: bool = false,
    dx12: bool = false,
    dx11: bool = false,
    browser_web_gpu: bool = false,

    _padding: u26 = 0,
};

pub const LogCallback = *const fn (
    level: LogLevel,
    message: ?[*:0]const u8,
    userdata: ?*anyopaque,
) void;

const InstanceExtras = extern struct {
    chain: wgpu.ChainedStruct = .{ .s_type = STypeNative.instance_extras.into() },
    backends: InstanceBackendFlags = .{},
    flags: InstanceFlags = .{},
    dx12ShaderCompiler: Dx12Compiler = .undef,
    gles3MinorVersion: Gles3MinorVersion = .automatic,
    dxilPath: ?[*:0]const u8 = null,
    dxcPath: ?[*:0]const u8 = null,
};

pub const EnumerateAdapterOptions = extern struct {
    next_in_chain: ?*wgpu.ChainedStruct = null,
    backends: InstanceBackendFlags,
};

pub const SubmissionIndex = u64;

pub const WrappedSubmissionIndex = extern struct {
    queue: wgpu.Queue,
    submission_index: SubmissionIndex,
};

extern fn wgpuInstanceEnumerateAdapters(instance: wgpu.Instance, options: ?*const EnumerateAdapterOptions, adapters: ?[*]wgpu.Adapter) usize;
extern fn wgpuDevicePoll(device: wgpu.Device, wait: wgpu.Bool, wrapped_submission_index: ?*const WrappedSubmissionIndex) wgpu.Bool;
extern fn wgpuRenderPassEncoderSetPushConstants(encoder: wgpu.RenderPassEncoder, stages: wgpu.ShaderStage, offset: u32, size_bytes: u32, data: ?*anyopaque) void;
extern fn wgpuRenderPassEncoderMultiDrawIndirect(encoder: wgpu.RenderPassEncoder, buffer: wgpu.Buffer, offset: u64, count: u32) void;
extern fn wgpuRenderPassEncoderMultiDrawIndexedIndirect(encoder: wgpu.RenderPassEncoder, buffer: wgpu.Buffer, offset: u64, count: u32) void;
extern fn wgpuRenderPassEncoderMultiDrawIndirectCount(encoder: wgpu.RenderPassEncoder, buffer: wgpu.Buffer, offset: u64, count_buffer: wgpu.Buffer, count_buffer_offset: u64, max_count: u32) void;
extern fn wgpuRenderPassEncoderMultiDrawIndexedIndirectCount(encoder: wgpu.RenderPassEncoder, buffer: wgpu.Buffer, offset: u64, count_buffer: wgpu.Buffer, count_buffer_offset: u64, max_count: u32) void;
extern fn wgpuRenderPassEncoderBeginPipelineStatisticsQuery(encoder: wgpu.RenderPassEncoder, query_set: wgpu.QuerySet, query_index: u32) void;
extern fn wgpuRenderPassEncoderEndPipelineStatisticsQuery(encoder: wgpu.RenderPassEncoder) void;
extern fn wgpuComputePassEncoderBeginPipelineStatisticsQuery(encoder: wgpu.ComputePassEncoder, query_set: wgpu.QuerySet, query_index: u32) void;
extern fn wgpuComputePassEncoderEndPipelineStatisticsQuery(encoder: wgpu.ComputePassEncoder) void;
extern fn wgpuSetLogCallback(callback: LogCallback, userdata: ?*anyopaque) void;
extern fn wgpuSetLogLevel(level: LogLevel) void;
extern fn wgpuGetVersion() void;

pub const getVersion = wgpuGetVersion;

pub const setLogCallback = wgpuSetLogCallback;
pub const setLogLevel = wgpuSetLogLevel;

pub const instanceEnumerateAdapters = wgpuInstanceEnumerateAdapters;

pub const devicePoll = wgpuDevicePoll;

pub const computePassEncoderBeginPipelineStatisticsQuery = wgpuComputePassEncoderBeginPipelineStatisticsQuery;
pub const computePassEncoderEndPipelineStatisticsQuery = wgpuComputePassEncoderEndPipelineStatisticsQuery;

pub const renderPassEncoderSetPushConstants = wgpuRenderPassEncoderSetPushConstants;
pub const renderPassEncoderMultiDrawIndirect = wgpuRenderPassEncoderMultiDrawIndirect;
pub const renderPassEncoderMultiDrawIndexedIndirect = wgpuRenderPassEncoderMultiDrawIndexedIndirect;
pub const renderPassEncoderMultiDrawIndirectCount = wgpuRenderPassEncoderMultiDrawIndirectCount;
pub const renderPassEncoderMultiDrawIndexedIndirectCount = wgpuRenderPassEncoderMultiDrawIndexedIndirectCount;
pub const renderPassEncoderBeginPipelineStatisticsQuery = wgpuRenderPassEncoderBeginPipelineStatisticsQuery;
pub const renderPassEncoderEndPipelineStatisticsQuery = wgpuRenderPassEncoderEndPipelineStatisticsQuery;
