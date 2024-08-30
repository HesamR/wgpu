const std = @import("std");

pub const native = @import("native.zig");

pub const Bool = enum(u32) {
    false = 0,
    true = 1,
};

pub const array_layer_count_undefined = std.math.maxInt(u32);
pub const copy_stride_undefined = std.math.maxInt(u32);
pub const depth_slice_undefined = std.math.maxInt(u32);
pub const limit_u32_undefined = std.math.maxInt(u32);
pub const limit_u64_undefined = std.math.maxInt(u64);
pub const mip_level_count_undefined = std.math.maxInt(u32);
pub const query_set_index_undefined = std.math.maxInt(u32);
pub const whole_map_size = std.math.maxInt(usize);
pub const whole_size = std.math.maxInt(u64);

pub const RequestAdapterStatus = enum(c_uint) {
    success = 0,
    unavailable = 1,
    @"error" = 2,
    unknown = 3,

    _,
};

pub const AdapterType = enum(c_uint) {
    discrete_gpu = 0,
    integrated_gpu = 1,
    cpu = 2,
    unknown = 3,

    _,
};

pub const AddressMode = enum(c_uint) {
    repeat = 0,
    mirror_repeat = 1,
    clamp_to_edge = 2,

    _,
};

pub const BackendType = enum(c_uint) {
    undefined = 0,
    null = 1,
    web_gpu = 2,
    d3_d11 = 3,
    d3_d12 = 4,
    metal = 5,
    vulkan = 6,
    open_gl = 7,
    open_gles = 8,

    _,
};

pub const BufferBindingType = enum(c_uint) {
    undefined = 0,
    uniform = 1,
    storage = 2,
    read_only_storage = 3,

    _,
};

pub const SamplerBindingType = enum(c_uint) {
    undefined = 0,
    filtering = 1,
    non_filtering = 2,
    comparison = 3,

    _,
};

pub const TextureSampleType = enum(c_uint) {
    undefined = 0,
    float = 1,
    unfilterable_float = 2,
    depth = 3,
    sint = 4,
    uint = 5,

    _,
};

pub const StorageTextureAccess = enum(c_uint) {
    undefined = 0,
    write_only = 1,
    read_only = 2,
    read_write = 3,

    _,
};

pub const BlendFactor = enum(c_uint) {
    zero = 0,
    one = 1,
    src = 2,
    one_minus_src = 3,
    src_alpha = 4,
    one_minus_src_alpha = 5,
    dst = 6,
    one_minus_dst = 7,
    dst_alpha = 8,
    one_minus_dst_alpha = 9,
    src_alpha_saturated = 10,
    constant = 11,
    one_minus_constant = 12,

    _,
};

pub const BlendOperation = enum(c_uint) {
    add = 0,
    subtract = 1,
    reverse_subtract = 2,
    min = 3,
    max = 4,

    _,
};

pub const BufferMapAsyncStatus = enum(c_uint) {
    success = 0,
    validation_error = 1,
    unknown = 2,
    device_lost = 3,
    destroyed_before_callback = 4,
    unmapped_before_callback = 5,
    mapping_already_pending = 6,
    offset_out_of_range = 7,
    size_out_of_range = 8,

    _,
};

pub const BufferMapState = enum(c_uint) {
    unmapped = 0,
    pending = 1,
    mapped = 2,

    _,
};

pub const CompareFunction = enum(c_uint) {
    undefined = 0,
    never = 1,
    less = 2,
    less_equal = 3,
    greater = 4,
    greater_equal = 5,
    equal = 6,
    not_equal = 7,
    always = 8,

    _,
};

pub const CompilationInfoRequestStatus = enum(c_uint) {
    success = 0,
    @"error" = 1,
    device_lost = 2,
    unknown = 3,

    _,
};

pub const CompilationMessageType = enum(c_uint) {
    @"error" = 0,
    warning = 1,
    info = 2,

    _,
};

pub const CompositeAlphaMode = enum(c_uint) {
    auto = 0,
    @"opaque" = 1,
    premultiplied = 2,
    unpremultiplied = 3,
    inherit = 4,

    _,
};

pub const CreatePipelineAsyncStatus = enum(c_uint) {
    success = 0,
    validation_error = 1,
    internal_error = 2,
    device_lost = 3,
    device_destroyed = 4,
    unknown = 5,

    _,
};

pub const CullMode = enum(c_uint) {
    none = 0,
    front = 1,
    back = 2,

    _,
};

pub const DeviceLostReason = enum(c_uint) {
    unknown = 1,
    destroyed = 2,

    _,
};

pub const ErrorFilter = enum(c_uint) {
    validation = 0,
    out_of_memory = 1,
    internal = 2,

    _,
};

pub const ErrorType = enum(c_uint) {
    no_error = 0,
    validation = 1,
    out_of_memory = 2,
    internal = 3,
    unknown = 4,
    device_lost = 5,

    _,
};

pub const FeatureName = enum(c_uint) {
    undefined = 0,
    depth_clip_control = 1,
    depth32_float_stencil8 = 2,
    timestamp_query = 3,
    texture_compression_bc = 4,
    texture_compression_etc2 = 5,
    texture_compression_astc = 6,
    indirect_first_instance = 7,
    shader_f16 = 8,
    rg11_b10_ufloat_renderable = 9,
    bgra8_unorm_storage = 10,
    float32_filterable = 11,

    _,
};

pub const FilterMode = enum(c_uint) {
    nearest = 0,
    linear = 1,

    _,
};

pub const FrontFace = enum(c_uint) {
    ccw = 0,
    cw = 1,

    _,
};

pub const IndexFormat = enum(c_uint) {
    undefined = 0,
    uint16 = 1,
    uint32 = 2,

    _,
};

pub const VertexStepMode = enum(c_uint) {
    vertex = 0,
    instance = 1,
    vertex_buffer_not_used = 2,

    _,
};

pub const LoadOp = enum(c_uint) {
    undefined = 0,
    clear = 1,
    load = 2,

    _,
};

pub const MipmapFilterMode = enum(c_uint) {
    nearest = 0,
    linear = 1,

    _,
};

pub const StoreOp = enum(c_uint) {
    undefined = 0,
    store = 1,
    discard = 2,

    _,
};

pub const PowerPreference = enum(c_uint) {
    undefined = 0,
    low_power = 1,
    high_performance = 2,

    _,
};

pub const PresentMode = enum(c_uint) {
    fifo = 0,
    fifo_relaxed = 1,
    immediate = 2,
    mailbox = 3,

    _,
};

pub const PrimitiveTopology = enum(c_uint) {
    point_list = 0,
    line_list = 1,
    line_strip = 2,
    triangle_list = 3,
    triangle_strip = 4,

    _,
};

pub const QueryType = enum(c_uint) {
    occlusion = 0,
    timestamp = 1,

    _,
};

pub const QueueWorkDoneStatus = enum(c_uint) {
    success = 0,
    @"error" = 1,
    unknown = 2,
    device_lost = 3,

    _,
};

pub const RequestDeviceStatus = enum(c_uint) {
    success = 0,
    @"error" = 1,
    unknown = 2,

    _,
};

pub const StencilOperation = enum(c_uint) {
    keep = 0,
    zero = 1,
    replace = 2,
    invert = 3,
    increment_clamp = 4,
    decrement_clamp = 5,
    increment_wrap = 6,
    decrement_wrap = 7,

    _,
};

pub const SType = enum(c_uint) {
    invalid = 0,
    surface_descriptor_from_metal_layer = 1,
    surface_descriptor_from_windows_hwnd = 2,
    surface_descriptor_from_xlib_window = 3,
    surface_descriptor_from_canvas_html_selector = 4,
    shader_module_spirv_descriptor = 5,
    shader_module_wgsl_descriptor = 6,
    primitive_depth_clip_control = 7,
    surface_descriptor_from_wayland_surface = 8,
    surface_descriptor_from_android_native_window = 9,
    surface_descriptor_from_xcb_window = 10,
    render_pass_descriptor_max_draw_count = 15,

    _,
};

pub const SurfaceGetCurrentTextureStatus = enum(c_uint) {
    success = 0,
    timeout = 1,
    outdated = 2,
    lost = 3,
    out_of_memory = 4,
    device_lost = 5,

    _,
};

pub const TextureAspect = enum(c_uint) {
    all = 0,
    stencil_only = 1,
    depth_only = 2,

    _,
};

