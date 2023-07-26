libstd_srcs = files(
    'asm/std_string.s',
    'asm/std_sprintf.s'
)

libstd = static_library('std',
    sources: libstd_srcs,
    c_args: [c_args, sdk_args],
    include_directories: public_includes,
    pic: false
)

nitrosdk_libs += libstd
