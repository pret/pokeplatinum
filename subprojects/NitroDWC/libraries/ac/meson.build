libdwcac_srcs = files(
    'asm/dwc_ac.s',
    'asm/beacon.s',
    'asm/callback.s',
    'asm/connect.s',
    'asm/close.s',
    'asm/error.s',
    'asm/makelist.s',
    'asm/retry.s',
    'asm/search_dwcac.s',
    'asm/start.s',
    'asm/test.s',
    'asm/shop_usb.s',
    'asm/wds.s',
    'asm/nintendospot.s'
)

libdwcac = static_library('dwcac',
    sources: libdwcac_srcs,
    nasm_args: asm_args,
    include_directories: public_includes,
    pic: false
)

nitrodwc_libs += libdwcac