pub const TextureDimension = enum(c_uint) {
    @"1_d" = 0,
    @"2_d" = 1,
    @"3_d" = 2,

    _,
};

pub const TextureFormat = enum(c_uint) {
    undefined = 0,
    r8_unorm = 1,
    r8_snorm = 2,
    r8_uint = 3,
    r8_sint = 4,
    r16_uint = 5,
    r16_sint = 6,
    r16_float = 7,
    rg8_unorm = 8,
    rg8_snorm = 9,
    rg8_uint = 10,
    rg8_sint = 11,
    r32_float = 12,
    r32_uint = 13,
    r32_sint = 14,
    rg16_uint = 15,
    rg16_sint = 16,
    rg16_float = 17,
    rgba8_unorm = 18,
    rgba8_unorm_srgb = 19,
    rgba8_snorm = 20,
    rgba8_uint = 21,
    rgba8_sint = 22,
    bgra8_unorm = 23,
    bgra8_unorm_srgb = 24,
    rgb10_a2_uint = 25,
    rgb10_a2_unorm = 26,
    rg11_b10_ufloat = 27,
    rgb9_e5_ufloat = 28,
    rg32_float = 29,
    rg32_uint = 30,
    rg32_sint = 31,
    rgba16_uint = 32,
    rgba16_sint = 33,
    rgba16_float = 34,
    rgba32_float = 35,
    rgba32_uint = 36,
    rgba32_sint = 37,
    stencil8 = 38,
    depth16_unorm = 39,
    depth24_plus = 40,
    depth24_plus_stencil8 = 41,
    depth32_float = 42,
    depth32_float_stencil8 = 43,
    bc1_rgba_unorm = 44,
    bc1_rgba_unorm_srgb = 45,
    bc2_rgba_unorm = 46,
    bc2_rgba_unorm_srgb = 47,
    bc3_rgba_unorm = 48,
    bc3_rgba_unorm_srgb = 49,
    bc4_r_unorm = 50,
    bc4_r_snorm = 51,
    bc5_rg_unorm = 52,
    bc5_rg_snorm = 53,
    bc6_h_rgb_ufloat = 54,
    bc6_h_rgb_float = 55,
    bc7_rgba_unorm = 56,
    bc7_rgba_unorm_srgb = 57,
    etc2_rgb8_unorm = 58,
    etc2_rgb8_unorm_srgb = 59,
    etc2_rgb8_a1_unorm = 60,
    etc2_rgb8_a1_unorm_srgb = 61,
    etc2_rgba8_unorm = 62,
    etc2_rgba8_unorm_srgb = 63,
    eac_r11_unorm = 64,
    eac_r11_snorm = 65,
    eac_rg11_unorm = 66,
    eac_rg11_snorm = 67,
    astc_4x4_unorm = 68,
    astc_4x4_unorm_srgb = 69,
    astc_5x4_unorm = 70,
    astc_5x4_unorm_srgb = 71,
    astc_5x5_unorm = 72,
    astc_5x5_unorm_srgb = 73,
    astc_6x5_unorm = 74,
    astc_6x5_unorm_srgb = 75,
    astc_6x6_unorm = 76,
    astc_6x6_unorm_srgb = 77,
    astc_8x5_unorm = 78,
    astc_8x5_unorm_srgb = 79,
    astc_8x6_unorm = 80,
    astc_8x6_unorm_srgb = 81,
    astc_8x8_unorm = 82,
    astc_8x8_unorm_srgb = 83,
    astc_10x5_unorm = 84,
    astc_10x5_unorm_srgb = 85,
    astc_10x6_unorm = 86,
    astc_10x6_unorm_srgb = 87,
    astc_10x8_unorm = 88,
    astc_10x8_unorm_srgb = 89,
    astc_10x10_unorm = 90,
    astc_10x10_unorm_srgb = 91,
    astc_12x10_unorm = 92,
    astc_12x10_unorm_srgb = 93,
    astc_12x12_unorm = 94,
    astc_12x12_unorm_srgb = 95,

    _,
};

pub const TextureViewDimension = enum(c_uint) {
    undefined = 0,
    @"1_d" = 1,
    @"2_d" = 2,
    @"2_d_array" = 3,
    cube = 4,
    cube_array = 5,
    @"3_d" = 6,

    _,
};

pub const VertexFormat = enum(c_uint) {
    undefined = 0,
    uint8x2 = 1,
    uint8x4 = 2,
    sint8x2 = 3,
    sint8x4 = 4,
    unorm8x2 = 5,
    unorm8x4 = 6,
    snorm8x2 = 7,
    snorm8x4 = 8,
    uint16x2 = 9,
    uint16x4 = 10,
    sint16x2 = 11,
    sint16x4 = 12,
    unorm16x2 = 13,
    unorm16x4 = 14,
    snorm16x2 = 15,
    snorm16x4 = 16,
    float16x2 = 17,
    float16x4 = 18,
    float32 = 19,
    float32x2 = 20,
    float32x3 = 21,
    float32x4 = 22,
    uint32 = 23,
    uint32x2 = 24,
    uint32x3 = 25,
    uint32x4 = 26,
    sint32 = 27,
    sint32x2 = 28,
    sint32x3 = 29,
    sint32x4 = 30,

    _,
};

pub const WgslFeatureName = enum(c_uint) {
    undefined = 0,
    readonly_and_readwrite_storage_textures = 1,
    packed4x8_integer_dot_product = 2,
    unrestricted_pointer_parameters = 3,
    pointer_composite_access = 4,

    _,
};

pub const BufferUsage = packed struct(u32) {
    map_read: bool = false,
    map_write: bool = false,
    copy_src: bool = false,
    copy_dst: bool = false,
    index: bool = false,
    vertex: bool = false,
    uniform: bool = false,
    storage: bool = false,
    indirect: bool = false,
    query_resolve: bool = false,

    _padding: u22 = 0,
};

pub const ColorWriteMask = packed struct(u32) {
    red: bool = false,
    green: bool = false,
    blue: bool = false,
    alpha: bool = false,

    _padding: u28 = 0,
};

pub const MapMode = packed struct(u32) {
    read: bool = false,
    write: bool = false,

    _padding: u30 = 0,
};

pub const ShaderStage = packed struct(u32) {
    vertex: bool = false,
    fragment: bool = false,
    compute: bool = false,

    _padding: u29 = 0,
};

pub const TextureUsage = packed struct(u32) {
    copy_src: bool = false,
    copy_dst: bool = false,
    texture_binding: bool = false,
    storage_binding: bool = false,
    render_attachment: bool = false,

    _padding: u27 = 0,
};

pub const DeviceLostCallback = *const fn (reason: DeviceLostReason, message: [*:0]const u8, userdata: *anyopaque) callconv(.C) void;
pub const ErrorCallback = *const fn (type: ErrorType, message: [*:0]const u8, userdata: *anyopaque) callconv(.C) void;

pub const ChainedStruct = extern struct {
    next: ?*const ChainedStruct = null,
    s_type: SType,
};

pub const ChainedStructOut = extern struct {
    next: ?*ChainedStructOut = null,
    s_type: SType,
};

pub const RequestAdapterOptions = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    compatible_surface: ?Surface = null,
    power_preference: PowerPreference,
    backend_type: BackendType,
    force_fallback_adapter: Bool,
};

pub const AdapterInfo = extern struct {
    next_in_chain: ?*ChainedStructOut,
    vendor: [*:0]const u8,
    architecture: [*:0]const u8,
    device: [*:0]const u8,
    description: [*:0]const u8,
    backend_type: BackendType,
    adapter_type: AdapterType,
    vendor_id: u32,
    device_id: u32,

    extern fn wgpuAdapterInfoFreeMembers(self: AdapterInfo) void;
    pub const freeMembers = wgpuAdapterInfoFreeMembers;
};

pub const DeviceDescriptor = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    label: ?[*:0]const u8 = null,
    required_feature_count: usize,
    required_features: [*]const FeatureName,
    required_limits: ?*const RequiredLimits = null,
    default_queue: QueueDescriptor,
    device_lost_callback: DeviceLostCallback,
    device_lost_userdata: *anyopaque,
    uncaptured_error_callback_info: UncapturedErrorCallbackInfo,
};

pub const BindGroupEntry = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    binding: u32,
    buffer: ?Buffer = null,
    offset: u64,
    size: u64,
    sampler: ?Sampler = null,
    texture_view: ?TextureView = null,
};

pub const BindGroupDescriptor = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    label: ?[*:0]const u8 = null,
    layout: BindGroupLayout,
    entry_count: usize,
    entries: [*]const BindGroupEntry,
};

