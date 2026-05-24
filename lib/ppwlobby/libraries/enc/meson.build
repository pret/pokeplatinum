libdwcenc_srcs = files('src/dwc_encsession.c')

enc_c_args = [
    '-wrap:sdk', '2.0/sp2p3',
    '-nothumb'
]

libdwcenc = static_library('dwcenc',
    sources: libdwcenc_srcs,
    c_args: enc_c_args,
    include_directories: ppw_public_includes,
    dependencies: [nitrosdk_dep, nitrodwc_dep, nitrowifi_dep],
    pic: false
)

ppwlobby_libs += libdwcenc
