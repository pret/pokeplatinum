libgds_srcs = files(
    'src/ov61_0222CEDC.c',
    'src/ov61_0222D498.c',
    'src/ov61_0222DCDC.c',
    'src/ov61_0222E0B8.c',
    'src/ov61_0222E478.c'
)

libgds_public_includes = include_directories('include')

libgds_c_args = [
    '-nothumb',
    '-wrap:sdk', '2.0/sp2p2',
    '-wrap:noipa',
]

libgds_link_args = [
    '-library',
    '-nothumb',
    '-main', '""',
]

libgds = static_library('gds',
    sources: libgds_srcs,
    c_args: libgds_c_args,
    link_args: libgds_link_args,
    nasm_args: asm_args,
    include_directories: [public_includes, libgds_public_includes],
    dependencies: [nitrosdk_dep, nitrosystem_dep, nitrowifi_dep, nitrodwc_dep],
    pic: false
)