pub const BufferBindingLayout = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    type: BufferBindingType,
    has_dynamic_offset: Bool,
    min_binding_size: u64,
};

pub const SamplerBindingLayout = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    type: SamplerBindingType,
};

pub const TextureBindingLayout = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    sample_type: TextureSampleType,
    view_dimension: TextureViewDimension,
    multisampled: Bool,
};

pub const SurfaceCapabilities = extern struct {
    next_in_chain: ?*ChainedStructOut,
    usages: TextureUsage,
    format_count: usize,
    formats: [*]const TextureFormat,
    present_mode_count: usize,
    present_modes: [*]const PresentMode,
    alpha_mode_count: usize,
    alpha_modes: [*]const CompositeAlphaMode,

    extern fn wgpuSurfaceCapabilitiesFreeMembers(self: SurfaceCapabilities) void;
    pub const freeMembers = wgpuSurfaceCapabilitiesFreeMembers;
};

pub const SurfaceConfiguration = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    device: Device,
    format: TextureFormat,
    usage: TextureUsage,
    view_format_count: usize,
    view_formats: [*]const TextureFormat,
    alpha_mode: CompositeAlphaMode,
    width: u32,
    height: u32,
    present_mode: PresentMode,
};

pub const StorageTextureBindingLayout = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    access: StorageTextureAccess,
    format: TextureFormat,
    view_dimension: TextureViewDimension,
};

pub const BindGroupLayoutEntry = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    binding: u32,
    visibility: ShaderStage,
    buffer: BufferBindingLayout,
    sampler: SamplerBindingLayout,
    texture: TextureBindingLayout,
    storage_texture: StorageTextureBindingLayout,
};

pub const BindGroupLayoutDescriptor = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    label: ?[*:0]const u8 = null,
    entry_count: usize,
    entries: [*]const BindGroupLayoutEntry,
};

pub const BlendComponent = extern struct {
    operation: BlendOperation,
    src_factor: BlendFactor,
    dst_factor: BlendFactor,
};

pub const BufferDescriptor = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    label: ?[*:0]const u8 = null,
    usage: BufferUsage,
    size: u64,
    mapped_at_creation: Bool,
};

pub const Color = extern struct {
    r: f64,
    g: f64,
    b: f64,
    a: f64,
};

pub const ConstantEntry = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    key: [*:0]const u8,
    value: f64,
};

pub const CommandBufferDescriptor = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    label: ?[*:0]const u8 = null,
};

pub const CommandEncoderDescriptor = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    label: ?[*:0]const u8 = null,
};

pub const CompilationInfo = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    message_count: usize,
    messages: [*]const CompilationMessage,
};

pub const CompilationMessage = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    message: ?[*:0]const u8 = null,
    type: CompilationMessageType,
    line_num: u64,
    line_pos: u64,
    offset: u64,
    length: u64,
    utf16_line_pos: u64,
    utf16_offset: u64,
    utf16_length: u64,
};

pub const ComputePassDescriptor = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    label: ?[*:0]const u8 = null,
    timestamp_writes: ?*const ComputePassTimestampWrites = null,
};

pub const ComputePassTimestampWrites = extern struct {
    query_set: QuerySet,
    beginning_of_pass_write_index: u32,
    end_of_pass_write_index: u32,
};

pub const ComputePipelineDescriptor = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    label: ?[*:0]const u8 = null,
    layout: ?PipelineLayout = null,
    compute: ProgrammableStageDescriptor,
};

pub const Limits = extern struct {
    max_texture_dimension_1_d: u32,
    max_texture_dimension_2_d: u32,
    max_texture_dimension_3_d: u32,
    max_texture_array_layers: u32,
    max_bind_groups: u32,
    max_bind_groups_plus_vertex_buffers: u32,
    max_bindings_per_bind_group: u32,
    max_dynamic_uniform_buffers_per_pipeline_layout: u32,
    max_dynamic_storage_buffers_per_pipeline_layout: u32,
    max_sampled_textures_per_shader_stage: u32,
    max_samplers_per_shader_stage: u32,
    max_storage_buffers_per_shader_stage: u32,
    max_storage_textures_per_shader_stage: u32,
    max_uniform_buffers_per_shader_stage: u32,
    max_uniform_buffer_binding_size: u64,
    max_storage_buffer_binding_size: u64,
    min_uniform_buffer_offset_alignment: u32,
    min_storage_buffer_offset_alignment: u32,
    max_vertex_buffers: u32,
    max_buffer_size: u64,
    max_vertex_attributes: u32,
    max_vertex_buffer_array_stride: u32,
    max_inter_stage_shader_components: u32,
    max_inter_stage_shader_variables: u32,
    max_color_attachments: u32,
    max_color_attachment_bytes_per_sample: u32,
    max_compute_workgroup_storage_size: u32,
    max_compute_invocations_per_workgroup: u32,
    max_compute_workgroup_size_x: u32,
    max_compute_workgroup_size_y: u32,
    max_compute_workgroup_size_z: u32,
    max_compute_workgroups_per_dimension: u32,
};

pub const RequiredLimits = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    limits: Limits,
};

pub const SupportedLimits = extern struct {
    next_in_chain: ?*ChainedStructOut,
    limits: Limits,
};

pub const Extent_3D = extern struct {
    width: u32,
    height: u32,
    depth_or_array_layers: u32,
};

pub const ImageCopyBuffer = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    layout: TextureDataLayout,
    buffer: Buffer,
};

pub const ImageCopyTexture = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    texture: Texture,
    mip_level: u32,
    origin: Origin_3D,
    aspect: TextureAspect,
};

pub const InstanceDescriptor = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
};

pub const VertexAttribute = extern struct {
    format: VertexFormat,
    offset: u64,
    shader_location: u32,
};

pub const VertexBufferLayout = extern struct {
    array_stride: u64,
    step_mode: VertexStepMode,
    attribute_count: usize,
    attributes: [*]const VertexAttribute,
};

pub const Origin_3D = extern struct {
    x: u32,
    y: u32,
    z: u32,
};

pub const PipelineLayoutDescriptor = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    label: ?[*:0]const u8 = null,
    bind_group_layout_count: usize,
    bind_group_layouts: [*]const BindGroupLayout,
};

pub const ProgrammableStageDescriptor = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    module: ShaderModule,
    entry_point: ?[*:0]const u8 = null,
    constant_count: usize,
    constants: [*]const ConstantEntry,
};

pub const QuerySetDescriptor = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    label: ?[*:0]const u8 = null,
    type: QueryType,
    count: u32,
};

pub const QueueDescriptor = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    label: ?[*:0]const u8 = null,
};

pub const RenderBundleDescriptor = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    label: ?[*:0]const u8 = null,
};

pub const RenderBundleEncoderDescriptor = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    label: ?[*:0]const u8 = null,
    color_format_count: usize,
    color_formats: [*]const TextureFormat,
    depth_stencil_format: TextureFormat,
    sample_count: u32,
    depth_read_only: Bool,
    stencil_read_only: Bool,
};

pub const RenderPassColorAttachment = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    view: ?TextureView = null,
    depth_slice: u32,
    resolve_target: ?TextureView = null,
    load_op: LoadOp,
    store_op: StoreOp,
    clear_value: Color,
};

pub const RenderPassDepthStencilAttachment = extern struct {
    view: TextureView,
    depth_load_op: LoadOp,
    depth_store_op: StoreOp,
    depth_clear_value: f32,
    depth_read_only: Bool,
    stencil_load_op: LoadOp,
    stencil_store_op: StoreOp,
    stencil_clear_value: u32,
    stencil_read_only: Bool,
};

pub const RenderPassDescriptor = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    label: ?[*:0]const u8 = null,
    color_attachment_count: usize,
    color_attachments: [*]const RenderPassColorAttachment,
    depth_stencil_attachment: ?*const RenderPassDepthStencilAttachment = null,
    occlusion_query_set: ?QuerySet = null,
    timestamp_writes: ?*const RenderPassTimestampWrites = null,
};

pub const RenderPassDescriptorMaxDrawCount = extern struct {
    chain: ChainedStruct = .{ .s_type = .render_pass_descriptor_max_draw_count },
    max_draw_count: u64,
};

pub const RenderPassTimestampWrites = extern struct {
    query_set: QuerySet,
    beginning_of_pass_write_index: u32,
    end_of_pass_write_index: u32,
};

