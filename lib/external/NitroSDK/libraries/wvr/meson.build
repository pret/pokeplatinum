libwvr_srcs = files('src/wvr.c')

libwvr = static_library('wvr',
    sources: [libwvr_srcs, fx_const_h],
    c_args: [c_args, sdk_args],
    dependencies: msl_dep,
    include_directories: [public_includes],
    c_pch: nitro_pch,
    pic: false
)

nitrosdk_libs += libwvr
