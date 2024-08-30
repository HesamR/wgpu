const std = @import("std");

pub fn build(b: *std.Build) !void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const module = b.addModule("main", .{
        .root_source_file = b.path("src/wgpu.zig"),
        .target = target,
        .optimize = optimize,
    });

    const os = target.result.os.tag;
    const arch = target.result.cpu.arch;

    if (os == .windows and arch == .x86_64) {
        module.addLibraryPath(b.path("libs/windows-x86_64/"));
    } else {
        return error.OSNotSupported;
    }

    module.linkSystemLibrary("wgpu_native", .{});

    const example_compute = b.addExecutable(.{
        .name = "compute",
        .root_source_file = b.path("examples/compute/main.zig"),
        .target = target,
        .optimize = optimize,
    });

    example_compute.root_module.addImport("wgpu", module);

    const run_cmd = b.addRunArtifact(example_compute);
    if (os == .windows and arch == .x86_64) {
        run_cmd.addPathDir("libs/windows-x86_64/");
    }

    const run_step = b.step("run-compute", "Run the example app");
    run_step.dependOn(&run_cmd.step);
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
