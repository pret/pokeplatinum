libssl_srcs = files(
    'asm/ssl.s',
    'asm/md5.s',
    'asm/sha1.s',
    'asm/arc4.s',
    'asm/biginteger.s'  
)

libssl = static_library('ssl',
    sources: libssl_srcs,
    c_args: [c_args, sdk_args],
    nasm_args: asm_args,
    include_directories: public_includes,
    pic: false
)

nitrowifi_libs += libssl