pub const VertexState = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    module: ShaderModule,
    entry_point: ?[*:0]const u8 = null,
    constant_count: usize,
    constants: [*]const ConstantEntry,
    buffer_count: usize,
    buffers: [*]const VertexBufferLayout,
};

pub const PrimitiveState = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    topology: PrimitiveTopology,
    strip_index_format: IndexFormat,
    front_face: FrontFace,
    cull_mode: CullMode,
};

pub const PrimitiveDepthClipControl = extern struct {
    chain: ChainedStruct = .{ .s_type = .primitive_depth_clip_control },
    unclipped_depth: Bool,
};

pub const DepthStencilState = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    format: TextureFormat,
    depth_write_enabled: Bool,
    depth_compare: CompareFunction,
    stencil_front: StencilFaceState,
    stencil_back: StencilFaceState,
    stencil_read_mask: u32,
    stencil_write_mask: u32,
    depth_bias: i32,
    depth_bias_slope_scale: f32,
    depth_bias_clamp: f32,
};

pub const MultisampleState = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    count: u32,
    mask: u32,
    alpha_to_coverage_enabled: Bool,
};

pub const FragmentState = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    module: ShaderModule,
    entry_point: ?[*:0]const u8 = null,
    constant_count: usize,
    constants: [*]const ConstantEntry,
    target_count: usize,
    targets: [*]const ColorTargetState,
};

pub const ColorTargetState = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    format: TextureFormat,
    blend: ?*const BlendState = null,
    write_mask: ColorWriteMask,
};

pub const BlendState = extern struct {
    color: BlendComponent,
    alpha: BlendComponent,
};

pub const RenderPipelineDescriptor = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    label: ?[*:0]const u8 = null,
    layout: ?PipelineLayout = null,
    vertex: VertexState,
    primitive: PrimitiveState,
    depth_stencil: ?*const DepthStencilState = null,
    multisample: MultisampleState,
    fragment: ?*const FragmentState = null,
};

pub const SamplerDescriptor = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    label: ?[*:0]const u8 = null,
    address_mode_u: AddressMode,
    address_mode_v: AddressMode,
    address_mode_w: AddressMode,
    mag_filter: FilterMode,
    min_filter: FilterMode,
    mipmap_filter: MipmapFilterMode,
    lod_min_clamp: f32,
    lod_max_clamp: f32,
    compare: CompareFunction,
    max_anisotropy: u16,
};

pub const ShaderModuleDescriptor = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    label: ?[*:0]const u8 = null,
    hint_count: usize,
    hints: [*]const ShaderModuleCompilationHint,
};

pub const ShaderModuleCompilationHint = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    entry_point: [*:0]const u8,
    layout: PipelineLayout,
};

pub const ShaderModuleSpirvDescriptor = extern struct {
    chain: ChainedStruct = .{ .s_type = .shader_module_spirv_descriptor },
    code_size: u32,
    code: *const u32,
};

pub const ShaderModuleWgslDescriptor = extern struct {
    chain: ChainedStruct = .{ .s_type = .shader_module_wgsl_descriptor },
    code: [*:0]const u8,
};

pub const StencilFaceState = extern struct {
    compare: CompareFunction,
    fail_op: StencilOperation,
    depth_fail_op: StencilOperation,
    pass_op: StencilOperation,
};

pub const SurfaceDescriptor = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    label: ?[*:0]const u8 = null,
};

pub const SurfaceDescriptorFromAndroidNativeWindow = extern struct {
    chain: ChainedStruct = .{ .s_type = .surface_descriptor_from_android_native_window },
    window: *anyopaque,
};

pub const SurfaceDescriptorFromCanvasHtmlSelector = extern struct {
    chain: ChainedStruct = .{ .s_type = .surface_descriptor_from_canvas_html_selector },
    selector: [*:0]const u8,
};

pub const SurfaceDescriptorFromMetalLayer = extern struct {
    chain: ChainedStruct = .{ .s_type = .surface_descriptor_from_metal_layer },
    layer: *anyopaque,
};

pub const SurfaceDescriptorFromWindowsHwnd = extern struct {
    chain: ChainedStruct = .{ .s_type = .surface_descriptor_from_windows_hwnd },
    hinstance: *anyopaque,
    hwnd: *anyopaque,
};

pub const SurfaceDescriptorFromXcbWindow = extern struct {
    chain: ChainedStruct = .{ .s_type = .surface_descriptor_from_xcb_window },
    connection: *anyopaque,
    window: u32,
};

pub const SurfaceDescriptorFromXlibWindow = extern struct {
    chain: ChainedStruct = .{ .s_type = .surface_descriptor_from_xlib_window },
    display: *anyopaque,
    window: u64,
};

pub const SurfaceDescriptorFromWaylandSurface = extern struct {
    chain: ChainedStruct = .{ .s_type = .surface_descriptor_from_wayland_surface },
    display: *anyopaque,
    surface: *anyopaque,
};

pub const SurfaceTexture = extern struct {
    texture: Texture,
    suboptimal: Bool,
    status: SurfaceGetCurrentTextureStatus,
};

pub const TextureDataLayout = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    offset: u64,
    bytes_per_row: u32,
    rows_per_image: u32,
};

pub const TextureDescriptor = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    label: ?[*:0]const u8 = null,
    usage: TextureUsage,
    dimension: TextureDimension,
    size: Extent_3D,
    format: TextureFormat,
    mip_level_count: u32,
    sample_count: u32,
    view_format_count: usize,
    view_formats: [*]const TextureFormat,
};

pub const TextureViewDescriptor = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    label: ?[*:0]const u8 = null,
    format: TextureFormat,
    dimension: TextureViewDimension,
    base_mip_level: u32,
    mip_level_count: u32,
    base_array_layer: u32,
    array_layer_count: u32,
    aspect: TextureAspect,
};

pub const UncapturedErrorCallbackInfo = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    callback: ErrorCallback,
    userdata: *anyopaque,
};

extern fn wgpuCreateInstance(descriptor: ?*const InstanceDescriptor) Instance;
pub const createInstance = wgpuCreateInstance;

pub const Adapter = *opaque {
    extern fn wgpuAdapterGetLimits(self: Adapter, limits: *SupportedLimits) Bool;
    pub const getLimits = wgpuAdapterGetLimits;

    extern fn wgpuAdapterHasFeature(self: Adapter, feature: FeatureName) Bool;
    pub const hasFeature = wgpuAdapterHasFeature;

    extern fn wgpuAdapterEnumerateFeatures(self: Adapter, features: *FeatureName) usize;
    pub const enumerateFeatures = wgpuAdapterEnumerateFeatures;

    extern fn wgpuAdapterGetInfo(self: Adapter, info: *AdapterInfo) void;
    pub const getInfo = wgpuAdapterGetInfo;

    pub const RequestDeviceCallback = *const fn (status: RequestDeviceStatus, device: Device, message: [*:0]const u8, userdata: ?*anyopaque) callconv(.C) void;
    extern fn wgpuAdapterRequestDevice(self: Adapter, descriptor: ?*const DeviceDescriptor, callback: RequestDeviceCallback, userdata: ?*anyopaque) void;
    pub const requestDevice = wgpuAdapterRequestDevice;

    extern fn wgpuAdapterRelease(self: Adapter) void;
    pub const release = wgpuAdapterRelease;

    extern fn wgpuAdapterReference(self: Adapter) void;
    pub const reference = wgpuAdapterReference;
};

pub const BindGroup = *opaque {
    extern fn wgpuBindGroupSetLabel(self: BindGroup, label: [*:0]const u8) void;
    pub const setLabel = wgpuBindGroupSetLabel;

    extern fn wgpuBindGroupRelease(self: BindGroup) void;
    pub const release = wgpuBindGroupRelease;

    extern fn wgpuBindGroupReference(self: BindGroup) void;
    pub const reference = wgpuBindGroupReference;
};

pub const BindGroupLayout = *opaque {
    extern fn wgpuBindGroupLayoutSetLabel(self: BindGroupLayout, label: [*:0]const u8) void;
    pub const setLabel = wgpuBindGroupLayoutSetLabel;

    extern fn wgpuBindGroupLayoutRelease(self: BindGroupLayout) void;
    pub const release = wgpuBindGroupLayoutRelease;

    extern fn wgpuBindGroupLayoutReference(self: BindGroupLayout) void;
    pub const reference = wgpuBindGroupLayoutReference;
};

