libmb_srcs = files(
    'src/mb_parent.c',
    'src/mb_fileinfo.c',
    'src/mb_common.c',
    'src/mb_gameinfo.c',
    'src/mb_wm_base.c',
    'src/mb_cache.c',
    'src/mb_task.c',
    'src/mb_block.c'
)

libmb_internal_includes = include_directories('src/include')

libmb = static_library('mb',
    sources: [libmb_srcs, fx_const_h],
    c_args: [c_args, sdk_args],
    dependencies: msl_dep,
    include_directories: [public_includes, libmb_internal_includes],
    c_pch: nitro_pch,
    pic: false
)

nitrosdk_libs += libmb
