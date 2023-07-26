libdgt_srcs = files(
    'asm/hash1.s',
    'asm/hash2.s',
    'asm/hmac.s',
    'asm/sha1s-arm4cw.s'
)

libdgt = static_library('dgt',
    sources: libdgt_srcs,
    c_args: [c_args, sdk_args],
    nasm_args: asm_args,
    include_directories: public_includes,
    pic: false
)

nitrosdk_libs += libdgt
