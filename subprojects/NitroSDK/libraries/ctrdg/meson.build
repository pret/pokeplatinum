libctrdg_srcs = files(
    'src/ctrdg.c',
    'src/ctrdg_proc.c',
    'src/ctrdg_backup.c',
    'src/ctrdg_flash_common.c',
    'src/ctrdg_flash_AT29LV512.c',
    'src/ctrdg_flash_LE26FV10N1TS-10.c',
    'src/ctrdg_flash_LE39FW512.c',
    'src/ctrdg_flash_MX29L010.c',
    'src/ctrdg_flash_MX29L512.c',
    'src/ctrdg_sram.c',
    'src/ctrdg_task.c'
)

libctrdg_internal_includes = include_directories('src/include')

libctrdg = static_library('ctrdg',
    sources: [libctrdg_srcs, fx_const_h],
    c_args: [c_args, sdk_args],
    include_directories: [public_includes, libctrdg_internal_includes],
    c_pch: nitro_pch,
    pic: false
)

nitrosdk_libs += libctrdg
