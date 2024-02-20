const std = @import("std");
const log = std.log.scoped(.wgpu);

pub const EnumType = u32;
pub const Flags = u32;

pub const Bool = enum(u32) {
    false = 0,
    true,
};

pub const AdapterType = enum(EnumType) {
    discrete_gpu = 0x00000000,
    integrated_gpu = 0x00000001,
    cpu = 0x00000002,
    unknown = 0x00000003,
};

pub const AddressMode = enum(EnumType) {
    repeat = 0x00000000,
    mirror_repeat = 0x00000001,
    clamp_to_edge = 0x00000002,
};

pub const BackendType = enum(EnumType) {
    undef = 0x00000000,
    null = 0x00000001,
    webgpu = 0x00000002,
    d3d11 = 0x00000003,
    d3d12 = 0x00000004,
    metal = 0x00000005,
    vulkan = 0x00000006,
    opengl = 0x00000007,
    opengles = 0x00000008,
};

pub const BlendFactor = enum(EnumType) {
    zero = 0x00000000,
    one = 0x00000001,
    src = 0x00000002,
    one_minus_src = 0x00000003,
    src_alpha = 0x00000004,
    one_minus_src_alpha = 0x00000005,
    dst = 0x00000006,
    one_minus_dst = 0x00000007,
    dst_alpha = 0x00000008,
    one_minus_dst_alpha = 0x00000009,
    src_alpha_saturated = 0x0000000a,
    constant = 0x0000000b,
    one_minus_constant = 0x0000000c,
};

pub const BlendOperation = enum(EnumType) {
    add = 0x00000000,
    subtract = 0x00000001,
    reverse_subtract = 0x00000002,
    min = 0x00000003,
    max = 0x00000004,
};

pub const BufferBindingType = enum(EnumType) {
    undef = 0x00000000,
    uniform = 0x00000001,
    storage = 0x00000002,
    read_only_storage = 0x00000003,
};

pub const BufferMapAsyncStatus = enum(EnumType) {
    success = 0x00000000,
    validation_error = 0x00000001,
    unknown = 0x00000002,
    device_lost = 0x00000003,
    destroyed_before_callback = 0x00000004,
    unmapped_before_callback = 0x00000005,
    mapping_already_pending = 0x00000006,
    offset_out_of_range = 0x00000007,
    size_out_of_range = 0x00000008,
};

pub const BufferMapState = enum(EnumType) {
    unmapped = 0x00000000,
    pending = 0x00000001,
    mapped = 0x00000002,
};

pub const CompareFunction = enum(EnumType) {
    undef = 0x00000000,
    never = 0x00000001,
    less = 0x00000002,
    less_equal = 0x00000003,
    greater = 0x00000004,
    greater_equal = 0x00000005,
    equal = 0x00000006,
    not_equal = 0x00000007,
    always = 0x00000008,
};
pub const CompilationInfoRequestStatus = enum(EnumType) {
    success = 0x00000000,
    err = 0x00000001,
    device_lost = 0x00000002,
    unknown = 0x00000003,
};

pub const CompilationMessageType = enum(EnumType) {
    err = 0x00000000,
    warning = 0x00000001,
    info = 0x00000002,
};

pub const CompositeAlphaMode = enum(EnumType) {
    auto = 0x00000000,
    opaq = 0x00000001,
    premultiplied = 0x00000002,
    unpremultiplied = 0x00000003,
    inherit = 0x00000004,
};

pub const CreatePipelineAsyncStatus = enum(EnumType) {
    success = 0x00000000,
    validation_error = 0x00000001,
    internal_error = 0x00000002,
    device_lost = 0x00000003,
    device_destroyed = 0x00000004,
    unknown = 0x00000005,
};

pub const CullMode = enum(EnumType) {
    none = 0x00000000,
    front = 0x00000001,
    back = 0x00000002,
};

pub const DeviceLostReason = enum(EnumType) {
    undef = 0x00000000,
    destroyed = 0x00000001,
};

pub const ErrorFilter = enum(EnumType) {
    validation = 0x00000000,
    out_of_memory = 0x00000001,
    internal = 0x00000002,
};

pub const ErrorType = enum(EnumType) {
    no_error = 0x00000000,
    validation = 0x00000001,
    out_of_memory = 0x00000002,
    internal = 0x00000003,
    unknown = 0x00000004,
    device_lost = 0x00000005,
};

pub const FeatureName = enum(EnumType) {
    undef = 0x00000000,
    depth_clip_control = 0x00000001,
    depth32_float_stencil8 = 0x00000002,
    time_stamp_query = 0x00000003,
    texture_compression_bc = 0x00000004,
    texture_compression_etc_2 = 0x00000005,
    texture_compression_astc = 0x00000006,
    indirect_first_instance = 0x00000007,
    shader_f16 = 0x00000008,
    rg11_b10u_float_renderable = 0x00000009,
    bgra8_unorm_storage = 0x0000000A,
    float32_filterable = 0x0000000B,

    // WGPU-Native features
    push_constants = 0x00030001,
    texture_adapter_specific_format_features = 0x00030002,
    multi_draw_indirect = 0x00030003,
    multi_draw_indirect_count = 0x00030004,
    vertex_writable_storage = 0x00030005,
    texture_binding_array = 0x00030006,
    sampled_texture_and_storage_buffer_array_non_uniform_indexing = 0x00030007,
    pipeline_statistics_query = 0x00030008,
};

pub const FilterMode = enum(EnumType) {
    nearest = 0x00000000,
    linear = 0x00000001,
};

pub const FrontFace = enum(EnumType) {
    ccw = 0x00000000,
    cw = 0x00000001,
};

pub const IndexFormat = enum(EnumType) {
    undef = 0x00000000,
    uint16 = 0x00000001,
    uint32 = 0x00000002,
};

pub const LoadOp = enum(EnumType) {
    undef = 0x00000000,
    clear = 0x00000001,
    load = 0x00000002,
};

pub const MipmapFilterMode = enum(EnumType) {
    nearest = 0x00000000,
    linear = 0x00000001,
};

pub const PowerPreference = enum(EnumType) {
    undef = 0x00000000,
    low_power = 0x00000001,
    high_performance = 0x00000002,
};

pub const PresentMode = enum(EnumType) {
    fifo = 0x00000000,
    fifo_relaxed = 0x00000001,
    immediate = 0x00000002,
    mailbox = 0x00000003,
};

pub const PrimitiveTopology = enum(EnumType) {
    point_list = 0x00000000,
    line_list = 0x00000001,
    line_strip = 0x00000002,
    triangle_list = 0x00000003,
    triangle_strip = 0x00000004,
};

pub const QueryType = enum(EnumType) {
    occlusion = 0x00000000,
    timestamp = 0x00000001,
};

pub const QueueWorkDoneStatus = enum(EnumType) {
    success = 0x00000000,
    err = 0x00000001,
    unknown = 0x00000002,
    device_lost = 0x00000003,
};

pub const RequestAdapterStatus = enum(EnumType) {
    success = 0x00000000,
    unavailable = 0x00000001,
    err = 0x00000002,
    unknown = 0x00000003,
};

pub const RequestDeviceStatus = enum(EnumType) {
    success = 0x00000000,
    err = 0x00000001,
    unknown = 0x00000002,
};

pub const SType = enum(EnumType) {
    invalid = 0x00000000,
    surface_descriptor_from_metal_layer = 0x00000001,
    surface_descriptor_from_windows_hwnd = 0x00000002,
    surface_descriptor_from_xlib_window = 0x00000003,
    surface_descriptor_from_canvas_html_selector = 0x00000004,
    shader_module_spirv_descriptor = 0x00000005,
    shader_module_wgsl_descriptor = 0x00000006,
    primitive_depth_clip_control = 0x00000007,
    surface_descriptor_from_wayland_surface = 0x00000008,
    surface_descriptor_from_android_native_window = 0x00000009,
    surface_descriptor_from_xcb_window = 0x0000000a,
    render_pass_descriptor_max_draw_count = 0x0000000f,

    // Start at 0003 since that's allocated range for wgpu-native
    device_extras = 0x00030001,
    required_limits_extras = 0x00030002,
    pipeline_layout_extras = 0x00030003,
    shader_module_glsl_descriptor = 0x00030004,
    supported_limits_extras = 0x00030005,
    instance_extras = 0x00030006,
    bind_group_entry_extras = 0x00030007,
    bind_group_layout_entry_extras = 0x00030008,
    query_set_descriptor_extras = 0x00030009,
};

pub const SamplerBindingType = enum(EnumType) {
    undef = 0x00000000,
    filtering = 0x00000001,
    non_filtering = 0x00000002,
    comparison = 0x00000003,
};

pub const StencilOperation = enum(EnumType) {
    keep = 0x00000000,
    zero = 0x00000001,
    replace = 0x00000002,
    invert = 0x00000003,
    increment_clamp = 0x00000004,
    decrement_clamp = 0x00000005,
    increment_wrap = 0x00000006,
    decrement_wrap = 0x00000007,
};

pub const StorageTextureAccess = enum(EnumType) {
    undef = 0x00000000,
    write_only = 0x00000001,
    read_only = 0x00000002,
    read_write = 0x00000003,
};

pub const StoreOp = enum(EnumType) {
    undef = 0x00000000,
    store = 0x00000001,
    discard = 0x00000002,
};

pub const SurfaceGetCurrentTextureStatus = enum(EnumType) {
    success = 0x00000000,
    timeout = 0x00000001,
    outdated = 0x00000002,
    lost = 0x00000003,
    out_of_memory = 0x00000004,
    device_lost = 0x00000005,
};

pub const TextureAspect = enum(EnumType) {
    all = 0x00000000,
    stencil_only = 0x00000001,
    depth_only = 0x00000002,
};

pub const TextureDimension = enum(EnumType) {
    dim_1d = 0x00000000,
    dim_2d = 0x00000001,
    dim_3d = 0x00000002,
};

