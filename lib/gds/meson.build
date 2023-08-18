libgds_srcs = files(
    'asm/ov61_0222CEDC.s',
    'asm/ov61_0222D498.s',
    'asm/ov61_0222DCDC.s',
    'asm/ov61_0222E0B8.s',
    'asm/ov61_0222E478.s'
)

libgds_public_includes = include_directories('include')

libgds = static_library('gds',
    sources: libgds_srcs,
    c_args: c_args,
    nasm_args: asm_args,
    include_directories: libgds_public_includes,
    pic: false
)