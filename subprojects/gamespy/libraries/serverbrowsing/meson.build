libdwcgsserverbrowsing_srcs = files(
    'asm/sb_crypt.s',
    'asm/sb_queryengine.s',
    'asm/sb_server.s',
    'asm/sb_serverbrowsing.s',
    'asm/sb_serverlist.s'
)

libdwcgsserverbrowsing = static_library('dwcgsserverbrowsing',
    sources: libdwcgsserverbrowsing_srcs,
    nasm_args: asm_args,
    include_directories: public_includes,
    pic: false
)

gamespy_libs += libdwcgsserverbrowsing
