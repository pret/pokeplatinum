libdwcbase_srcs = files(
    'src/dwc_error.c',
    'src/dwc_memfunc.c',
    'src/dwc_connectinet.c',
    'src/dwc_nasfunc.c',
    'src/dwc_nd.c',
    'src/dwc_common.c',
    'src/dwc_main.c',
    'src/dwc_login.c',
    'src/dwc_friend.c',
    'src/dwc_match.c',
    'src/dwc_transport.c',
    'src/dwc_ghttp.c'
)

libdwcbase = static_library('dwcbase',
    sources: libdwcbase_srcs,
    c_args: [c_args, sdk_args],
    nasm_args: asm_args,
    dependencies: [
        gamespy_dep,
        nitrosdk_dep,
        nitrosystem_dep,
        nitrowifi_dep
    ],
    c_pch: nitro_pch,
    include_directories: public_includes,
    pic: false
)

nitrodwc_libs += libdwcbase