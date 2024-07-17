libspl_srcs = files(
    'src/unk_0209C400.c',
    'src/unk_0209CF00.c',
    'asm/unk_0209DD54.s',
    'src/unk_020A05BC.c',
    'src/unk_020A19F0.c',
    'src/unk_020A1E30.c',
    'src/unk_020A2238.c',
    'src/unk_020A2354.c'
)

libspl_public_includes = include_directories('include')

libspl = static_library('spl',
    sources: libspl_srcs,
    c_args: c_args,
    nasm_args: asm_args,
    include_directories: [public_includes, libspl_public_includes],
    pic: false
)