pub const TextureFormat = enum(EnumType) {
    undef = 0x00000000,
    r8_unorm = 0x00000001,
    r8_snorm = 0x00000002,
    r8_uint = 0x00000003,
    r8_sint = 0x00000004,
    r16_uint = 0x00000005,
    r16_sint = 0x00000006,
    r16_float = 0x00000007,
    rg8_unorm = 0x00000008,
    rg8_snorm = 0x00000009,
    rg8_uint = 0x0000000A,
    rg8_sint = 0x0000000B,
    r32_float = 0x0000000C,
    r32_uint = 0x0000000D,
    r32_sint = 0x0000000E,
    rg16_uint = 0x0000000F,
    rg16_sint = 0x00000010,
    rg16_float = 0x00000011,
    rgba8_unorm = 0x00000012,
    rgba8_unorm_srgb = 0x00000013,
    rgba8_snorm = 0x00000014,
    rgba8_uint = 0x00000015,
    rgba8_sint = 0x00000016,
    bgra8_unorm = 0x00000017,
    bgra8_unorm_srgb = 0x00000018,
    rgb10_a2_uint = 0x00000019,
    rgb10_a2_unorm = 0x0000001A,
    rg11_b10_ufloat = 0x0000001B,
    rgb9_e5_ufloat = 0x0000001C,
    rg32_float = 0x0000001D,
    rg32_uint = 0x0000001E,
    rg32_sint = 0x0000001F,
    rgba16_uint = 0x00000020,
    rgba16_sint = 0x00000021,
    rgba16_float = 0x00000022,
    rgba32_float = 0x00000023,
    rgba32_uint = 0x00000024,
    rgba32_sint = 0x00000025,
    stencil8 = 0x00000026,
    depth16_unorm = 0x00000027,
    depth24_plus = 0x00000028,
    depth24_plus_stencil8 = 0x00000029,
    depth32_float = 0x0000002A,
    depth32_float_stencil8 = 0x0000002B,
    bc1_rgba_unorm = 0x0000002C,
    bc1_rgba_unorm_srgb = 0x0000002D,
    bc2_rgba_unorm = 0x0000002E,
    bc2_rgba_unorm_srgb = 0x0000002F,
    bc3_rgba_unorm = 0x00000030,
    bc3_rgba_unorm_srgb = 0x00000031,
    bc4_r_unorm = 0x00000032,
    bc4_r_snorm = 0x00000033,
    bc5_rg_unorm = 0x00000034,
    bc5_rg_snorm = 0x00000035,
    bc6_hrgb_ufloat = 0x00000036,
    bc6_hrgb_float = 0x00000037,
    bc7_rgba_unorm = 0x00000038,
    bc7_rgba_unorm_srgb = 0x00000039,
    etc2_rgb8_unorm = 0x0000003A,
    etc2_rgb8_unorm_srgb = 0x0000003B,
    etc2_rgb8_a1_unorm = 0x0000003C,
    etc2_rgb8_a1_unorm_srgb = 0x0000003D,
    etc2_rgba8_unorm = 0x0000003E,
    etc2_rgba8_unorm_srgb = 0x0000003F,
    eacr11_unorm = 0x00000040,
    eacr11_snorm = 0x00000041,
    eacrg11_unorm = 0x00000042,
    eacrg11_snorm = 0x00000043,
    astc4x4_unorm = 0x00000044,
    astc4x4_unorm_srgb = 0x00000045,
    astc5x4_unorm = 0x00000046,
    astc5x4_unorm_srgb = 0x00000047,
    astc5x5_unorm = 0x00000048,
    astc5x5_unorm_srgb = 0x00000049,
    astc6x5_unorm = 0x0000004A,
    astc6x5_unorm_srgb = 0x0000004B,
    astc6x6_unorm = 0x0000004C,
    astc6x6_unorm_srgb = 0x0000004D,
    astc8x5_unorm = 0x0000004E,
    astc8x5_unorm_srgb = 0x0000004F,
    astc8x6_unorm = 0x00000050,
    astc8x6_unorm_srgb = 0x00000051,
    astc8x8_unorm = 0x00000052,
    astc8x8_unorm_srgb = 0x00000053,
    astc10x5_unorm = 0x00000054,
    astc10x5_unorm_srgb = 0x00000055,
    astc10x6_unorm = 0x00000056,
    astc10x6_unorm_srgb = 0x00000057,
    astc10x8_unorm = 0x00000058,
    astc10x8_unorm_srgb = 0x00000059,
    astc10x10_unorm = 0x0000005A,
    astc10x10_unorm_srgb = 0x0000005B,
    astc12x10_unorm = 0x0000005C,
    astc12x10_unorm_srgb = 0x0000005D,
    astc12x12_unorm = 0x0000005E,
    astc12x12_unorm_srgb = 0x0000005F,
};

pub const TextureSampleType = enum(EnumType) {
    undef = 0x00000000,
    float = 0x00000001,
    unfilterable_float = 0x00000002,
    depth = 0x00000003,
    sint = 0x00000004,
    uint = 0x00000005,
};

pub const TextureViewDimension = enum(EnumType) {
    undef = 0x00000000,
    dim_1d = 0x00000001,
    dim_2d = 0x00000002,
    dim_2d_array = 0x00000003,
    dim_cube = 0x00000004,
    dim_cube_array = 0x00000005,
    dim_3d = 0x00000006,
};

pub const VertexFormat = enum(EnumType) {
    undef = 0x00000000,
    uint8x2 = 0x00000001,
    uint8x4 = 0x00000002,
    sint8x2 = 0x00000003,
    sint8x4 = 0x00000004,
    unorm8x2 = 0x00000005,
    unorm8x4 = 0x00000006,
    snorm8x2 = 0x00000007,
    snorm8x4 = 0x00000008,
    uint16x2 = 0x00000009,
    uint16x4 = 0x0000000a,
    sint16x2 = 0x0000000b,
    sint16x4 = 0x0000000c,
    unorm16x2 = 0x0000000d,
    unorm16x4 = 0x0000000e,
    snorm16x2 = 0x0000000f,
    snorm16x4 = 0x00000010,
    float16x2 = 0x00000011,
    float16x4 = 0x00000012,
    float32 = 0x00000013,
    float32x2 = 0x00000014,
    float32x3 = 0x00000015,
    float32x4 = 0x00000016,
    uint32 = 0x00000017,
    uint32x2 = 0x00000018,
    uint32x3 = 0x00000019,
    uint32x4 = 0x0000001a,
    sint32 = 0x0000001b,
    sint32x2 = 0x0000001c,
    sint32x3 = 0x0000001d,
    sint32x4 = 0x0000001e,
};

pub const VertexStepMode = enum(EnumType) {
    vertex = 0x00000000,
    instance = 0x00000001,
    vertex_buffer_not_used = 0x00000002,
};

pub const BufferUsageFlags = packed struct(Flags) {
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

pub const ColorWriteMaskFlags = packed struct(Flags) {
    red: bool = false,
    green: bool = false,
    blue: bool = false,
    alpha: bool = false,

    _padding: u28 = 0,

    pub const all = ColorWriteMaskFlags{
        .red = true,
        .green = true,
        .blue = true,
        .alpha = true,
    };
};

pub const MapModeFlags = packed struct(Flags) {
    read: bool = false,
    write: bool = false,

    _padding: u30 = 0,
};

pub const ShaderStageFlags = packed struct(Flags) {
    vertex: bool = false,
    fragment: bool = false,
    compute: bool = false,

    _padding: u29 = 0,
};

pub const TextureUsageFlags = packed struct(Flags) {
    copy_src: bool = false,
    copy_dst: bool = false,
    texture_binding: bool = false,
    storage_binding: bool = false,
    render_attachment: bool = false,

    _padding: u27 = 0,
};

pub const ChainedStruct = extern struct {
    next: ?*const ChainedStruct = null,
    s_type: SType,
};

pub const ChainedStructOut = extern struct {
    next: ?*ChainedStructOut = null,
    s_type: SType,
};

pub const AdapterProperties = extern struct {
    next_in_chain: ?*ChainedStructOut = null,
    vendor_id: u32,
    vendor_name: [*:0]const u8,
    architecture: [*:0]const u8,
    device_id: u32,
    name: [*:0]const u8,
    driver_description: [*:0]const u8,
    adapter_type: AdapterType,
    backend_type: BackendType,
};

pub const BindGroupEntry = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    binding: u32,
    buffer: ?*Buffer = null,
    offset: u64 = 0,
    size: u64 = 0,
    sampler: ?*Sampler = null,
    texture_view: ?*TextureView = null,
};

pub const BlendComponent = extern struct {
    operation: BlendOperation,
    src_factor: BlendFactor,
    dst_factor: BlendFactor,
};

pub const BufferBindingLayout = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    binding_type: BufferBindingType = .undef,
    has_dynamic_offset: Bool = .false,
    min_binding_size: u64 = 0,
};

pub const BufferDescriptor = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    label: ?[*:0]const u8 = null,
    usage: BufferUsageFlags,
    size: u64,
    mapped_at_creation: Bool = .false,
};

pub const Color = extern struct {
    r: f64,
    g: f64,
    b: f64,
    a: f64,
};

pub const CommandBufferDescriptor = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    label: ?[*:0]const u8 = null,
};

pub const CommandEncoderDescriptor = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    label: ?[*:0]const u8 = null,
};

pub const CompilationMessage = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    message: ?[*:0]const u8 = null,
    message_type: CompilationMessageType,
    line_num: u64,
    line_pos: u64,
    offset: u64,
    length: u64,
    utf16_line_pos: u64,
    utf16_offset: u64,
    utf16_length: u64,
};

pub const ComputePassTimestampWrites = extern struct {
    query_set: *QuerySet,
    beginning_of_pass_write_index: u32,
    end_of_pass_write_index: u32,
};

pub const ConstantEntry = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    key: [*:0]const u8,
    value: f64,
};

pub const Extent3D = extern struct {
    width: u32,
    height: u32,
    depth_or_array_layers: u32 = 1,
};

pub const InstanceDescriptor = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
};

pub const Limits = extern struct {
    max_texture_dimension_1d: u32,
    max_texture_dimension_2d: u32,
    max_texture_dimension_3d: u32,
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

pub const MultisampleState = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    count: u32 = 1,
    mask: u32 = 0xffffffff,
    alpha_to_coverage_enabled: Bool = .false,
};

pub const Origin3D = extern struct {
    x: u32 = 0,
    y: u32 = 0,
    z: u32 = 0,
};

pub const PipelineLayoutDescriptor = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    label: ?[*:0]const u8 = null,
    bind_group_layout_count: usize,
    bind_group_layouts: ?[*]const *BindGroupLayout,
};

// Can be chained in PrimitiveState
pub const PrimitiveDepthClipControl = extern struct {
    chain: ChainedStruct = .{ .s_type = .primitive_depth_clip_control },
    unclipped_depth: Bool,
};

pub const PrimitiveState = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    topology: PrimitiveTopology = .triangle_list,
    strip_index_format: IndexFormat = .undef,
    front_face: FrontFace = .ccw,
    cull_mode: CullMode = .none,
};

pub const QuerySetDescriptor = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    label: ?[*:0]const u8 = null,
    query_type: QueryType,
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
    color_formats_count: usize,
    color_formats: ?[*]const TextureFormat,
    depth_stencil_format: TextureFormat,
    sample_count: u32,
    depth_read_only: Bool,
    stencil_read_only: Bool,
};