pub const Buffer = *opaque {
    pub const MapAsyncCallback = *const fn (status: BufferMapAsyncStatus, userdata: ?*anyopaque) callconv(.C) void;
    extern fn wgpuBufferMapAsync(self: Buffer, mode: MapMode, offset: usize, size: usize, callback: MapAsyncCallback, userdata: ?*anyopaque) void;
    pub const mapAsync = wgpuBufferMapAsync;

    extern fn wgpuBufferGetMappedRange(self: Buffer, offset: usize, size: usize) *anyopaque;
    pub const getMappedRange = wgpuBufferGetMappedRange;

    extern fn wgpuBufferGetConstMappedRange(self: Buffer, offset: usize, size: usize) *const anyopaque;
    pub const getConstMappedRange = wgpuBufferGetConstMappedRange;

    extern fn wgpuBufferSetLabel(self: Buffer, label: [*:0]const u8) void;
    pub const setLabel = wgpuBufferSetLabel;

    extern fn wgpuBufferGetUsage(self: Buffer) BufferUsage;
    pub const getUsage = wgpuBufferGetUsage;

    extern fn wgpuBufferGetSize(self: Buffer) u64;
    pub const getSize = wgpuBufferGetSize;

    extern fn wgpuBufferGetMapState(self: Buffer) BufferMapState;
    pub const getMapState = wgpuBufferGetMapState;

    extern fn wgpuBufferUnmap(self: Buffer) void;
    pub const unmap = wgpuBufferUnmap;

    extern fn wgpuBufferDestroy(self: Buffer) void;
    pub const destroy = wgpuBufferDestroy;

    extern fn wgpuBufferRelease(self: Buffer) void;
    pub const release = wgpuBufferRelease;

    extern fn wgpuBufferReference(self: Buffer) void;
    pub const reference = wgpuBufferReference;
};

pub const CommandBuffer = *opaque {
    extern fn wgpuCommandBufferSetLabel(self: CommandBuffer, label: [*:0]const u8) void;
    pub const setLabel = wgpuCommandBufferSetLabel;

    extern fn wgpuCommandBufferRelease(self: CommandBuffer) void;
    pub const release = wgpuCommandBufferRelease;

    extern fn wgpuCommandBufferReference(self: CommandBuffer) void;
    pub const reference = wgpuCommandBufferReference;
};

pub const CommandEncoder = *opaque {
    extern fn wgpuCommandEncoderFinish(self: CommandEncoder, descriptor: ?*const CommandBufferDescriptor) CommandBuffer;
    pub const finish = wgpuCommandEncoderFinish;

    extern fn wgpuCommandEncoderBeginComputePass(self: CommandEncoder, descriptor: ?*const ComputePassDescriptor) ComputePassEncoder;
    pub const beginComputePass = wgpuCommandEncoderBeginComputePass;

    extern fn wgpuCommandEncoderBeginRenderPass(self: CommandEncoder, descriptor: *const RenderPassDescriptor) RenderPassEncoder;
    pub const beginRenderPass = wgpuCommandEncoderBeginRenderPass;

    extern fn wgpuCommandEncoderCopyBufferToBuffer(self: CommandEncoder, source: Buffer, source_offset: u64, destination: Buffer, destination_offset: u64, size: u64) void;
    pub const copyBufferToBuffer = wgpuCommandEncoderCopyBufferToBuffer;

    extern fn wgpuCommandEncoderCopyBufferToTexture(self: CommandEncoder, source: *const ImageCopyBuffer, destination: *const ImageCopyTexture, copy_size: *const Extent_3D) void;
    pub const copyBufferToTexture = wgpuCommandEncoderCopyBufferToTexture;

    extern fn wgpuCommandEncoderCopyTextureToBuffer(self: CommandEncoder, source: *const ImageCopyTexture, destination: *const ImageCopyBuffer, copy_size: *const Extent_3D) void;
    pub const copyTextureToBuffer = wgpuCommandEncoderCopyTextureToBuffer;

    extern fn wgpuCommandEncoderCopyTextureToTexture(self: CommandEncoder, source: *const ImageCopyTexture, destination: *const ImageCopyTexture, copy_size: *const Extent_3D) void;
    pub const copyTextureToTexture = wgpuCommandEncoderCopyTextureToTexture;

    extern fn wgpuCommandEncoderClearBuffer(self: CommandEncoder, buffer: Buffer, offset: u64, size: u64) void;
    pub const clearBuffer = wgpuCommandEncoderClearBuffer;

    extern fn wgpuCommandEncoderInsertDebugMarker(self: CommandEncoder, marker_label: [*:0]const u8) void;
    pub const insertDebugMarker = wgpuCommandEncoderInsertDebugMarker;

    extern fn wgpuCommandEncoderPopDebugGroup(self: CommandEncoder) void;
    pub const popDebugGroup = wgpuCommandEncoderPopDebugGroup;

    extern fn wgpuCommandEncoderPushDebugGroup(self: CommandEncoder, group_label: [*:0]const u8) void;
    pub const pushDebugGroup = wgpuCommandEncoderPushDebugGroup;

    extern fn wgpuCommandEncoderResolveQuerySet(self: CommandEncoder, query_set: QuerySet, first_query: u32, query_count: u32, destination: Buffer, destination_offset: u64) void;
    pub const resolveQuerySet = wgpuCommandEncoderResolveQuerySet;

    extern fn wgpuCommandEncoderWriteTimestamp(self: CommandEncoder, query_set: QuerySet, query_index: u32) void;
    pub const writeTimestamp = wgpuCommandEncoderWriteTimestamp;

    extern fn wgpuCommandEncoderSetLabel(self: CommandEncoder, label: [*:0]const u8) void;
    pub const setLabel = wgpuCommandEncoderSetLabel;

    extern fn wgpuCommandEncoderRelease(self: CommandEncoder) void;
    pub const release = wgpuCommandEncoderRelease;

    extern fn wgpuCommandEncoderReference(self: CommandEncoder) void;
    pub const reference = wgpuCommandEncoderReference;
};

pub const ComputePassEncoder = *opaque {
    extern fn wgpuComputePassEncoderInsertDebugMarker(self: ComputePassEncoder, marker_label: [*:0]const u8) void;
    pub const insertDebugMarker = wgpuComputePassEncoderInsertDebugMarker;

    extern fn wgpuComputePassEncoderPopDebugGroup(self: ComputePassEncoder) void;
    pub const popDebugGroup = wgpuComputePassEncoderPopDebugGroup;

    extern fn wgpuComputePassEncoderPushDebugGroup(self: ComputePassEncoder, group_label: [*:0]const u8) void;
    pub const pushDebugGroup = wgpuComputePassEncoderPushDebugGroup;

    extern fn wgpuComputePassEncoderSetPipeline(self: ComputePassEncoder, pipeline: ComputePipeline) void;
    pub const setPipeline = wgpuComputePassEncoderSetPipeline;

    extern fn wgpuComputePassEncoderSetBindGroup(self: ComputePassEncoder, group_index: u32, group: ?BindGroup, dynamic_offset_count: usize, dynamic_offsets: [*]const u32) void;
    pub inline fn setBindGroup(self: ComputePassEncoder, group_index: u32, group: ?BindGroup, dynamic_offsets: []const u32) void {
        return wgpuComputePassEncoderSetBindGroup(self, group_index, group, dynamic_offsets.len, dynamic_offsets.ptr);
    }

    extern fn wgpuComputePassEncoderDispatchWorkgroups(self: ComputePassEncoder, workgroup_count_x: u32, workgroup_count_y: u32, workgroup_count_z: u32) void;
    pub const dispatchWorkgroups = wgpuComputePassEncoderDispatchWorkgroups;

    extern fn wgpuComputePassEncoderDispatchWorkgroupsIndirect(self: ComputePassEncoder, indirect_buffer: Buffer, indirect_offset: u64) void;
    pub const dispatchWorkgroupsIndirect = wgpuComputePassEncoderDispatchWorkgroupsIndirect;

    extern fn wgpuComputePassEncoderEnd(self: ComputePassEncoder) void;
    pub const end = wgpuComputePassEncoderEnd;

    extern fn wgpuComputePassEncoderSetLabel(self: ComputePassEncoder, label: [*:0]const u8) void;
    pub const setLabel = wgpuComputePassEncoderSetLabel;

    extern fn wgpuComputePassEncoderRelease(self: ComputePassEncoder) void;
    pub const release = wgpuComputePassEncoderRelease;

    extern fn wgpuComputePassEncoderReference(self: ComputePassEncoder) void;
    pub const reference = wgpuComputePassEncoderReference;
};

