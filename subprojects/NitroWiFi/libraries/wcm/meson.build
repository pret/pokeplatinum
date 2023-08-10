libwcm_srcs = files(
    'src/system.c',
    'src/aplist.c',
    'src/cpsif.c',
    'src/util_wcm.c'
)

libwcm_internal_includes = include_directories('src/include')

libwcm = static_library('wcm',
    sources: [libwcm_srcs],
    c_args: [c_args, sdk_args],
    include_directories: [public_includes, libwcm_internal_includes],
    c_pch: nitro_pch,
    dependencies: nitrosdk_dep,
    pic: false
)

nitrowifi_libs += libwcm
