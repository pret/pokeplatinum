libdwcnd_srcs = files(
    'asm/dwci_nd_ca_nasself.s',
    'asm/dwci_nd_attr.s',
    'asm/dwci_nd_base64.s',
    'asm/dwci_nd_bgnend.s',
    'asm/dwci_nd_cancel.s',
    'asm/dwci_nd_dwc_nitro.s',
    'asm/dwci_nd_fileapi.s',
    'asm/dwci_nd_filecount.s',
    'asm/dwci_nd_fileget.s',
    'asm/dwci_nd_filelist.s',
    'asm/dwci_nd_os_nitro.s',
    'asm/dwci_nd_stdlib_nitro.s',
    'asm/dwci_nd_string.s'    
)

libdwcnd = static_library('dwcnd',
    sources: libdwcnd_srcs,
    nasm_args: asm_args,
    include_directories: public_includes,
    pic: false
)

nitrodwc_libs += libdwcnd
