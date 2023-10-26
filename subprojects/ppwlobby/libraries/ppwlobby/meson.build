libdwcppwlobby_srcs = files(
    'asm/ppw_lobby.s',
    'asm/ppw_innerinfo.s',
    'asm/dwci_encsession.s',
    'asm/ppw_parser.s',
    'asm/ppw_profile.s',
    'asm/dwci_lobby.s'
)

libdwcppwlobby = static_library('dwcppwlobby',
    sources: libdwcppwlobby_srcs,
    nasm_args: asm_args,
    include_directories: public_includes,
    pic: false
)

ppwlobby_libs += libdwcppwlobby
