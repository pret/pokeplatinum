libcps_srcs = files('asm/network.s')

libcps = static_library('cps',
    sources: libcps_srcs,
    c_args: [c_args, sdk_args],
    nasm_args: asm_args,
    include_directories: public_includes,
    pic: false
)

nitrowifi_libs += libcps