libdwcilobby_srcs = files(
    'src/dwci_lobby.cpp',
    'src/dwci_lobbybase.cpp',
    'src/dwci_lobbynewhandler.cpp',
    'src/dwci_lobbycallback.cpp',
    'src/dwci_lobbydata.cpp'
)

libdwcilobby = static_library('dwcilobby',
    sources: libdwcilobby_srcs,
    c_args: ppwlobby_c_args,
    cpp_args: cpp_args + ppwlobby_c_args,
    include_directories: [public_includes, ppwlobby_public_includes],
    dependencies: [nitrosdk_dep, nitrodwc_dep, nitrowifi_dep],
    pic: false
)

ppwlobby_libs += libdwcilobby