pub const RenderPassDepthStencilAttachment = extern struct {
    view: *TextureView,
    depth_load_op: LoadOp,
    depth_store_op: StoreOp,
    depth_clear_value: f32,
    depth_read_only: Bool = .false,
    stencil_load_op: LoadOp = .undef,
    stencil_store_op: StoreOp = .undef,
    stencil_clear_value: u32 = 0,
    stencil_read_only: Bool = .false,
};

// can be chained in RenderPassDescriptor
pub const RenderPassDescriptorMaxDrawCount = extern struct {
    chain: ChainedStruct = .{ .s_type = .render_pass_descriptor_max_draw_count },
    max_draw_count: u64,
};

pub const RenderPassTimestampWrites = extern struct {
    query_set: *QuerySet,
    beginning_of_pass_write_index: u32,
    end_of_pass_write_index: u32,
};

pub const RequestAdapterOptions = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    compatible_surface: ?*Surface = null,
    power_preference: PowerPreference,
    backend_type: BackendType = .undef,
    force_fallback_adapter: Bool = .false,
};

pub const SamplerBindingLayout = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    binding_type: SamplerBindingType = .undef,
};

pub const SamplerDescriptor = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    label: ?[*:0]const u8 = null,
    address_mode_u: AddressMode = .clamp_to_edge,
    address_mode_v: AddressMode = .clamp_to_edge,
    address_mode_w: AddressMode = .clamp_to_edge,
    mag_filter: FilterMode = .nearest,
    min_filter: FilterMode = .nearest,
    mipmap_filter: MipmapFilterMode = .nearest,
    lod_min_clamp: f32 = 0,
    lod_max_clamp: f32 = 0,
    compare: CompareFunction = .undef,
    max_anisotropy: u16 = 1,
};

pub const ShaderModuleCompilationHint = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    entry_point: [*:0]const u8,
    layout: *PipelineLayout,
};

// can be chained in ShaderModuleDescriptor
pub const ShaderModuleSPIRVDescriptor = extern struct {
    chain: ChainedStruct = .{ .s_type = .shader_module_spirv_descriptor },
    code_size: u32,
    code: [*]const u32,
};

// can be chained in ShaderModuleDescriptor
pub const ShaderModuleWGSLDescriptor = extern struct {
    chain: ChainedStruct = .{ .s_type = .shader_module_wgsl_descriptor },
    code: [*:0]const u8,
};

pub const StencilFaceState = extern struct {
    compare: CompareFunction = .always,
    fail_op: StencilOperation = .keep,
    depth_fail_op: StencilOperation = .keep,
    pass_op: StencilOperation = .keep,
};

pub const StorageTextureBindingLayout = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    access: StorageTextureAccess = .undef,
    format: TextureFormat = .undef,
    view_dimension: TextureViewDimension = .undef,
};

pub const SurfaceCapabilities = extern struct {
    next_in_chain: ?*ChainedStructOut,
    format_count: usize,
    formats: [*]TextureFormat,
    present_mode_count: usize,
    present_modes: [*]PresentMode,
    alpha_mode_count: usize,
    alpha_modes: [*]CompositeAlphaMode,

    pub fn freeMembers(self: SurfaceCapabilities) void {
        wgpuSurfaceCapabilitiesFreeMembers(self);
    }
    extern fn wgpuSurfaceCapabilitiesFreeMembers(capabilities: SurfaceCapabilities) void;
};

pub const SurfaceConfiguration = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    device: *Device,
    format: TextureFormat,
    usage: TextureUsageFlags,
    view_format_count: usize = 0,
    view_formats: ?[*]const TextureFormat = null,
    alpha_mode: CompositeAlphaMode,
    width: u32,
    height: u32,
    present_mode: PresentMode,
};

pub const SurfaceDescriptor = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    label: ?[*:0]const u8 = null,
};

// can be chained in SurfaceDescriptor
pub const SurfaceDescriptorFromAndroidNativeWindow = extern struct {
    chain: ChainedStruct = .{ .s_type = .surface_descriptor_from_android_native_window },
    window: *anyopaque,
};

// can be chained in SurfaceDescriptor
pub const SurfaceDescriptorFromCanvasHTMLSelector = extern struct {
    chain: ChainedStruct = .{ .s_type = .surface_descriptor_from_canvas_html_selector },
    selector: [*:0]const u8,
};

// can be chained in SurfaceDescriptor
pub const SurfaceDescriptorFromMetalLayer = extern struct {
    chain: ChainedStruct = .{ .s_type = .surface_descriptor_from_metal_layer },
    layer: *anyopaque,
};

// can be chained in SurfaceDescriptor
pub const SurfaceDescriptorFromWaylandSurface = extern struct {
    chain: ChainedStruct = .{ .s_type = .surface_descriptor_from_wayland_surface },
    display: *anyopaque,
    surface: *anyopaque,
};

// can be chained in SurfaceDescriptor
pub const SurfaceDescriptorFromWindowsHWND = extern struct {
    chain: ChainedStruct = .{ .s_type = .surface_descriptor_from_windows_hwnd },
    h_instance: *anyopaque,
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

pub const SurfaceTexture = extern struct {
    texture: ?*Texture,
    suboptimal: Bool,
    status: SurfaceGetCurrentTextureStatus,
};

pub const TextureBindingLayout = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    sample_type: TextureSampleType = .undef,
    view_dimension: TextureViewDimension = .undef,
    multisampled: Bool = .false,
};

pub const TextureDataLayout = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    offset: u64,
    bytes_per_row: u32,
    rows_per_image: u32,
};

pub const TextureViewDescriptor = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    label: ?[*:0]const u8 = null,
    format: TextureFormat = .undef,
    dimension: TextureViewDimension = .undef,
    base_mip_level: u32 = 0,
    mip_level_count: u32 = 1,
    base_array_layer: u32 = 0,
    array_layer_count: u32 = 1,
    aspect: TextureAspect = .all,
};

pub const VertexAttribute = extern struct {
    format: VertexFormat,
    offset: u64,
    shader_location: u32,
};

pub const BindGroupDescriptor = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    label: ?[*:0]const u8 = null,
    layout: *BindGroupLayout,
    entry_count: usize,
    entries: ?[*]const BindGroupEntry,
};

pub const BindGroupLayoutEntry = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    binding: u32,
    visibility: ShaderStageFlags,
    buffer: BufferBindingLayout = .{},
    sampler: SamplerBindingLayout = .{},
    texture: TextureBindingLayout = .{},
    storage_texture: StorageTextureBindingLayout = .{},
};

pub const BlendState = extern struct {
    color: BlendComponent,
    alpha: BlendComponent,
};

pub const CompilationInfo = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    message_count: usize,
    messages: ?[*]const CompilationMessage,
};

pub const ComputePassDescriptor = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    label: ?[*:0]const u8 = null,
    timestamp_writes: ?*const ComputePassTimestampWrites,
};

pub const DepthStencilState = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    format: TextureFormat,
    depth_write_enabled: Bool = .false,
    depth_compare: CompareFunction,
    stencil_front: StencilFaceState = .{},
    stencil_back: StencilFaceState = .{},
    stencil_read_mask: u32 = 0,
    stencil_write_mask: u32 = 0,
    depth_bias: i32 = 0,
    depth_bias_slope_scale: f32 = 0,
    depth_bias_clamp: f32 = 0,
};

pub const ImageCopyBuffer = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    layout: TextureDataLayout,
    buffer: *Buffer,
};

pub const ImageCopyTexture = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    texture: *Texture,
    mip_level: u32,
    origin: Origin3D,
    aspect: TextureAspect = .all,
};

pub const ProgrammableStageDescriptor = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    module: *ShaderModule,
    entry_point: [*:0]const u8,
    constant_count: usize = 0,
    constants: ?[*]const ConstantEntry = null,
};

pub const RenderPassColorAttachment = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    view: ?*TextureView,
    resolve_target: ?*TextureView = null,
    load_op: LoadOp,
    store_op: StoreOp,
    clear_value: Color = .{ .r = 0, .g = 0, .b = 0, .a = 1 },
};

pub const RequiredLimits = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    limits: Limits,
};

pub const ShaderModuleDescriptor = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    label: ?[*:0]const u8 = null,
    hint_count: usize = 0,
    hints: ?[*]const ShaderModuleCompilationHint = null,
};

pub const SupportedLimits = extern struct {
    next_in_chain: ?*ChainedStructOut = null,
    limits: Limits,
};

pub const TextureDescriptor = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    label: ?[*:0]const u8 = null,
    usage: TextureUsageFlags,
    dimension: TextureDimension = .dim_2d,
    size: Extent3D,
    format: TextureFormat,
    mip_level_count: u32 = 1,
    sample_count: u32 = 1,
    view_format_count: usize = 0,
    view_formats: ?[*]const TextureFormat = null,
};

pub const VertexBufferLayout = extern struct {
    array_stride: u64,
    step_mode: VertexStepMode,
    attribute_count: usize,
    attributes: ?[*]const VertexAttribute,
};

pub const BindGroupLayoutDescriptor = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    label: ?[*:0]const u8 = null,
    entry_count: usize,
    entries: ?[*]const BindGroupLayoutEntry,
};

pub const ColorTargetState = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    format: TextureFormat,
    blend: ?*const BlendState = null,
    write_mask: ColorWriteMaskFlags = ColorWriteMaskFlags.all,
};

pub const ComputePipelineDescriptor = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    label: ?[*:0]const u8 = null,
    layout: ?*PipelineLayout,
    compute: ProgrammableStageDescriptor,
};

pub const DeviceDescriptor = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    label: ?[*:0]const u8 = null,
    required_features_count: usize = 0,
    required_features: ?[*]const FeatureName = null,
    required_limits: ?*const RequiredLimits = null,
    default_queue: QueueDescriptor = .{},
    device_lost_callback: ?DeviceLostCallback = null,
    device_lost_user_data: ?*anyopaque = null,
};

pub const RenderPassDescriptor = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    label: ?[*:0]const u8 = null,
    color_attachment_count: usize,
    color_attachments: ?[*]const RenderPassColorAttachment,
    depth_stencil_attachment: ?*const RenderPassDepthStencilAttachment = null,
    occlusion_query_set: ?*QuerySet = null,
    timestamp_writes: ?*const RenderPassTimestampWrites = null,
};

pub const VertexState = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    module: *ShaderModule,
    entry_point: [*:0]const u8,
    constant_count: usize = 0,
    constants: ?[*]const ConstantEntry = null,
    buffer_count: usize,
    buffers: ?[*]const VertexBufferLayout,
};

