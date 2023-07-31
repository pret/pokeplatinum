libdwcgsgp_srcs = files(
    'asm/gp.s',
    'asm/gpi.s',
    'asm/gpibuddy.s',
    'asm/gpibuffer.s',
    'asm/gpicallback.s',
    'asm/gpiconnect.s',
    'asm/gpiinfo.s',
    'asm/gpioperation.s',
    'asm/gpipeer.s',
    'asm/gpiprofile.s',
    'asm/gpisearch.s',
    'asm/gpitransfer.s',
    'asm/gpiunique.s',
    'asm/gpiutility.s'
)

libdwcgsgp = static_library('dwcgsgp',
    sources: libdwcgsgp_srcs,
    nasm_args: asm_args,
    include_directories: public_includes,
    pic: false
)

gamespy_libs += libdwcgsgp
