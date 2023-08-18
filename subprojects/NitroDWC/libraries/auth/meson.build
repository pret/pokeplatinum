libdwcauth_srcs = files(
    'asm/dwc_auth.s',
    'asm/dwc_cal.s',
    'asm/dwc_http.s',
    'asm/dwc_netcheck.s',
    'asm/dwc_nastime.s',
    'asm/dwc_svl.s',
    'asm/util_base64.s',
    'asm/dwc_ca_cybertrust.s',
    'asm/dwc_ca_nas_self.s',
    'asm/dwc_ca_thawte_premiumserver.s',
    'asm/dwc_ca_thawte_server.s',
    'asm/dwc_ca_verisign.s',
    'asm/dwc_ca_globalsign.s'
)

libdwcauth = static_library('dwcauth',
    sources: libdwcauth_srcs,
    nasm_args: asm_args,
    include_directories: public_includes,
    pic: false
)

nitrodwc_libs += libdwcauth
