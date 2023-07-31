libstubsmd5_srcs = files('src/dummy_md5.c')

libstubsmd5 = static_library('stubsmd5',
    sources: [libstubsmd5_srcs],
    c_args: [c_args, sdk_args],
    include_directories: [public_includes],
    dependencies: [msl_dep, nitrosdk_dep],
    pic: false
)

nitrowifi_libs += libstubsmd5
