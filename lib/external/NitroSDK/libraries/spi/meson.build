libspi_srcs = files(
    'src/tp.c',
    'src/mic.c',
    'src/pm.c'
)

libspi_internal_includes = include_directories('src/include')

libspi = static_library('spi',
    sources: [libspi_srcs, fx_const_h],
    c_args: [c_args, sdk_args],
    dependencies: msl_dep,
    include_directories: [public_includes, libspi_internal_includes],
    c_pch: nitro_pch,
    pic: false
)

nitrosdk_libs += libspi
