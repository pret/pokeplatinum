libdwcgsgstats_asm = files(
    'asm/gbucket.s',
    'asm/gstats.s'
)

libdwcgsgstats = static_library('dwcgsgstats',
    sources: libdwcgsgstats_asm,
    nasm_args: asm_args,
    include_directories: public_includes,
    pic: false
)

gamespy_libs += libdwcgsgstats