pub const ComputePipeline = *opaque {
    extern fn wgpuComputePipelineGetBindGroupLayout(self: ComputePipeline, group_index: u32) BindGroupLayout;
    pub const getBindGroupLayout = wgpuComputePipelineGetBindGroupLayout;

    extern fn wgpuComputePipelineSetLabel(self: ComputePipeline, label: [*:0]const u8) void;
    pub const setLabel = wgpuComputePipelineSetLabel;

    extern fn wgpuComputePipelineRelease(self: ComputePipeline) void;
    pub const release = wgpuComputePipelineRelease;

    extern fn wgpuComputePipelineReference(self: ComputePipeline) void;
    pub const reference = wgpuComputePipelineReference;
};

pub const Device = *opaque {
    extern fn wgpuDeviceCreateBindGroup(self: Device, descriptor: *const BindGroupDescriptor) BindGroup;
    pub const createBindGroup = wgpuDeviceCreateBindGroup;

    extern fn wgpuDeviceCreateBindGroupLayout(self: Device, descriptor: *const BindGroupLayoutDescriptor) BindGroupLayout;
    pub const createBindGroupLayout = wgpuDeviceCreateBindGroupLayout;

    extern fn wgpuDeviceCreateBuffer(self: Device, descriptor: *const BufferDescriptor) Buffer;
    pub const createBuffer = wgpuDeviceCreateBuffer;

    extern fn wgpuDeviceCreateCommandEncoder(self: Device, descriptor: ?*const CommandEncoderDescriptor) CommandEncoder;
    pub const createCommandEncoder = wgpuDeviceCreateCommandEncoder;

    extern fn wgpuDeviceCreateComputePipeline(self: Device, descriptor: *const ComputePipelineDescriptor) ComputePipeline;
    pub const createComputePipeline = wgpuDeviceCreateComputePipeline;

    pub const CreateComputePipelineAsyncCallback = *const fn (status: CreatePipelineAsyncStatus, pipeline: ComputePipeline, message: [*:0]const u8, userdata: ?*anyopaque) callconv(.C) void;
    extern fn wgpuDeviceCreateComputePipelineAsync(self: Device, descriptor: *const ComputePipelineDescriptor, callback: CreateComputePipelineAsyncCallback, userdata: ?*anyopaque) void;
    pub const createComputePipelineAsync = wgpuDeviceCreateComputePipelineAsync;

    extern fn wgpuDeviceCreatePipelineLayout(self: Device, descriptor: *const PipelineLayoutDescriptor) PipelineLayout;
    pub const createPipelineLayout = wgpuDeviceCreatePipelineLayout;

    extern fn wgpuDeviceCreateQuerySet(self: Device, descriptor: *const QuerySetDescriptor) QuerySet;
    pub const createQuerySet = wgpuDeviceCreateQuerySet;

    pub const CreateRenderPipelineAsyncCallback = *const fn (status: CreatePipelineAsyncStatus, pipeline: RenderPipeline, message: [*:0]const u8, userdata: ?*anyopaque) callconv(.C) void;
    extern fn wgpuDeviceCreateRenderPipelineAsync(self: Device, descriptor: *const RenderPipelineDescriptor, callback: CreateRenderPipelineAsyncCallback, userdata: ?*anyopaque) void;
    pub const createRenderPipelineAsync = wgpuDeviceCreateRenderPipelineAsync;

    extern fn wgpuDeviceCreateRenderBundleEncoder(self: Device, descriptor: *const RenderBundleEncoderDescriptor) RenderBundleEncoder;
    pub const createRenderBundleEncoder = wgpuDeviceCreateRenderBundleEncoder;

    extern fn wgpuDeviceCreateRenderPipeline(self: Device, descriptor: *const RenderPipelineDescriptor) RenderPipeline;
    pub const createRenderPipeline = wgpuDeviceCreateRenderPipeline;

    extern fn wgpuDeviceCreateSampler(self: Device, descriptor: ?*const SamplerDescriptor) Sampler;
    pub const createSampler = wgpuDeviceCreateSampler;

    extern fn wgpuDeviceCreateShaderModule(self: Device, descriptor: *const ShaderModuleDescriptor) ShaderModule;
    pub const createShaderModule = wgpuDeviceCreateShaderModule;

    extern fn wgpuDeviceCreateTexture(self: Device, descriptor: *const TextureDescriptor) Texture;
    pub const createTexture = wgpuDeviceCreateTexture;

    extern fn wgpuDeviceDestroy(self: Device) void;
    pub const destroy = wgpuDeviceDestroy;

    extern fn wgpuDeviceGetLimits(self: Device, limits: *SupportedLimits) Bool;
    pub const getLimits = wgpuDeviceGetLimits;

    extern fn wgpuDeviceHasFeature(self: Device, feature: FeatureName) Bool;
    pub const hasFeature = wgpuDeviceHasFeature;

    extern fn wgpuDeviceEnumerateFeatures(self: Device, features: *FeatureName) usize;
    pub const enumerateFeatures = wgpuDeviceEnumerateFeatures;

    extern fn wgpuDeviceGetQueue(self: Device) Queue;
    pub const getQueue = wgpuDeviceGetQueue;

    extern fn wgpuDevicePushErrorScope(self: Device, filter: ErrorFilter) void;
    pub const pushErrorScope = wgpuDevicePushErrorScope;

    extern fn wgpuDevicePopErrorScope(self: Device, callback: ErrorCallback, userdata: *anyopaque) void;
    pub const popErrorScope = wgpuDevicePopErrorScope;

    extern fn wgpuDeviceSetLabel(self: Device, label: [*:0]const u8) void;
    pub const setLabel = wgpuDeviceSetLabel;

    extern fn wgpuDeviceRelease(self: Device) void;
    pub const release = wgpuDeviceRelease;

    extern fn wgpuDeviceReference(self: Device) void;
    pub const reference = wgpuDeviceReference;
};

pub const Instance = *opaque {
    extern fn wgpuInstanceCreateSurface(self: Instance, descriptor: *const SurfaceDescriptor) Surface;
    pub const createSurface = wgpuInstanceCreateSurface;

    extern fn wgpuInstanceHasWgslLanguageFeature(self: Instance, feature: WgslFeatureName) Bool;
    pub const hasWgslLanguageFeature = wgpuInstanceHasWgslLanguageFeature;

    extern fn wgpuInstanceProcessEvents(self: Instance) void;
    pub const processEvents = wgpuInstanceProcessEvents;

    pub const RequestAdapterCallback = *const fn (status: RequestAdapterStatus, adapter: Adapter, message: [*:0]const u8, userdata: ?*anyopaque) callconv(.C) void;
    extern fn wgpuInstanceRequestAdapter(self: Instance, options: ?*const RequestAdapterOptions, callback: RequestAdapterCallback, userdata: ?*anyopaque) void;
    pub const requestAdapter = wgpuInstanceRequestAdapter;

    extern fn wgpuInstanceRelease(self: Instance) void;
    pub const release = wgpuInstanceRelease;

    extern fn wgpuInstanceReference(self: Instance) void;
    pub const reference = wgpuInstanceReference;
};

pub const PipelineLayout = *opaque {
    extern fn wgpuPipelineLayoutSetLabel(self: PipelineLayout, label: [*:0]const u8) void;
    pub const setLabel = wgpuPipelineLayoutSetLabel;

    extern fn wgpuPipelineLayoutRelease(self: PipelineLayout) void;
    pub const release = wgpuPipelineLayoutRelease;

    extern fn wgpuPipelineLayoutReference(self: PipelineLayout) void;
    pub const reference = wgpuPipelineLayoutReference;
};

pub const QuerySet = *opaque {
    extern fn wgpuQuerySetSetLabel(self: QuerySet, label: [*:0]const u8) void;
    pub const setLabel = wgpuQuerySetSetLabel;

    extern fn wgpuQuerySetGetType(self: QuerySet) QueryType;
    pub const getType = wgpuQuerySetGetType;

    extern fn wgpuQuerySetGetCount(self: QuerySet) u32;
    pub const getCount = wgpuQuerySetGetCount;

    extern fn wgpuQuerySetDestroy(self: QuerySet) void;
    pub const destroy = wgpuQuerySetDestroy;

    extern fn wgpuQuerySetRelease(self: QuerySet) void;
    pub const release = wgpuQuerySetRelease;

    extern fn wgpuQuerySetReference(self: QuerySet) void;
    pub const reference = wgpuQuerySetReference;
};

