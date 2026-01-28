libgds_srcs = files(
    'asm/ov61_0222CEDC.s',
    'asm/ov61_0222D498.s',
    'src/ov61_0222DCDC.c',
    'asm/ov61_0222E0B8.s',
    'asm/ov61_0222E478.s'
)

libgds_public_includes = include_directories('include')

libgds_c_args = [
    '-nothumb',
    '-wrap:sdk', '2.0/sp2p2',
    '-wrap:noipa'
]

libgds = static_library('gds',
    sources: libgds_srcs,
    c_args: libgds_c_args,
    nasm_args: asm_args,
    include_directories: [public_includes, libgds_public_includes],
    dependencies: [ nitrosdk_dep, nitrosystem_dep ],
    pic: false
)