pub const FragmentState = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    module: *ShaderModule,
    entry_point: [*:0]const u8,
    constant_count: usize = 0,
    constants: ?[*]const ConstantEntry = null,
    target_count: usize,
    targets: ?[*]const ColorTargetState,
};

pub const RenderPipelineDescriptor = extern struct {
    next_in_chain: ?*const ChainedStruct = null,
    label: ?[*:0]const u8 = null,
    layout: ?*PipelineLayout = null,
    vertex: VertexState,
    primitive: PrimitiveState = .{},
    depth_stencil: ?*const DepthStencilState = null,
    multisample: MultisampleState = .{},
    fragment: ?*const FragmentState = null,
};

pub const BufferMapCallback = *const fn (
    status: BufferMapAsyncStatus,
    userdata: ?*anyopaque,
) void;

pub const CompilationInfoCallback = *const fn (
    status: CompilationInfoRequestStatus,
    compilation_info: *const CompilationInfo,
    userdata: ?*anyopaque,
) void;

pub const CreateComputePipelineAsyncCallback = *const fn (
    status: CreatePipelineAsyncStatus,
    pipeline: ?*ComputePipeline,
    message: ?[*:0]const u8,
    userdata: ?*anyopaque,
) void;

pub const CreateRenderPipelineAsyncCallback = *const fn (
    status: CreatePipelineAsyncStatus,
    pipeline: ?*RenderPipeline,
    message: ?[*:0]const u8,
    userdata: ?*anyopaque,
) callconv(.C) void;

pub const DeviceLostCallback = *const fn (
    reason: DeviceLostReason,
    message: ?[*:0]const u8,
    userdata: ?*anyopaque,
) callconv(.C) void;

pub const ErrorCallback = *const fn (
    type: ErrorType,
    message: ?[*:0]const u8,
    userdata: ?*anyopaque,
) callconv(.C) void;

pub const Proc = *const fn () void;

pub const QueueWorkDoneCallback = *const fn (
    status: QueueWorkDoneStatus,
    userdata: ?*anyopaque,
) callconv(.C) void;

pub const RequestAdapterCallback = *const fn (
    status: RequestAdapterStatus,
    adapter: *Adapter,
    message: ?[*:0]const u8,
    userdata: ?*anyopaque,
) callconv(.C) void;

pub const RequestDeviceCallback = *const fn (
    status: RequestDeviceStatus,
    device: *Device,
    message: ?[*:0]const u8,
    userdata: ?*anyopaque,
) callconv(.C) void;

pub const Adapter = opaque {
    const RequestDeviceData = struct {
        device: *Device = undefined,
        status: RequestDeviceStatus = .unknown,
        message: ?[*:0]const u8 = null,
    };

    fn handleRequestDevice(
        status: RequestDeviceStatus,
        device: *Device,
        message: ?[*:0]const u8,
        userdata: ?*anyopaque,
    ) callconv(.C) void {
        const data: *RequestDeviceData = @ptrCast(@alignCast(userdata.?));
        data.* = .{
            .device = device,
            .status = status,
            .message = message,
        };
    }

    pub fn requestDevice(
        self: *Adapter,
        descriptor: DeviceDescriptor,
    ) !*Device {
        var data = RequestDeviceData{};
        wgpuAdapterRequestDevice(
            self,
            &descriptor,
            handleRequestDevice,
            @ptrCast(&data),
        );

        if (data.status == .success) {
            return data.device;
        } else {
            log.err(
                "Device request failed. status: {s} message: {s}",
                .{ @tagName(data.status), data.message.? },
            );
            return error.WGPUDeviceRequestFailed;
        }
    }

    pub fn release(self: *Adapter) void {
        wgpuAdapterRelease(self);
    }

    extern fn wgpuAdapterEnumerateFeatures(adapter: *Adapter, features: ?[*]FeatureName) usize;
    extern fn wgpuAdapterGetLimits(adapter: *Adapter, limits: *SupportedLimits) Bool;
    extern fn wgpuAdapterGetProperties(adapter: *Adapter, properties: *AdapterProperties) void;
    extern fn wgpuAdapterHasFeature(adapter: *Adapter, feature: FeatureName) Bool;
    extern fn wgpuAdapterRequestDevice(adapter: *Adapter, descriptor: *const DeviceDescriptor, callback: RequestDeviceCallback, userdata: ?*anyopaque) void;
    extern fn wgpuAdapterReference(adapter: *Adapter) void;
    extern fn wgpuAdapterRelease(adapter: *Adapter) void;
};

pub const BindGroup = opaque {
    pub fn release(self: *BindGroup) void {
        wgpuBindGroupRelease(self);
    }

    extern fn wgpuBindGroupSetLabel(bind_group: *BindGroup, label: [*:0]const u8) void;
    extern fn wgpuBindGroupReference(bind_group: *BindGroup) void;
    extern fn wgpuBindGroupRelease(bind_group: *BindGroup) void;
};

pub const BindGroupLayout = opaque {
    pub fn release(self: *BindGroupLayout) void {
        wgpuBindGroupLayoutRelease(self);
    }

    extern fn wgpuBindGroupLayoutSetLabel(bind_group_layout: *BindGroupLayout, label: [*:0]const u8) void;
    extern fn wgpuBindGroupLayoutReference(bind_group_layout: *BindGroupLayout) void;
    extern fn wgpuBindGroupLayoutRelease(bind_group_layout: *BindGroupLayout) void;
};

pub const Buffer = opaque {
    pub fn mapAsync(self: *Buffer, mode: MapModeFlags, offset: usize, size: usize, callback: BufferMapCallback, userdata: ?*anyopaque) void {
        wgpuBufferMapAsync(self, mode, offset, size, callback, userdata);
    }

    pub fn unmap(self: *Buffer) void {
        wgpuBufferUnmap(self);
    }

    pub fn getConstMappedRange(self: *Buffer, offset: usize, size: usize) ?*const anyopaque {
        return wgpuBufferGetConstMappedRange(self, offset, size);
    }

    pub fn getMappedRange(self: *Buffer, offset: usize, size: usize) ?*anyopaque {
        return wgpuBufferGetMappedRange(self, offset, size);
    }

    pub fn getMapState(self: *Buffer) BufferMapState {
        return wgpuBufferGetMapState(self);
    }

    pub fn getSize(self: *Buffer) u64 {
        return wgpuBufferGetSize(self);
    }

    pub fn release(self: *Buffer) void {
        wgpuBufferRelease(self);
    }

    extern fn wgpuBufferMapAsync(buffer: *Buffer, mode: MapModeFlags, offset: usize, size: usize, callback: BufferMapCallback, userdata: ?*anyopaque) void;
    extern fn wgpuBufferUnmap(buffer: *Buffer) void;
    extern fn wgpuBufferGetConstMappedRange(buffer: *Buffer, offset: usize, size: usize) ?*const anyopaque;
    extern fn wgpuBufferGetMappedRange(buffer: *Buffer, offset: usize, size: usize) ?*anyopaque;
    extern fn wgpuBufferGetMapState(buffer: *Buffer) BufferMapState;
    extern fn wgpuBufferDestroy(buffer: *Buffer) void;
    extern fn wgpuBufferGetSize(buffer: *Buffer) u64;
    extern fn wgpuBufferGetUsage(buffer: *Buffer) BufferUsageFlags;
    extern fn wgpuBufferSetLabel(buffer: *Buffer, label: [*:0]const u8) void;
    extern fn wgpuBufferReference(buffer: *Buffer) void;
    extern fn wgpuBufferRelease(buffer: *Buffer) void;
};

pub const CommandBuffer = opaque {
    pub fn release(self: *CommandBuffer) void {
        wgpuCommandBufferRelease(self);
    }

    extern fn wgpuCommandBufferSetLabel(command_buffer: *CommandBuffer, label: [*:0]const u8) void;
    extern fn wgpuCommandBufferReference(command_buffer: *CommandBuffer) void;
    extern fn wgpuCommandBufferRelease(command_buffer: *CommandBuffer) void;
};

pub const CommandEncoder = opaque {
    pub fn beginComputePass(self: *CommandEncoder, descriptor: ComputePassDescriptor) *ComputePassEncoder {
        return wgpuCommandEncoderBeginComputePass(self, &descriptor);
    }

    pub fn beginRenderPass(self: *CommandEncoder, descriptor: RenderPassDescriptor) *RenderPassEncoder {
        return wgpuCommandEncoderBeginRenderPass(self, &descriptor);
    }

    pub fn clearBuffer(self: *CommandEncoder, buffer: *Buffer, offset: u64, size: u64) void {
        wgpuCommandEncoderClearBuffer(self, buffer, offset, size);
    }

    pub fn copyBufferToBuffer(self: *CommandEncoder, source: *Buffer, source_offset: u64, destination: *Buffer, destination_offset: u64, size: u64) void {
        wgpuCommandEncoderCopyBufferToBuffer(self, source, source_offset, destination, destination_offset, size);
    }

    pub fn copyBufferToTexture(self: *CommandEncoder, source: ImageCopyBuffer, destination: ImageCopyTexture, copy_size: Extent3D) void {
        wgpuCommandEncoderCopyBufferToTexture(self, &source, &destination, &copy_size);
    }

    pub fn copyTextureToBuffer(self: *CommandEncoder, source: ImageCopyTexture, destination: ImageCopyBuffer, copy_size: Extent3D) void {
        wgpuCommandEncoderCopyTextureToBuffer(self, &source, &destination, &copy_size);
    }

    pub fn copyTextureToTexture(self: *CommandEncoder, source: ImageCopyTexture, destination: ImageCopyTexture, copy_size: Extent3D) void {
        wgpuCommandEncoderCopyTextureToTexture(self, &source, &destination, &copy_size);
    }

    pub fn resolveQuerySet(self: *CommandEncoder, query_set: *QuerySet, first_query: u32, query_count: u32, destination: *Buffer, destination_offset: u64) void {
        wgpuCommandEncoderResolveQuerySet(self, query_set, first_query, query_count, destination, destination_offset);
    }

    pub fn writeTimestamp(self: *CommandEncoder, query_set: *QuerySet, query_index: u32) void {
        wgpuCommandEncoderWriteTimestamp(self, query_set, query_index);
    }

    pub fn finish(self: *CommandEncoder, descriptor: CommandBufferDescriptor) *CommandBuffer {
        return wgpuCommandEncoderFinish(self, &descriptor);
    }

    pub fn release(self: *CommandEncoder) void {
        wgpuCommandEncoderRelease(self);
    }

    extern fn wgpuCommandEncoderBeginComputePass(command_encoder: *CommandEncoder, descriptor: *const ComputePassDescriptor) *ComputePassEncoder;
    extern fn wgpuCommandEncoderBeginRenderPass(command_encoder: *CommandEncoder, descriptor: *const RenderPassDescriptor) *RenderPassEncoder;
    extern fn wgpuCommandEncoderClearBuffer(command_encoder: *CommandEncoder, buffer: *Buffer, offset: u64, size: u64) void;
    extern fn wgpuCommandEncoderCopyBufferToBuffer(command_encoder: *CommandEncoder, source: *Buffer, source_offset: u64, destination: *Buffer, destination_offset: u64, size: u64) void;
    extern fn wgpuCommandEncoderCopyBufferToTexture(command_encoder: *CommandEncoder, source: *const ImageCopyBuffer, destination: *const ImageCopyTexture, copy_size: *const Extent3D) void;
    extern fn wgpuCommandEncoderCopyTextureToBuffer(command_encoder: *CommandEncoder, source: *const ImageCopyTexture, destination: *const ImageCopyBuffer, copy_size: *const Extent3D) void;
    extern fn wgpuCommandEncoderCopyTextureToTexture(command_encoder: *CommandEncoder, source: *const ImageCopyTexture, destination: *const ImageCopyTexture, copy_size: *const Extent3D) void;
    extern fn wgpuCommandEncoderResolveQuerySet(command_encoder: *CommandEncoder, query_set: *QuerySet, first_query: u32, query_count: u32, destination: *Buffer, destination_offset: u64) void;
    extern fn wgpuCommandEncoderWriteTimestamp(command_encoder: *CommandEncoder, query_set: *QuerySet, query_index: u32) void;
    extern fn wgpuCommandEncoderFinish(command_encoder: *CommandEncoder, descriptor: *const CommandBufferDescriptor) *CommandBuffer;

    extern fn wgpuCommandEncoderInsertDebugMarker(command_encoder: *CommandEncoder, marker_label: [*:0]const u8) void;
    extern fn wgpuCommandEncoderPopDebugGroup(command_encoder: *CommandEncoder) void;
    extern fn wgpuCommandEncoderPushDebugGroup(command_encoder: *CommandEncoder, group_label: [*:0]const u8) void;
    extern fn wgpuCommandEncoderSetLabel(command_encoder: *CommandEncoder, label: [*:0]const u8) void;
    extern fn wgpuCommandEncoderReference(command_encoder: *CommandEncoder) void;
    extern fn wgpuCommandEncoderRelease(command_encoder: *CommandEncoder) void;
};

