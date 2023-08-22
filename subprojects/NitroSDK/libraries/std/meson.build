libstd_srcs = files(
    'src/std_string.c',
    'src/std_sprintf.c'
)

libstd = static_library('std',
    sources: libstd_srcs,
    c_args: [c_args, sdk_args],
    include_directories: public_includes,
    pic: false
)

nitrosdk_libs += libstd
