libdwcbm_srcs = files(
    'asm/dwc_backup.s',
    'asm/dwc_bm_init.s',
    'asm/util_wifiidtool.s'
)

libdwcbm = static_library('dwcbm',
    sources: libdwcbm_srcs,
    nasm_args: asm_args,
    include_directories: public_includes,
    pic: false
)

nitrodwc_libs += libdwcbm
