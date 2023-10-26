libspl_srcs = files(
    'asm/unk_0209C400.s',
    'asm/unk_0209CF00.s',
    'asm/unk_0209DD54.s',
    'asm/unk_020A05BC.s',
    'asm/unk_020A19F0.s',
    'asm/unk_020A1E30.s',
    'asm/unk_020A2238.s',
    'asm/unk_020A2354.s'
)

libspl_public_includes = include_directories('include')

libspl = static_library('spl',
    sources: libspl_srcs,
    c_args: c_args,
    nasm_args: asm_args,
    include_directories: [public_includes, libspl_public_includes],
    pic: false
)