pub const Queue = *opaque {
    extern fn wgpuQueueSubmit(self: Queue, command_count: usize, commands: [*]const CommandBuffer) void;
    pub inline fn submit(self: Queue, commands: []const CommandBuffer) void {
        return wgpuQueueSubmit(self, commands.len, commands.ptr);
    }

    pub const OnSubmittedWorkDoneCallback = *const fn (status: QueueWorkDoneStatus, userdata: ?*anyopaque) callconv(.C) void;
    extern fn wgpuQueueOnSubmittedWorkDone(self: Queue, callback: OnSubmittedWorkDoneCallback, userdata: ?*anyopaque) void;
    pub const onSubmittedWorkDone = wgpuQueueOnSubmittedWorkDone;

    extern fn wgpuQueueWriteBuffer(self: Queue, buffer: Buffer, buffer_offset: u64, data: *const anyopaque, size: usize) void;
    pub const writeBuffer = wgpuQueueWriteBuffer;

    extern fn wgpuQueueWriteTexture(self: Queue, destination: *const ImageCopyTexture, data: *const anyopaque, data_size: usize, data_layout: *const TextureDataLayout, write_size: *const Extent_3D) void;
    pub const writeTexture = wgpuQueueWriteTexture;

    extern fn wgpuQueueSetLabel(self: Queue, label: [*:0]const u8) void;
    pub const setLabel = wgpuQueueSetLabel;

    extern fn wgpuQueueRelease(self: Queue) void;
    pub const release = wgpuQueueRelease;

    extern fn wgpuQueueReference(self: Queue) void;
    pub const reference = wgpuQueueReference;
};

pub const RenderBundle = *opaque {
    extern fn wgpuRenderBundleSetLabel(self: RenderBundle, label: [*:0]const u8) void;
    pub const setLabel = wgpuRenderBundleSetLabel;

    extern fn wgpuRenderBundleRelease(self: RenderBundle) void;
    pub const release = wgpuRenderBundleRelease;

    extern fn wgpuRenderBundleReference(self: RenderBundle) void;
    pub const reference = wgpuRenderBundleReference;
};

pub const RenderBundleEncoder = *opaque {
    extern fn wgpuRenderBundleEncoderSetPipeline(self: RenderBundleEncoder, pipeline: RenderPipeline) void;
    pub const setPipeline = wgpuRenderBundleEncoderSetPipeline;

    extern fn wgpuRenderBundleEncoderSetBindGroup(self: RenderBundleEncoder, group_index: u32, group: ?BindGroup, dynamic_offset_count: usize, dynamic_offsets: [*]const u32) void;
    pub inline fn setBindGroup(self: RenderBundleEncoder, group_index: u32, group: ?BindGroup, dynamic_offsets: []const u32) void {
        return wgpuRenderBundleEncoderSetBindGroup(self, group_index, group, dynamic_offsets.len, dynamic_offsets.ptr);
    }

    extern fn wgpuRenderBundleEncoderDraw(self: RenderBundleEncoder, vertex_count: u32, instance_count: u32, first_vertex: u32, first_instance: u32) void;
    pub const draw = wgpuRenderBundleEncoderDraw;

    extern fn wgpuRenderBundleEncoderDrawIndexed(self: RenderBundleEncoder, index_count: u32, instance_count: u32, first_index: u32, base_vertex: i32, first_instance: u32) void;
    pub const drawIndexed = wgpuRenderBundleEncoderDrawIndexed;

    extern fn wgpuRenderBundleEncoderDrawIndirect(self: RenderBundleEncoder, indirect_buffer: Buffer, indirect_offset: u64) void;
    pub const drawIndirect = wgpuRenderBundleEncoderDrawIndirect;

    extern fn wgpuRenderBundleEncoderDrawIndexedIndirect(self: RenderBundleEncoder, indirect_buffer: Buffer, indirect_offset: u64) void;
    pub const drawIndexedIndirect = wgpuRenderBundleEncoderDrawIndexedIndirect;

    extern fn wgpuRenderBundleEncoderInsertDebugMarker(self: RenderBundleEncoder, marker_label: [*:0]const u8) void;
    pub const insertDebugMarker = wgpuRenderBundleEncoderInsertDebugMarker;

    extern fn wgpuRenderBundleEncoderPopDebugGroup(self: RenderBundleEncoder) void;
    pub const popDebugGroup = wgpuRenderBundleEncoderPopDebugGroup;

    extern fn wgpuRenderBundleEncoderPushDebugGroup(self: RenderBundleEncoder, group_label: [*:0]const u8) void;
    pub const pushDebugGroup = wgpuRenderBundleEncoderPushDebugGroup;

    extern fn wgpuRenderBundleEncoderSetVertexBuffer(self: RenderBundleEncoder, slot: u32, buffer: ?Buffer, offset: u64, size: u64) void;
    pub const setVertexBuffer = wgpuRenderBundleEncoderSetVertexBuffer;

    extern fn wgpuRenderBundleEncoderSetIndexBuffer(self: RenderBundleEncoder, buffer: Buffer, format: IndexFormat, offset: u64, size: u64) void;
    pub const setIndexBuffer = wgpuRenderBundleEncoderSetIndexBuffer;

    extern fn wgpuRenderBundleEncoderFinish(self: RenderBundleEncoder, descriptor: ?*const RenderBundleDescriptor) RenderBundle;
    pub const finish = wgpuRenderBundleEncoderFinish;

    extern fn wgpuRenderBundleEncoderSetLabel(self: RenderBundleEncoder, label: [*:0]const u8) void;
    pub const setLabel = wgpuRenderBundleEncoderSetLabel;

    extern fn wgpuRenderBundleEncoderRelease(self: RenderBundleEncoder) void;
    pub const release = wgpuRenderBundleEncoderRelease;

    extern fn wgpuRenderBundleEncoderReference(self: RenderBundleEncoder) void;
    pub const reference = wgpuRenderBundleEncoderReference;
};