pub const ComputePassEncoder = opaque {
    pub fn dispatchWorkgroups(self: *ComputePassEncoder, workgroup_count_x: u32, workgroup_count_y: u32, workgroup_count_z: u32) void {
        wgpuComputePassEncoderDispatchWorkgroups(self, workgroup_count_x, workgroup_count_y, workgroup_count_z);
    }

    pub fn dispatchWorkgroupsIndirect(self: *ComputePassEncoder, indirect_buffer: *Buffer, indirect_offset: u64) void {
        wgpuComputePassEncoderDispatchWorkgroupsIndirect(self, indirect_buffer, indirect_offset);
    }

    pub fn setBindGroup(self: *ComputePassEncoder, group_index: u32, group: *BindGroup, dynamic_offsets: []const u32) void {
        wgpuComputePassEncoderSetBindGroup(self, group_index, group, dynamic_offsets.len, dynamic_offsets.ptr);
    }
    pub fn setPipeline(self: *ComputePassEncoder, pipeline: *ComputePipeline) void {
        wgpuComputePassEncoderSetPipeline(self, pipeline);
    }

    pub fn encoderEnd(self: *ComputePassEncoder) void {
        wgpuComputePassEncoderEnd(self);
    }

    pub fn release(self: *ComputePassEncoder) void {
        wgpuComputePassEncoderRelease(self);
    }

    extern fn wgpuComputePassEncoderDispatchWorkgroups(compute_pass_encoder: *ComputePassEncoder, workgroup_count_x: u32, workgroup_count_y: u32, workgroup_count_z: u32) void;
    extern fn wgpuComputePassEncoderDispatchWorkgroupsIndirect(compute_pass_encoder: *ComputePassEncoder, indirect_buffer: *Buffer, indirect_offset: u64) void;
    extern fn wgpuComputePassEncoderSetBindGroup(compute_pass_encoder: *ComputePassEncoder, group_index: u32, group: *BindGroup, dynamic_offset_count: usize, dynamic_offsets: [*]const u32) void;
    extern fn wgpuComputePassEncoderSetPipeline(compute_pass_encoder: *ComputePassEncoder, pipeline: *ComputePipeline) void;
    extern fn wgpuComputePassEncoderEnd(compute_pass_encoder: *ComputePassEncoder) void;

    extern fn wgpuComputePassEncoderInsertDebugMarker(compute_pass_encoder: *ComputePassEncoder, marker_label: [*:0]const u8) void;
    extern fn wgpuComputePassEncoderPopDebugGroup(compute_pass_encoder: *ComputePassEncoder) void;
    extern fn wgpuComputePassEncoderPushDebugGroup(compute_pass_encoder: *ComputePassEncoder, group_label: [*:0]const u8) void;
    extern fn wgpuComputePassEncoderSetLabel(compute_pass_encoder: *ComputePassEncoder, label: [*:0]const u8) void;
    extern fn wgpuComputePassEncoderReference(compute_pass_encoder: *ComputePassEncoder) void;
    extern fn wgpuComputePassEncoderRelease(compute_pass_encoder: *ComputePassEncoder) void;
};

pub const ComputePipeline = opaque {
    pub fn getBindGroupLayout(self: *ComputePipeline, group_index: u32) *BindGroupLayout {
        return wgpuComputePipelineGetBindGroupLayout(self, group_index);
    }

    pub fn release(self: *ComputePipeline) void {
        wgpuComputePipelineRelease(self);
    }

    extern fn wgpuComputePipelineGetBindGroupLayout(compute_pipeline: *ComputePipeline, group_index: u32) *BindGroupLayout;
    extern fn wgpuComputePipelineSetLabel(compute_pipeline: *ComputePipeline, label: [*:0]const u8) void;
    extern fn wgpuComputePipelineReference(compute_pipeline: *ComputePipeline) void;
    extern fn wgpuComputePipelineRelease(compute_pipeline: *ComputePipeline) void;
};

pub const Device = opaque {
    pub fn createBindGroup(self: *Device, descriptor: BindGroupDescriptor) *BindGroup {
        return wgpuDeviceCreateBindGroup(self, &descriptor);
    }

    pub fn createBindGroupLayout(self: *Device, descriptor: BindGroupLayoutDescriptor) *BindGroupLayout {
        return wgpuDeviceCreateBindGroupLayout(self, &descriptor);
    }

    pub fn createBuffer(self: *Device, descriptor: BufferDescriptor) *Buffer {
        return wgpuDeviceCreateBuffer(self, &descriptor);
    }

    pub fn createCommandEncoder(self: *Device, descriptor: CommandEncoderDescriptor) *CommandEncoder {
        return wgpuDeviceCreateCommandEncoder(self, &descriptor);
    }

    pub fn createComputePipeline(self: *Device, descriptor: ComputePipelineDescriptor) *ComputePipeline {
        return wgpuDeviceCreateComputePipeline(self, &descriptor);
    }

    pub fn createPipelineLayout(self: *Device, descriptor: PipelineLayoutDescriptor) *PipelineLayout {
        return wgpuDeviceCreatePipelineLayout(self, &descriptor);
    }

    pub fn createQuerySet(self: *Device, descriptor: QuerySetDescriptor) *QuerySet {
        return wgpuDeviceCreateQuerySet(self, &descriptor);
    }

    pub fn createRenderBundleEncoder(self: *Device, descriptor: RenderBundleEncoderDescriptor) *RenderBundleEncoder {
        return wgpuDeviceCreateRenderBundleEncoder(self, &descriptor);
    }

    pub fn createRenderPipeline(self: *Device, descriptor: RenderPipelineDescriptor) *RenderPipeline {
        return wgpuDeviceCreateRenderPipeline(self, &descriptor);
    }

    pub fn createSampler(self: *Device, descriptor: SamplerDescriptor) *Sampler {
        return wgpuDeviceCreateSampler(self, &descriptor);
    }

    pub fn createShaderModule(self: *Device, descriptor: ShaderModuleDescriptor) *ShaderModule {
        return wgpuDeviceCreateShaderModule(self, &descriptor);
    }

    pub fn createTexture(self: *Device, descriptor: TextureDescriptor) *Texture {
        return wgpuDeviceCreateTexture(self, &descriptor);
    }

    pub fn getQueue(self: *Device) *Queue {
        return wgpuDeviceGetQueue(self);
    }

    pub fn getFeatures(self: *Device, allocator: std.mem.Allocator) ![]FeatureName {
        const size = wgpuDeviceEnumerateFeatures(self, null);
        const features = try allocator.alloc(FeatureName, size);
        _ = wgpuDeviceEnumerateFeatures(self, features.ptr);
        return features;
    }

    pub fn getLimits(self: *Device, limits: *SupportedLimits) bool {
        return switch (wgpuDeviceGetLimits(self, limits)) {
            .true => true,
            .false => false,
        };
    }

    pub fn hasFeature(self: *Device, feature: FeatureName) bool {
        return switch (wgpuDeviceHasFeature(self, feature)) {
            .true => true,
            .false => false,
        };
    }

    pub fn pushErrorScope(self: *Device, filter: ErrorFilter) void {
        wgpuDevicePushErrorScope(self, filter);
    }

    pub fn popErrorScope(self: *Device, callback: ErrorCallback, userdata: ?*anyopaque) void {
        wgpuDevicePopErrorScope(self, callback, userdata);
    }

    pub fn setUncapturedErrorCallback(self: *Device, callback: ErrorCallback, userdata: ?*anyopaque) void {
        wgpuDeviceSetUncapturedErrorCallback(self, callback, userdata);
    }

    pub fn release(self: *Device) void {
        wgpuDeviceRelease(self);
    }

    //WGPU-Native stuff
    pub fn poll(self: *Device, wait: bool, wrapped_submission_index: WrappedSubmissionIndex) bool {
        const wait_bool = if (wait) Bool.true else Bool.false;
        switch (wgpuDevicePoll(self, wait_bool, &wrapped_submission_index)) {
            .true => return true,
            .false => return false,
        }
    }

    extern fn wgpuDeviceCreateBindGroup(device: *Device, descriptor: *const BindGroupDescriptor) *BindGroup;
    extern fn wgpuDeviceCreateBindGroupLayout(device: *Device, descriptor: *const BindGroupLayoutDescriptor) *BindGroupLayout;
    extern fn wgpuDeviceCreateBuffer(device: *Device, descriptor: *const BufferDescriptor) *Buffer;
    extern fn wgpuDeviceCreateCommandEncoder(device: *Device, descriptor: *const CommandEncoderDescriptor) *CommandEncoder;
    extern fn wgpuDeviceCreateComputePipeline(device: *Device, descriptor: *const ComputePipelineDescriptor) *ComputePipeline;
    extern fn wgpuDeviceCreateComputePipelineAsync(device: *Device, descriptor: *const ComputePipelineDescriptor, callback: CreateComputePipelineAsyncCallback, userdata: ?*anyopaque) void;
    extern fn wgpuDeviceCreatePipelineLayout(device: *Device, descriptor: *const PipelineLayoutDescriptor) *PipelineLayout;
    extern fn wgpuDeviceCreateQuerySet(device: *Device, descriptor: *const QuerySetDescriptor) *QuerySet;
    extern fn wgpuDeviceCreateRenderBundleEncoder(device: *Device, descriptor: *const RenderBundleEncoderDescriptor) *RenderBundleEncoder;
    extern fn wgpuDeviceCreateRenderPipeline(device: *Device, descriptor: *const RenderPipelineDescriptor) *RenderPipeline;
    extern fn wgpuDeviceCreateRenderPipelineAsync(device: *Device, descriptor: *const RenderPipelineDescriptor, callback: CreateRenderPipelineAsyncCallback, userdata: ?*anyopaque) void;
    extern fn wgpuDeviceCreateSampler(device: *Device, descriptor: *const SamplerDescriptor) *Sampler;
    extern fn wgpuDeviceCreateShaderModule(device: *Device, descriptor: *const ShaderModuleDescriptor) *ShaderModule;
    extern fn wgpuDeviceCreateTexture(device: *Device, descriptor: *const TextureDescriptor) *Texture;
    extern fn wgpuDeviceGetQueue(device: *Device) *Queue;
    extern fn wgpuDeviceEnumerateFeatures(device: *Device, features: ?[*]FeatureName) usize;
    extern fn wgpuDeviceGetLimits(device: *Device, limits: *SupportedLimits) Bool;
    extern fn wgpuDeviceHasFeature(device: *Device, feature: FeatureName) Bool;
    extern fn wgpuDevicePushErrorScope(device: *Device, filter: ErrorFilter) void;
    extern fn wgpuDevicePopErrorScope(device: *Device, callback: ErrorCallback, userdata: ?*anyopaque) void;
    extern fn wgpuDeviceSetUncapturedErrorCallback(device: *Device, callback: ErrorCallback, userdata: ?*anyopaque) void;

    extern fn wgpuDeviceDestroy(device: *Device) void;
    extern fn wgpuDeviceSetLabel(device: *Device, label: [*:0]const u8) void;
    extern fn wgpuDeviceReference(device: *Device) void;
    extern fn wgpuDeviceRelease(device: *Device) void;

    //WGPU-Native stuff
    extern fn wgpuDevicePoll(device: *Device, wait: Bool, wrapped_submission_index: *const WrappedSubmissionIndex) Bool;
};

