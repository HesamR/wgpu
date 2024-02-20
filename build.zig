const std = @import("std");

pub fn build(b: *std.Build) !void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const module = b.addModule("main", .{
        .root_source_file = .{ .path = "src/wgpu.zig" },
        .target = target,
        .optimize = optimize,
    });

    const os = target.result.os.tag;
    const arch = target.result.cpu.arch;

    if (os == .windows and arch == .x86_64) {
        module.addLibraryPath(.{ .path = "libs/windows-x86_64/" });
    } else {
        return error.OSNotSupported;
    }

    module.linkSystemLibrary("wgpu_native", .{});
}

pub fn installBinFiles(
    b: *std.Build,
    dep: *std.Build.Dependency,
    target: std.Build.ResolvedTarget,
) void {
    if (target.result.os.tag == .windows) {
        const install_step = b.addInstallBinFile(
            dep.path("libs/windows-x86_64/wgpu_native.dll"),
            "./wgpu_native.dll",
        );

        b.getInstallStep().dependOn(&install_step.step);
    }
}
