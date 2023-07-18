libdwcilobby_srcs = files(
    'asm/dwci_lobbybase.s',
    'asm/dwci_lobbynewhandler.s',
    'asm/dwci_lobbycallback.s',
    'asm/dwci_lobbydata.s'
)

libdwcilobby = static_library('dwcilobby',
    sources: libdwcilobby_srcs,
    nasm_args: asm_args,
    include_directories: public_includes,
    pic: false
)

nitrodwc_libs += libdwcilobby
