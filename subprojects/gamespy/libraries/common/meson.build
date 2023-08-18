libdwcgscommon_srcs = files(
    'asm/available.s',
    'asm/darray.s',
    'asm/hashtable.s',
    'asm/md5c.s',
    'asm/nonport.s'
)

libdwcgscommon = static_library('dwcgscommon',
    sources: libdwcgscommon_srcs,
    nasm_args: asm_args,
    include_directories: public_includes,
    pic: false
)

gamespy_libs += libdwcgscommon
