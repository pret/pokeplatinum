libdwcppwlobby_srcs = files(
    'src/ppw_lobby.cpp',
    'src/ppw_innerinfo.cpp',
    'src/dwci_encsession.cpp',
    'src/ppw_parser.cpp',
    'src/ppw_profile.cpp',
)

libdwcppwlobby = static_library('dwcppwlobby',
    sources: libdwcppwlobby_srcs,
    c_args: ppwlobby_c_args,
    cpp_args: cpp_args + ppwlobby_c_args,
    include_directories: [public_includes, ppwlobby_public_includes],
    dependencies: [nitrosdk_dep, nitrodwc_dep, nitrowifi_dep, libdwcenc_dep],
    pic: false
)

ppwlobby_libs += libdwcppwlobby
