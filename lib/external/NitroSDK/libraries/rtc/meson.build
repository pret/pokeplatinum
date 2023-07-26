librtc_srcs = files(
    'src/external.c',
    'src/internal.c',
    'src/convert.c',
)

librtc = static_library('rtc',
    sources: [librtc_srcs, fx_const_h],
    c_args: [c_args, sdk_args],
    dependencies: msl_dep,
    include_directories: [public_includes],
    c_pch: nitro_pch,
    pic: false
)

nitrosdk_libs += librtc
