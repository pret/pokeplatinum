libdwcgsghttp_srcs = files(
    'asm/ghttpbuffer.s',
    'asm/ghttpcallbacks.s',
    'asm/ghttpcommon.s',
    'asm/ghttpconnection.s',
    'asm/ghttpmain.s',
    'asm/ghttppost.s',
    'asm/ghttpprocess.s'
)

libdwcgsghttp = static_library('dwcgsghttp',
    sources: libdwcgsghttp_srcs,
    nasm_args: asm_args,
    include_directories: public_includes,
    pic: false
)

gamespy_libs += libdwcgsghttp
