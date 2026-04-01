asm_args = [
    '-proc', 'arm5TE',
    '-16',
    '-gccinc'
]

libcrypto_c_args = [
    '-nothumb',
    '-wrap:sdk', '1.2/base_b73',
    '-wrap:noipa'
]

libcrypto_public_includes = include_directories('include')

libcrypto_static_srcs = files(
    'src/rc4_init.c',
    'asm/rc4_fast.s'
)

libcrypto_ov97_srcs = files(
    'asm/rc4.s',
    'src/sign.c',
    'src/bignum.c',
    'src/util.c'
)

libcrypto_static = static_library('crypto_static',
    sources: libcrypto_static_srcs,
    c_args: libcrypto_c_args,
    nasm_args: asm_args,
    pic: false,
    include_directories: libcrypto_public_includes,
    dependencies: nitrosdk_dep
)

libcrypto_ov97 = static_library('crypto_ov97',
    sources: libcrypto_ov97_srcs,
    c_args: libcrypto_c_args,
    nasm_args: asm_args,
    pic: false,
    include_directories: libcrypto_public_includes,
    dependencies: nitrosdk_dep
)

libcrypto_dep = declare_dependency(
    include_directories: public_includes,
    link_with: [libcrypto_static, libcrypto_ov97]
)

meson.override_dependency('libcrypto', libcrypto_dep)
