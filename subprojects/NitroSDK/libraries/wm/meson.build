libwm_srcs = files(
    'src/wm_system.c',
    'src/wm_sync.c',
    'src/wm_standard.c',
    'src/wm_mp.c',
    'src/wm_dcf.c',
    'src/wm_ds.c',
    'src/wm_ks.c',
    'src/wm_etc.c'
)

libwm_internal_includes = include_directories('src/include')

libwm = static_library('wm',
    sources: [libwm_srcs, fx_const_h],
    c_args: [c_args, sdk_args],
    nasm_args: asm_args,
    include_directories: [public_includes, libwm_internal_includes],
    c_pch: nitro_pch,
    pic: false
)

nitrosdk_libs += libwm
