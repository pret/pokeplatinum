
libspl_c_args = [
    '-nothumb',
    '-wrap:ver', '1.2/base_b73',
    '-wrap:noipa'
]

libspl_link_args = [
    '-library',
    '-nothumb',
    '-main', '""',
    '-nostdlib',
]

libspl_public_includes = include_directories('include')

libspl_srcs = files(
    'src/unk_0209C400.c',
    'src/unk_0209CF00.c',
    'src/unk_0209DD54.c',
    'src/unk_020A05BC.c',
    'src/unk_020A19F0.c',
    'src/unk_020A1E30.c',
    'src/spl_list.c',
    'src/spl_random.c'
)

libspl = static_library('spl',
    sources: libspl_srcs,
    nasm_args: asm_args,
    c_args: libspl_c_args,
    link_args: libspl_link_args,
    include_directories: [public_includes, libspl_public_includes],
    dependencies: [ nitrosdk_dep, nitrosystem_dep ],
    pic: false
)