pub const Instance = opaque {
    const RequestAdapterData = struct {
        adapter: *Adapter = undefined,
        status: RequestAdapterStatus = .unknown,
        message: ?[*:0]const u8 = null,
    };

    fn handleAdapterRequest(
        status: RequestAdapterStatus,
        adapter: *Adapter,
        message: ?[*:0]const u8,
        userdata: ?*anyopaque,
    ) callconv(.C) void {
        const data: *RequestAdapterData = @ptrCast(@alignCast(userdata.?));
        data.* = .{
            .adapter = adapter,
            .status = status,
            .message = message,
        };
    }

    pub fn create(descriptor: InstanceDescriptor) *Instance {
        return wgpuCreateInstance(&descriptor);
    }

    pub fn requestAdapter(instance: *Instance, options: RequestAdapterOptions) !*Adapter {
        var data = RequestAdapterData{};
        wgpuInstanceRequestAdapter(
            instance,
            &options,
            handleAdapterRequest,
            @ptrCast(&data),
        );

        if (data.status == .success) {
            return data.adapter;
        } else {
            log.err(
                "Adapter request failed. status: {s}, message: {s}",
                .{ @tagName(data.status), data.message.? },
            );
            return error.WGPURequestAdapterFailed;
        }
    }

    pub fn createSurface(self: *Instance, descriptor: SurfaceDescriptor) *Surface {
        return wgpuInstanceCreateSurface(self, &descriptor);
    }

    pub fn release(self: *Instance) void {
        wgpuInstanceRelease(self);
    }

    extern fn wgpuCreateInstance(descriptor: ?*const InstanceDescriptor) *Instance;
    extern fn wgpuInstanceCreateSurface(instance: *Instance, descriptor: *const SurfaceDescriptor) *Surface;
    extern fn wgpuInstanceProcessEvents(instance: *Instance) void;
    extern fn wgpuInstanceRequestAdapter(instance: *Instance, options: *const RequestAdapterOptions, callback: RequestAdapterCallback, userdata: ?*anyopaque) void;
    extern fn wgpuInstanceReference(instance: *Instance) void;
    extern fn wgpuInstanceRelease(instance: *Instance) void;
};

pub const PipelineLayout = opaque {
    pub fn release(self: *PipelineLayout) void {
        wgpuPipelineLayoutRelease(self);
    }

    extern fn wgpuPipelineLayoutSetLabel(pipeline_layout: *PipelineLayout, label: [*:0]const u8) void;
    extern fn wgpuPipelineLayoutReference(pipeline_layout: *PipelineLayout) void;
    extern fn wgpuPipelineLayoutRelease(pipeline_layout: *PipelineLayout) void;
};

pub const QuerySet = opaque {
    pub fn release(self: *QuerySet) void {
        wgpuQuerySetRelease(self);
    }

    extern fn wgpuQuerySetDestroy(query_set: *QuerySet) void;
    extern fn wgpuQuerySetGetCount(query_set: *QuerySet) u32;
    extern fn wgpuQuerySetGetType(query_set: *QuerySet) QueryType;
    extern fn wgpuQuerySetSetLabel(query_set: *QuerySet, label: [*:0]const u8) void;
    extern fn wgpuQuerySetReference(query_set: *QuerySet) void;
    extern fn wgpuQuerySetRelease(query_set: *QuerySet) void;
};

pub const Queue = opaque {
    pub fn submit(self: *Queue, commands: []const *CommandBuffer) void {
        wgpuQueueSubmit(self, commands.len, commands.ptr);
    }

    pub fn writeBuffer(self: *Queue, buffer: *Buffer, buffer_offset: u64, ptr: *const anyopaque, size: usize) void {
        wgpuQueueWriteBuffer(self, buffer, buffer_offset, ptr, size);
    }

    pub fn writeTexture(self: *Queue, destination: ImageCopyTexture, data: *const anyopaque, data_size: usize, data_layout: TextureDataLayout, write_size: Extent3D) void {
        wgpuQueueWriteTexture(self, &destination, data, data_size, &data_layout, &write_size);
    }

    pub fn onSubmittedWorkDone(self: *Queue, callback: QueueWorkDoneCallback, userdata: ?*anyopaque) void {
        wgpuQueueOnSubmittedWorkDone(self, callback, userdata);
    }

    pub fn release(self: *Queue) void {
        wgpuQueueRelease(self);
    }

    // WGPU-Native stuff
    pub fn submitForIndex(self: *Queue, commands: []const *CommandBuffer) SubmissionIndex {
        return wgpuQueueSubmitForIndex(self, commands.len, commands.ptr);
    }

    extern fn wgpuQueueSubmit(queue: *Queue, command_count: usize, commands: [*]const *CommandBuffer) void;
    extern fn wgpuQueueWriteBuffer(queue: *Queue, buffer: *Buffer, buffer_offset: u64, data: *const anyopaque, size: usize) void;
    extern fn wgpuQueueWriteTexture(queue: *Queue, destination: *const ImageCopyTexture, data: *const anyopaque, data_size: usize, data_layout: *const TextureDataLayout, write_size: *const Extent3D) void;
    extern fn wgpuQueueOnSubmittedWorkDone(queue: *Queue, callback: QueueWorkDoneCallback, userdata: ?*anyopaque) void;
    extern fn wgpuQueueSetLabel(queue: *Queue, label: [*c]const u8) void;
    extern fn wgpuQueueReference(queue: *Queue) void;
    extern fn wgpuQueueRelease(queue: *Queue) void;

    // WGPU-Native stuff
    extern fn wgpuQueueSubmitForIndex(queue: *Queue, command_count: usize, [*]const *CommandBuffer) SubmissionIndex;
};

pub const RenderBundle = opaque {
    pub fn release(self: *RenderBundle) void {
        wgpuRenderBundleRelease(self);
    }

    extern fn wgpuRenderBundleSetLabel(render_bundle: *RenderBundle, label: [*:0]const u8) void;
    extern fn wgpuRenderBundleReference(render_bundle: *RenderBundle) void;
    extern fn wgpuRenderBundleRelease(render_bundle: *RenderBundle) void;
};

