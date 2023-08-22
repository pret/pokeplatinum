libcard_srcs = files(
    'src/card_common.c',
    'src/card_spi.c',
    'src/card_backup.c',
    'src/card_rom.c',
    'src/card_request.c',
    'src/card_pullout.c',
)

libcard_internal_includes = include_directories('src/include')

libcard = static_library('card',
    sources: [libcard_srcs, fx_const_h],
    c_args: [c_args, sdk_args],
    include_directories: [public_includes, libcard_internal_includes],
    nasm_args: asm_args,
    c_pch: nitro_pch,
    pic: false
)

nitrosdk_libs += libcard
