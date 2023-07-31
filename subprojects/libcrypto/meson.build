project('libcrypto', ['c', 'nasm'])

asm_args = [
    '-proc', 'arm5TE',
    '-16',
    '-gccinc'
]

public_includes = include_directories('include')

libcrypto_static_srcs = files(
    'asm/rc4.s',
    'asm/rc4-arm4cw.s'
)

libcrypto_ov97_srcs = files(
    'asm/rc4s-arm4cw.s',
    'asm/sign.s',
    'asm/util.s'
)

libcrypto_static = static_library('crypto_static',
    sources: libcrypto_static_srcs,
    nasm_args: asm_args,
    pic: false
)

libcrypto_ov97 = static_library('crypto_ov97',
    sources: libcrypto_ov97_srcs,
    nasm_args: asm_args,
    pic: false
)

libcrypto_dep = declare_dependency(
    include_directories: public_includes,
    link_with: [libcrypto_static, libcrypto_ov97]
)