pub const RenderBundleEncoder = opaque {
    pub fn draw(self: *RenderBundleEncoder, vertex_count: u32, instance_count: u32, first_vertex: u32, first_instance: u32) void {
        wgpuRenderBundleEncoderDraw(self, vertex_count, instance_count, first_vertex, first_instance);
    }

    pub fn drawIndirect(self: *RenderBundleEncoder, indirect_buffer: *Buffer, indirect_offset: u64) void {
        wgpuRenderBundleEncoderDrawIndirect(self, indirect_buffer, indirect_offset);
    }

    pub fn drawIndexed(self: *RenderBundleEncoder, index_count: u32, instance_count: u32, first_index: u32, base_vertex: i32, first_instance: u32) void {
        wgpuRenderBundleEncoderDrawIndexed(self, index_count, instance_count, first_index, base_vertex, first_instance);
    }

    pub fn drawIndexedIndirect(self: *RenderBundleEncoder, indirect_buffer: *Buffer, indirect_offset: u64) void {
        wgpuRenderBundleEncoderDrawIndexedIndirect(self, indirect_buffer, indirect_offset);
    }

    pub fn setIndexBuffer(self: *RenderBundleEncoder, buffer: *Buffer, format: IndexFormat, offset: u64, size: u64) void {
        wgpuRenderBundleEncoderSetIndexBuffer(self, buffer, format, offset, size);
    }

    pub fn setVertexBuffer(self: *RenderBundleEncoder, slot: u32, buffer: *Buffer, offset: u64, size: u64) void {
        wgpuRenderBundleEncoderSetVertexBuffer(self, slot, buffer, offset, size);
    }

    pub fn setBindGroup(self: *RenderBundleEncoder, group_index: u32, group: *BindGroup, dynamic_offsets: []const u32) void {
        wgpuRenderBundleEncoderSetBindGroup(self, group_index, group, dynamic_offsets.len, dynamic_offsets.ptr);
    }

    pub fn setPipeline(self: *RenderBundleEncoder, pipeline: *RenderPipeline) void {
        wgpuRenderBundleEncoderSetPipeline(self, pipeline);
    }

    pub fn finish(self: *RenderBundleEncoder, descriptor: RenderBundleDescriptor) *RenderBundle {
        return wgpuRenderBundleEncoderFinish(self, &descriptor);
    }

    pub fn release(self: *RenderBundleEncoder) void {
        wgpuRenderBundleEncoderRelease(self);
    }

    extern fn wgpuRenderBundleEncoderDraw(render_bundle_encoder: *RenderBundleEncoder, vertex_count: u32, instance_count: u32, first_vertex: u32, first_instance: u32) void;
    extern fn wgpuRenderBundleEncoderDrawIndirect(render_bundle_encoder: *RenderBundleEncoder, indirect_buffer: *Buffer, indirect_offset: u64) void;
    extern fn wgpuRenderBundleEncoderDrawIndexed(render_bundle_encoder: *RenderBundleEncoder, index_count: u32, instance_count: u32, first_index: u32, base_vertex: i32, first_instance: u32) void;
    extern fn wgpuRenderBundleEncoderDrawIndexedIndirect(render_bundle_encoder: *RenderBundleEncoder, indirect_buffer: *Buffer, indirect_offset: u64) void;
    extern fn wgpuRenderBundleEncoderSetIndexBuffer(render_bundle_encoder: *RenderBundleEncoder, buffer: *Buffer, format: IndexFormat, offset: u64, size: u64) void;
    extern fn wgpuRenderBundleEncoderSetVertexBuffer(render_bundle_encoder: *RenderBundleEncoder, slot: u32, buffer: *Buffer, offset: u64, size: u64) void;
    extern fn wgpuRenderBundleEncoderSetBindGroup(render_bundle_encoder: *RenderBundleEncoder, group_index: u32, group: *BindGroup, dynamic_offset_count: usize, dynamic_offsets: [*]const u32) void;
    extern fn wgpuRenderBundleEncoderSetPipeline(render_bundle_encoder: *RenderBundleEncoder, pipeline: *RenderPipeline) void;
    extern fn wgpuRenderBundleEncoderFinish(render_bundle_encoder: *RenderBundleEncoder, descriptor: *const RenderBundleDescriptor) *RenderBundle;

    extern fn wgpuRenderBundleEncoderInsertDebugMarker(render_bundle_encoder: *RenderBundleEncoder, marker_label: [*:0]const u8) void;
    extern fn wgpuRenderBundleEncoderPopDebugGroup(renderBundleEncoder: *RenderBundleEncoder) void;
    extern fn wgpuRenderBundleEncoderPushDebugGroup(render_bundle_encoder: *RenderBundleEncoder, group_label: [*:0]const u8) void;
    extern fn wgpuRenderBundleEncoderSetLabel(render_bundle_encoder: *RenderBundleEncoder, label: [*:0]const u8) void;
    extern fn wgpuRenderBundleEncoderReference(render_bundle_encoder: *RenderBundleEncoder) void;
    extern fn wgpuRenderBundleEncoderRelease(render_bundle_encoder: *RenderBundleEncoder) void;
};

pub const RenderPassEncoder = opaque {
    pub fn draw(self: *RenderPassEncoder, vertex_count: u32, instance_count: u32, first_vertex: u32, first_instance: u32) void {
        wgpuRenderPassEncoderDraw(self, vertex_count, instance_count, first_vertex, first_instance);
    }

    pub fn drawIndirect(self: *RenderPassEncoder, indirect_buffer: *Buffer, indirect_offset: u64) void {
        wgpuRenderPassEncoderDrawIndirect(self, indirect_buffer, indirect_offset);
    }

    pub fn drawIndexed(self: *RenderPassEncoder, index_count: u32, instance_count: u32, first_index: u32, base_vertex: i32, first_instance: u32) void {
        wgpuRenderPassEncoderDrawIndexed(self, index_count, instance_count, first_index, base_vertex, first_instance);
    }

    pub fn drawIndexedIndirect(self: *RenderPassEncoder, indirect_buffer: *Buffer, indirect_offset: u64) void {
        wgpuRenderPassEncoderDrawIndexedIndirect(self, indirect_buffer, indirect_offset);
    }

    pub fn setBindGroup(self: *RenderPassEncoder, group_index: u32, group: *BindGroup, dynamic_offsets: []const u32) void {
        wgpuRenderPassEncoderSetBindGroup(self, group_index, group, dynamic_offsets.len, dynamic_offsets.ptr);
    }

    pub fn setPipeline(self: *RenderPassEncoder, pipeline: *RenderPipeline) void {
        wgpuRenderPassEncoderSetPipeline(self, pipeline);
    }

    pub fn setIndexBuffer(self: *RenderPassEncoder, buffer: *Buffer, format: IndexFormat, offset: u64, size: u64) void {
        wgpuRenderPassEncoderSetIndexBuffer(self, buffer, format, offset, size);
    }

    pub fn setVertexBuffer(self: *RenderPassEncoder, slot: u32, buffer: *Buffer, offset: u64, size: u64) void {
        wgpuRenderPassEncoderSetVertexBuffer(self, slot, buffer, offset, size);
    }

    pub fn setViewport(self: *RenderPassEncoder, x: f32, y: f32, width: f32, height: f32, min_depth: f32, max_depth: f32) void {
        wgpuRenderPassEncoderSetViewport(self, x, y, width, height, min_depth, max_depth);
    }

    pub fn setScissorRect(self: *RenderPassEncoder, x: u32, y: u32, width: u32, height: u32) void {
        wgpuRenderPassEncoderSetScissorRect(self, x, y, width, height);
    }

    pub fn setBlendConstant(self: *RenderPassEncoder, color: Color) void {
        wgpuRenderPassEncoderSetBlendConstant(self, &color);
    }

    pub fn setStencilReference(self: *RenderPassEncoder, reference: u32) void {
        wgpuRenderPassEncoderSetStencilReference(self, reference);
    }

    pub fn executeBundles(self: *RenderPassEncoder, bundles: []const *RenderBundle) void {
        wgpuRenderPassEncoderExecuteBundles(self, bundles.len, bundles.ptr);
    }

    pub fn end(self: *RenderPassEncoder) void {
        wgpuRenderPassEncoderEnd(self);
    }

    // WGPU-Native Stuff
    pub fn multiDrawIndirect(self: *RenderPassEncoder, buffer: *Buffer, offset: u64, count: u32) void {
        wgpuRenderPassEncoderMultiDrawIndirect(self, buffer, offset, count);
    }

    pub fn multiDrawIndexedIndirect(self: *RenderPassEncoder, buffer: *Buffer, offset: u64, count: u32) void {
        wgpuRenderPassEncoderMultiDrawIndexedIndirect(self, buffer, offset, count);
    }

    pub fn multiDrawIndirectCount(self: *RenderPassEncoder, buffer: *Buffer, offset: u64, count_buffer: *Buffer, count_buffer_offset: u64, max_count: u32) void {
        wgpuRenderPassEncoderMultiDrawIndirectCount(self, buffer, offset, count_buffer, count_buffer_offset, max_count);
    }

    pub fn multiDrawIndexedIndirectCount(self: *RenderPassEncoder, buffer: *Buffer, offset: u64, count_buffer: *Buffer, count_buffer_offset: u64, max_count: u32) void {
        wgpuRenderPassEncoderMultiDrawIndexedIndirectCount(self, buffer, offset, count_buffer, count_buffer_offset, max_count);
    }

    extern fn wgpuRenderPassEncoderDraw(render_pass_encoder: *RenderPassEncoder, vertex_count: u32, instance_count: u32, first_vertex: u32, first_instance: u32) void;
    extern fn wgpuRenderPassEncoderDrawIndirect(render_pass_encoder: *RenderPassEncoder, indirect_buffer: *Buffer, indirect_offset: u64) void;
    extern fn wgpuRenderPassEncoderDrawIndexed(render_pass_encoder: *RenderPassEncoder, index_count: u32, instance_count: u32, first_index: u32, base_vertex: i32, first_instance: u32) void;
    extern fn wgpuRenderPassEncoderDrawIndexedIndirect(render_pass_encoder: *RenderPassEncoder, indirect_buffer: *Buffer, indirect_offset: u64) void;
    extern fn wgpuRenderPassEncoderSetBindGroup(render_pass_encoder: *RenderPassEncoder, group_index: u32, group: *BindGroup, dynamic_offset_count: usize, dynamic_offsets: [*]const u32) void;
    extern fn wgpuRenderPassEncoderSetPipeline(render_pass_encoder: *RenderPassEncoder, pipeline: *RenderPipeline) void;
    extern fn wgpuRenderPassEncoderSetIndexBuffer(render_pass_encoder: *RenderPassEncoder, buffer: *Buffer, format: IndexFormat, offset: u64, size: u64) void;
    extern fn wgpuRenderPassEncoderSetVertexBuffer(render_pass_encoder: *RenderPassEncoder, slot: u32, buffer: *Buffer, offset: u64, size: u64) void;
    extern fn wgpuRenderPassEncoderSetViewport(render_pass_encoder: *RenderPassEncoder, x: f32, y: f32, width: f32, height: f32, min_depth: f32, max_depth: f32) void;
    extern fn wgpuRenderPassEncoderSetScissorRect(render_pass_encoder: *RenderPassEncoder, x: u32, y: u32, width: u32, height: u32) void;
    extern fn wgpuRenderPassEncoderSetBlendConstant(render_pass_encoder: *RenderPassEncoder, color: *const Color) void;
    extern fn wgpuRenderPassEncoderSetStencilReference(render_pass_encoder: *RenderPassEncoder, reference: u32) void;
    extern fn wgpuRenderPassEncoderExecuteBundles(render_pass_encoder: *RenderPassEncoder, bundle_count: usize, bundles: [*]const *RenderBundle) void;
    extern fn wgpuRenderPassEncoderEnd(render_pass_encoder: *RenderPassEncoder) void;

    extern fn wgpuRenderPassEncoderBeginOcclusionQuery(render_pass_encoder: *RenderPassEncoder, query_index: u32) void;
    extern fn wgpuRenderPassEncoderEndOcclusionQuery(render_pass_encoder: *RenderPassEncoder) void;
    extern fn wgpuRenderPassEncoderInsertDebugMarker(render_pass_encoder: *RenderPassEncoder, marker_label: [*:0]const u8) void;
    extern fn wgpuRenderPassEncoderPopDebugGroup(render_pass_encoder: *RenderPassEncoder) void;
    extern fn wgpuRenderPassEncoderPushDebugGroup(render_pass_encoder: *RenderPassEncoder, group_label: [*:0]const u8) void;
    extern fn wgpuRenderPassEncoderSetLabel(render_pass_encoder: *RenderPassEncoder, label: [*:0]const u8) void;
    extern fn wgpuRenderPassEncoderReference(render_pass_encoder: *RenderPassEncoder) void;
    extern fn wgpuRenderPassEncoderRelease(render_pass_encoder: *RenderPassEncoder) void;

    // WGPU-Native Stuff
    extern fn wgpuRenderPassEncoderMultiDrawIndirect(render_pass_encoder: *RenderPassEncoder, buffer: *Buffer, offset: u64, count: u32) void;
    extern fn wgpuRenderPassEncoderMultiDrawIndexedIndirect(render_pass_encoder: *RenderPassEncoder, buffer: *Buffer, offset: u64, count: u32) void;
    extern fn wgpuRenderPassEncoderMultiDrawIndirectCount(render_pass_encoder: *RenderPassEncoder, buffer: *Buffer, offset: u64, count_buffer: *Buffer, count_buffer_offset: u64, max_count: u32) void;
    extern fn wgpuRenderPassEncoderMultiDrawIndexedIndirectCount(render_pass_encoder: *RenderPassEncoder, buffer: *Buffer, offset: u64, count_buffer: *Buffer, count_buffer_offset: u64, max_count: u32) void;
};

