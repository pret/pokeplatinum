libdwcaccount_srcs = files(
    'src/dwc_init.c',
    'src/dwc_account.c'
)

libdwcaccount = static_library('dwcaccount',
    sources: [libdwcaccount_srcs],
    c_args: [c_args, sdk_args],
    dependencies: [
        gamespy_dep,
        nitrosdk_dep,
        nitrosystem_dep,
        nitrowifi_dep
    ],
    include_directories: [public_includes],
    c_pch: nitro_pch,
    pic: false
)

nitrodwc_libs += libdwcaccount
