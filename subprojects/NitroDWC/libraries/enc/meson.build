libdwcenc_srcs = files('asm/dwc_encsession.s')

libdwcenc = static_library('dwcenc',
    sources: libdwcenc_srcs,
    nasm_args: asm_args,
    include_directories: public_includes,
    pic: false
)

nitrodwc_libs += libdwcenc