pub const RenderPipeline = opaque {
    pub fn getBindGroupLayout(self: *RenderPipeline, group_index: u32) *BindGroupLayout {
        return wgpuRenderPipelineGetBindGroupLayout(self, group_index);
    }

    pub fn release(self: *RenderPipeline) void {
        wgpuRenderPipelineRelease(self);
    }

    extern fn wgpuRenderPipelineGetBindGroupLayout(render_pipeline: *RenderPipeline, group_index: u32) *BindGroupLayout;
    extern fn wgpuRenderPipelineSetLabel(render_pipeline: *RenderPipeline, label: [*:0]const u8) void;
    extern fn wgpuRenderPipelineReference(render_pipeline: *RenderPipeline) void;
    extern fn wgpuRenderPipelineRelease(render_pipeline: *RenderPipeline) void;
};

pub const Sampler = opaque {
    pub fn release(self: *Sampler) void {
        wgpuSamplerRelease(self);
    }

    extern fn wgpuSamplerSetLabel(sampler: *Sampler, label: [*:0]const u8) void;
    extern fn wgpuSamplerReference(sampler: *Sampler) void;
    extern fn wgpuSamplerRelease(sampler: *Sampler) void;
};

pub const ShaderModule = opaque {
    pub fn release(self: *ShaderModule) void {
        wgpuShaderModuleRelease(self);
    }

    extern fn wgpuShaderModuleGetCompilationInfo(shader_module: *ShaderModule, callback: CompilationInfoCallback, userdata: ?*anyopaque) void;
    extern fn wgpuShaderModuleSetLabel(shader_module: *ShaderModule, label: [*:0]const u8) void;
    extern fn wgpuShaderModuleReference(shader_module: *ShaderModule) void;
    extern fn wgpuShaderModuleRelease(shader_module: *ShaderModule) void;
};

pub const Surface = opaque {
    pub fn configure(self: *Surface, config: SurfaceConfiguration) void {
        wgpuSurfaceConfigure(self, &config);
    }

    pub fn unconfigure(self: *Surface) void {
        wgpuSurfaceUnconfigure(self);
    }

    pub fn getGetCurrentTexture(self: *Surface) SurfaceTexture {
        var tex: SurfaceTexture = undefined;
        wgpuSurfaceGetCurrentTexture(self, &tex);
        return tex;
    }

    pub fn getCapabilities(self: *Surface, adapter: *Adapter) SurfaceCapabilities {
        var caps: SurfaceCapabilities = undefined;
        wgpuSurfaceGetCapabilities(self, adapter, &caps);
        return caps;
    }

    pub fn preset(self: *Surface) void {
        wgpuSurfacePresent(self);
    }

    pub fn release(self: *Surface) void {
        wgpuSurfaceRelease(self);
    }

    extern fn wgpuSurfaceConfigure(surface: *Surface, config: *const SurfaceConfiguration) void;
    extern fn wgpuSurfaceGetCapabilities(surface: *Surface, adapter: *Adapter, capabilities: *SurfaceCapabilities) void;
    extern fn wgpuSurfaceGetCurrentTexture(surface: *Surface, surface_texture: *SurfaceTexture) void;
    extern fn wgpuSurfaceGetPreferredFormat(surface: *Surface, adapter: *Adapter) TextureFormat;
    extern fn wgpuSurfacePresent(surface: *Surface) void;
    extern fn wgpuSurfaceUnconfigure(surface: *Surface) void;
    extern fn wgpuSurfaceReference(surface: *Surface) void;
    extern fn wgpuSurfaceRelease(surface: *Surface) void;
};

pub const Texture = opaque {
    pub fn createView(self: *Texture, descriptor: TextureViewDescriptor) *TextureView {
        return wgpuTextureCreateView(self, &descriptor);
    }

    pub fn release(self: *Texture) void {
        wgpuTextureRelease(self);
    }

    pub fn destroy(self: *Texture) void {
        wgpuTextureDestroy(self);
    }

    extern fn wgpuTextureCreateView(texture: *Texture, descriptor: *const TextureViewDescriptor) *TextureView;
    extern fn wgpuTextureDestroy(texture: *Texture) void;
    extern fn wgpuTextureGetDepthOrArrayLayers(texture: *Texture) u32;
    extern fn wgpuTextureGetDimension(texture: *Texture) TextureDimension;
    extern fn wgpuTextureGetFormat(texture: *Texture) TextureFormat;
    extern fn wgpuTextureGetHeight(texture: *Texture) u32;
    extern fn wgpuTextureGetMipLevelCount(texture: *Texture) u32;
    extern fn wgpuTextureGetSampleCount(texture: *Texture) u32;
    extern fn wgpuTextureGetUsage(texture: *Texture) TextureUsageFlags;
    extern fn wgpuTextureGetWidth(texture: *Texture) u32;
    extern fn wgpuTextureSetLabel(texture: *Texture, label: [*:0]const u8) void;
    extern fn wgpuTextureReference(texture: *Texture) void;
    extern fn wgpuTextureRelease(texture: *Texture) void;
};

pub const TextureView = opaque {
    pub fn release(self: *TextureView) void {
        wgpuTextureViewRelease(self);
    }

    extern fn wgpuTextureViewSetLabel(texture_view: *TextureView, label: [*:0]const u8) void;
    extern fn wgpuTextureViewReference(texture_view: *TextureView) void;
    extern fn wgpuTextureViewRelease(texture_view: *TextureView) void;
};

extern fn wgpuGetProcAddress(device: *Device, proc_name: [*:0]const u8) ?Proc;

// WGPU-Native stuff
pub const DrawIndirect = extern struct {
    vertex_count: u32,
    instance_count: u32,
    base_vertex: u32,
    base_instance: u32,
};

pub const DrawIndexedIndirect = extern struct {
    vertex_count: u32,
    instance_count: u32,
    base_index: u32,
    vertex_offset: i32,
    base_instance: u32,
};

pub const DrawIndirectCount = extern struct {
    count: u32,
};

pub const LogLevel = enum(EnumType) {
    off = 0x00000000,
    err = 0x00000001,
    warn = 0x00000002,
    info = 0x00000003,
    debug = 0x00000004,
    trace = 0x00000005,
};

pub const Dx12Compiler = enum(EnumType) {
    undef = 0x00000000,
    fxc = 0x00000001,
    dxc = 0x00000002,
};

pub const Gles3MinorVersion = enum(EnumType) {
    automatic = 0x00000000,
    version0 = 0x00000001,
    version1 = 0x00000002,
    version2 = 0x00000003,
};

pub const InstanceBackendFlags = packed struct(Flags) {
    vulkan: bool = false,
    gl: bool = false,
    metal: bool = false,
    dx12: bool = false,
    dx11: bool = false,
    browser_web_gpu: bool = false,

    _padding: u26 = 0,

    pub const primary = InstanceBackendFlags{
        .vulkan = true,
        .metal = true,
        .dx12 = true,
        .browser_web_gpu = true,
    };

    pub const secondary = InstanceBackendFlags{
        .gl = true,
        .dx11 = true,
    };
};

pub const InstanceFlags = packed struct(Flags) {
    debug: bool = false,
    validation: bool = false,
    discard_hal_labels: bool = false,

    _padding: u29 = 0,
};

pub const SubmissionIndex = u64;

pub const WrappedSubmissionIndex = extern struct {
    queue: *Queue,
    submission_index: SubmissionIndex,
};

pub const InstanceExtras = extern struct {
    chain: ChainedStruct = .{ .s_type = .instance_extras },
    backends: InstanceBackendFlags = .{},
    flags: InstanceFlags = .{},
    dx12_shader_compiler: Dx12Compiler = .undef,
    gles3_minor_version: Gles3MinorVersion = .automatic,
    dxil_path: ?[*:0]const u8 = null,
    dxc_path: ?[*:0]const u8 = null,
};

pub const BindGroupEntryExtras = extern struct {
    chain: ChainedStruct = .{ .s_type = .bind_group_entry_extras },
    buffers: ?[*]const *Buffer,
    buffer_count: usize,
    samplers: ?[*]const *Sampler,
    sampler_count: usize,
    texture_views: ?[*]const *TextureView,
    textureViewCount: usize,
};

pub const BindGroupLayoutEntryExtras = extern struct {
    chain: ChainedStruct = .{ .s_type = .bind_group_layout_entry_extras },
    count: u32,
};

pub const LogCallback = *const fn (level: LogLevel, message: [*:0]const u8, userdata: ?*anyopaque) callconv(.C) void;

pub fn setLogCallback(callback: LogCallback, userdata: ?*anyopaque) void {
    wgpuSetLogCallback(callback, userdata);
}

pub fn setLogLevel(level: LogLevel) void {
    wgpuSetLogLevel(level);
}

pub fn getVersion() u32 {
    return wgpuGetVersion();
}

extern fn wgpuSetLogCallback(callback: LogCallback, userdata: ?*anyopaque) void;
extern fn wgpuSetLogLevel(level: LogLevel) void;
extern fn wgpuGetVersion() u32;
