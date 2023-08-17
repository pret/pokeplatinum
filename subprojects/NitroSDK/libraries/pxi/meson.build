libpxi_srcs = files(
    'src/pxi_init.c',
    'src/pxi_fifo.c'
)

libpxi = static_library('pxi',
    sources: [libpxi_srcs, fx_const_h],
    c_args: [c_args, sdk_args],
    include_directories: [public_includes],
    c_pch: nitro_pch,
    pic: false
)

nitrosdk_libs += libpxi