pub const RenderPassEncoder = *opaque {
    extern fn wgpuRenderPassEncoderSetPipeline(self: RenderPassEncoder, pipeline: RenderPipeline) void;
    pub const setPipeline = wgpuRenderPassEncoderSetPipeline;

    extern fn wgpuRenderPassEncoderSetBindGroup(self: RenderPassEncoder, group_index: u32, group: ?BindGroup, dynamic_offset_count: usize, dynamic_offsets: [*]const u32) void;
    pub inline fn setBindGroup(self: RenderPassEncoder, group_index: u32, group: ?BindGroup, dynamic_offsets: []const u32) void {
        return wgpuRenderPassEncoderSetBindGroup(self, group_index, group, dynamic_offsets.len, dynamic_offsets.ptr);
    }

    extern fn wgpuRenderPassEncoderDraw(self: RenderPassEncoder, vertex_count: u32, instance_count: u32, first_vertex: u32, first_instance: u32) void;
    pub const draw = wgpuRenderPassEncoderDraw;

    extern fn wgpuRenderPassEncoderDrawIndexed(self: RenderPassEncoder, index_count: u32, instance_count: u32, first_index: u32, base_vertex: i32, first_instance: u32) void;
    pub const drawIndexed = wgpuRenderPassEncoderDrawIndexed;

    extern fn wgpuRenderPassEncoderDrawIndirect(self: RenderPassEncoder, indirect_buffer: Buffer, indirect_offset: u64) void;
    pub const drawIndirect = wgpuRenderPassEncoderDrawIndirect;

    extern fn wgpuRenderPassEncoderDrawIndexedIndirect(self: RenderPassEncoder, indirect_buffer: Buffer, indirect_offset: u64) void;
    pub const drawIndexedIndirect = wgpuRenderPassEncoderDrawIndexedIndirect;

    extern fn wgpuRenderPassEncoderExecuteBundles(self: RenderPassEncoder, bundle_count: usize, bundles: [*]const RenderBundle) void;
    pub inline fn executeBundles(self: RenderPassEncoder, bundles: []const RenderBundle) void {
        return wgpuRenderPassEncoderExecuteBundles(self, bundles.len, bundles.ptr);
    }

    extern fn wgpuRenderPassEncoderInsertDebugMarker(self: RenderPassEncoder, marker_label: [*:0]const u8) void;
    pub const insertDebugMarker = wgpuRenderPassEncoderInsertDebugMarker;

    extern fn wgpuRenderPassEncoderPopDebugGroup(self: RenderPassEncoder) void;
    pub const popDebugGroup = wgpuRenderPassEncoderPopDebugGroup;

    extern fn wgpuRenderPassEncoderPushDebugGroup(self: RenderPassEncoder, group_label: [*:0]const u8) void;
    pub const pushDebugGroup = wgpuRenderPassEncoderPushDebugGroup;

    extern fn wgpuRenderPassEncoderSetStencilReference(self: RenderPassEncoder, reference: u32) void;
    pub const setStencilReference = wgpuRenderPassEncoderSetStencilReference;

    extern fn wgpuRenderPassEncoderSetBlendConstant(self: RenderPassEncoder, color: *const Color) void;
    pub const setBlendConstant = wgpuRenderPassEncoderSetBlendConstant;

    extern fn wgpuRenderPassEncoderSetViewport(self: RenderPassEncoder, x: f32, y: f32, width: f32, height: f32, min_depth: f32, max_depth: f32) void;
    pub const setViewport = wgpuRenderPassEncoderSetViewport;

    extern fn wgpuRenderPassEncoderSetScissorRect(self: RenderPassEncoder, x: u32, y: u32, width: u32, height: u32) void;
    pub const setScissorRect = wgpuRenderPassEncoderSetScissorRect;

    extern fn wgpuRenderPassEncoderSetVertexBuffer(self: RenderPassEncoder, slot: u32, buffer: ?Buffer, offset: u64, size: u64) void;
    pub const setVertexBuffer = wgpuRenderPassEncoderSetVertexBuffer;

    extern fn wgpuRenderPassEncoderSetIndexBuffer(self: RenderPassEncoder, buffer: Buffer, format: IndexFormat, offset: u64, size: u64) void;
    pub const setIndexBuffer = wgpuRenderPassEncoderSetIndexBuffer;

    extern fn wgpuRenderPassEncoderBeginOcclusionQuery(self: RenderPassEncoder, query_index: u32) void;
    pub const beginOcclusionQuery = wgpuRenderPassEncoderBeginOcclusionQuery;

    extern fn wgpuRenderPassEncoderEndOcclusionQuery(self: RenderPassEncoder) void;
    pub const endOcclusionQuery = wgpuRenderPassEncoderEndOcclusionQuery;

    extern fn wgpuRenderPassEncoderEnd(self: RenderPassEncoder) void;
    pub const end = wgpuRenderPassEncoderEnd;

    extern fn wgpuRenderPassEncoderSetLabel(self: RenderPassEncoder, label: [*:0]const u8) void;
    pub const setLabel = wgpuRenderPassEncoderSetLabel;

    extern fn wgpuRenderPassEncoderRelease(self: RenderPassEncoder) void;
    pub const release = wgpuRenderPassEncoderRelease;

    extern fn wgpuRenderPassEncoderReference(self: RenderPassEncoder) void;
    pub const reference = wgpuRenderPassEncoderReference;
};

pub const RenderPipeline = *opaque {
    extern fn wgpuRenderPipelineGetBindGroupLayout(self: RenderPipeline, group_index: u32) BindGroupLayout;
    pub const getBindGroupLayout = wgpuRenderPipelineGetBindGroupLayout;

    extern fn wgpuRenderPipelineSetLabel(self: RenderPipeline, label: [*:0]const u8) void;
    pub const setLabel = wgpuRenderPipelineSetLabel;

    extern fn wgpuRenderPipelineRelease(self: RenderPipeline) void;
    pub const release = wgpuRenderPipelineRelease;

    extern fn wgpuRenderPipelineReference(self: RenderPipeline) void;
    pub const reference = wgpuRenderPipelineReference;
};

pub const Sampler = *opaque {
    extern fn wgpuSamplerSetLabel(self: Sampler, label: [*:0]const u8) void;
    pub const setLabel = wgpuSamplerSetLabel;

    extern fn wgpuSamplerRelease(self: Sampler) void;
    pub const release = wgpuSamplerRelease;

    extern fn wgpuSamplerReference(self: Sampler) void;
    pub const reference = wgpuSamplerReference;
};

pub const ShaderModule = *opaque {
    pub const GetCompilationInfoCallback = *const fn (status: CompilationInfoRequestStatus, compilation_info: *const CompilationInfo, userdata: ?*anyopaque) callconv(.C) void;
    extern fn wgpuShaderModuleGetCompilationInfo(self: ShaderModule, callback: GetCompilationInfoCallback, userdata: ?*anyopaque) void;
    pub const getCompilationInfo = wgpuShaderModuleGetCompilationInfo;

    extern fn wgpuShaderModuleSetLabel(self: ShaderModule, label: [*:0]const u8) void;
    pub const setLabel = wgpuShaderModuleSetLabel;

    extern fn wgpuShaderModuleRelease(self: ShaderModule) void;
    pub const release = wgpuShaderModuleRelease;

    extern fn wgpuShaderModuleReference(self: ShaderModule) void;
    pub const reference = wgpuShaderModuleReference;
};

pub const Surface = *opaque {
    extern fn wgpuSurfaceConfigure(self: Surface, config: *const SurfaceConfiguration) void;
    pub const configure = wgpuSurfaceConfigure;

    extern fn wgpuSurfaceGetCapabilities(self: Surface, adapter: Adapter, capabilities: *SurfaceCapabilities) void;
    pub const getCapabilities = wgpuSurfaceGetCapabilities;

    extern fn wgpuSurfaceGetCurrentTexture(self: Surface, surface_texture: *SurfaceTexture) void;
    pub const getCurrentTexture = wgpuSurfaceGetCurrentTexture;

    extern fn wgpuSurfacePresent(self: Surface) void;
    pub const present = wgpuSurfacePresent;

    extern fn wgpuSurfaceUnconfigure(self: Surface) void;
    pub const unconfigure = wgpuSurfaceUnconfigure;

    extern fn wgpuSurfaceSetLabel(self: Surface, label: [*:0]const u8) void;
    pub const setLabel = wgpuSurfaceSetLabel;

    extern fn wgpuSurfaceRelease(self: Surface) void;
    pub const release = wgpuSurfaceRelease;

    extern fn wgpuSurfaceReference(self: Surface) void;
    pub const reference = wgpuSurfaceReference;
};

pub const Texture = *opaque {
    extern fn wgpuTextureCreateView(self: Texture, descriptor: ?*const TextureViewDescriptor) TextureView;
    pub const createView = wgpuTextureCreateView;

    extern fn wgpuTextureSetLabel(self: Texture, label: [*:0]const u8) void;
    pub const setLabel = wgpuTextureSetLabel;

    extern fn wgpuTextureGetWidth(self: Texture) u32;
    pub const getWidth = wgpuTextureGetWidth;

    extern fn wgpuTextureGetHeight(self: Texture) u32;
    pub const getHeight = wgpuTextureGetHeight;

    extern fn wgpuTextureGetDepthOrArrayLayers(self: Texture) u32;
    pub const getDepthOrArrayLayers = wgpuTextureGetDepthOrArrayLayers;

    extern fn wgpuTextureGetMipLevelCount(self: Texture) u32;
    pub const getMipLevelCount = wgpuTextureGetMipLevelCount;

    extern fn wgpuTextureGetSampleCount(self: Texture) u32;
    pub const getSampleCount = wgpuTextureGetSampleCount;

    extern fn wgpuTextureGetDimension(self: Texture) TextureDimension;
    pub const getDimension = wgpuTextureGetDimension;

    extern fn wgpuTextureGetFormat(self: Texture) TextureFormat;
    pub const getFormat = wgpuTextureGetFormat;

    extern fn wgpuTextureGetUsage(self: Texture) TextureUsage;
    pub const getUsage = wgpuTextureGetUsage;

    extern fn wgpuTextureDestroy(self: Texture) void;
    pub const destroy = wgpuTextureDestroy;

    extern fn wgpuTextureRelease(self: Texture) void;
    pub const release = wgpuTextureRelease;

    extern fn wgpuTextureReference(self: Texture) void;
    pub const reference = wgpuTextureReference;
};

pub const TextureView = *opaque {
    extern fn wgpuTextureViewSetLabel(self: TextureView, label: [*:0]const u8) void;
    pub const setLabel = wgpuTextureViewSetLabel;

    extern fn wgpuTextureViewRelease(self: TextureView) void;
    pub const release = wgpuTextureViewRelease;

    extern fn wgpuTextureViewReference(self: TextureView) void;
    pub const reference = wgpuTextureViewReference;
};
