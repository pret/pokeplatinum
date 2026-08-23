libdwcppwlobby_srcs = files(
    'src/ppw_lobby.cpp',
    'src/ppw_innerinfo.cpp',
    'src/dwci_encsession.cpp',
    'src/ppw_parser.cpp',
    'src/ppw_profile.cpp',
)

# TODO: NX build does not work because switch.h required c++>=11
if(build_target != 'nx')
libdwcppwlobby = static_library('dwcppwlobby',
    sources: [libdwcppwlobby_srcs, c_consts_generators],
    c_args: ppwlobby_c_args,
    cpp_args: [cpp_args, ppwlobby_c_args],
    include_directories: [public_includes, ppwlobby_public_includes, toplevel_includes],
    dependencies: [nitrosdk_dep, nitrodwc_dep, nitrowifi_dep, libdwcenc_dep],
    pic: (build_target == 'nx'),
    native: (build_target == 'linux' or build_target == 'win64')
)

ppwlobby_libs += libdwcppwlobby
endif
