libmath_srcs = files(
    'src/math.c',
    'src/dgt.c',
    'src/crc.c'
)

libmath = static_library('math',
    sources: [libmath_srcs, fx_const_h],
    c_args: [c_args, sdk_args],
    dependencies: msl_dep,
    include_directories: [public_includes],
    c_pch: nitro_pch,
    pic: false
)

nitrosdk_libs += libmath
