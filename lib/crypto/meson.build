libcrypto_c_args = [
    '-nothumb',
    '-wrap:sdk', '1.2/base_b73',
    '-wrap:noipa'
]

libcrypto_public_includes = include_directories('include')

if build_target == 'arm'
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
else
libcrypto_static_srcs = files(
    'src/rc4_init.c'
)

libcrypto_ov97_srcs = files(
    'src/sign.c',
    'src/bignum.c',
    'src/util.c'
)
endif

if build_target == 'arm'
libcrypto_static = static_library('crypto_static',
    sources: libcrypto_static_srcs,
    c_args: libcrypto_c_args,
    pic: false,
    include_directories: libcrypto_public_includes,
    dependencies: nitrosdk_dep
)

libcrypto_ov97 = static_library('crypto_ov97',
    sources: libcrypto_ov97_srcs,
    c_args: libcrypto_c_args,
    pic: false,
    include_directories: libcrypto_public_includes,
    dependencies: nitrosdk_dep
)
elif (build_target == 'linux' or build_target == 'win64')
libcrypto_static = static_library('crypto_static',
    sources: libcrypto_static_srcs,
    pic: false,
    include_directories: libcrypto_public_includes,
    dependencies: nitrosdk_dep,
    native: true
)

libcrypto_ov97 = static_library('crypto_ov97',
    sources: libcrypto_ov97_srcs,
    pic: false,
    include_directories: libcrypto_public_includes,
    dependencies: nitrosdk_dep,
    native: true
)
else
libcrypto_static = static_library('crypto_static',
    sources: libcrypto_static_srcs,
    pic: true,
    include_directories: libcrypto_public_includes,
    dependencies: nitrosdk_dep,
    native: false
)

libcrypto_ov97 = static_library('crypto_ov97',
    sources: libcrypto_ov97_srcs,
    pic: true,
    include_directories: libcrypto_public_includes,
    dependencies: nitrosdk_dep,
    native: false
)
endif
