libgx_srcs = files(
    'src/gx.c',
    'src/gxstate.c',
    'src/gx_vramcnt.c',
    'src/gx_bgcnt.c',
    'src/g2.c',
    'src/g3b.c',
    'src/g3imm.c',
    'src/g3x.c',
    'src/g3_util.c',
    'src/gx_load2d.c',
    'src/gx_load3d.c',
    'src/g3.c',
    'src/gxasm.c'
)

libgx_internal_includes = include_directories('src/include')

libgx = static_library('gx',
    sources: [libgx_srcs, fx_const_h],
    c_args: [c_args, sdk_args],
    include_directories: [public_includes, libgx_internal_includes],
    c_pch: nitro_pch,
    pic: false
)

nitrosdk_libs += libgx
