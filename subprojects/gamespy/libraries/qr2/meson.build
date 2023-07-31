libdwcgsqr2_srcs = files(
    'asm/qr2.s',
    'asm/qr2regkeys.s'
)

libdwcgsqr2 = static_library('dwcgsqr2',
    sources: libdwcgsqr2_srcs,
    nasm_args: asm_args,
    include_directories: public_includes,
    pic: false
)

gamespy_libs += libdwcgsqr2
