libfx_srcs = files(
    'src/fx_sincos.c',
    'src/fx_mtx22.c',
    'src/fx_mtx33.c',
    'src/fx_mtx43.c',
    'src/fx_mtx44.c',
    'src/fx_cp.c',
    'src/fx_vec.c',
    'src/fx_trig.c',
    'src/fx_atanidx.c',
    'src/fx.c' 
)

libfx = static_library('fx',
    sources: [libfx_srcs, fx_const_h],
    c_args: [c_args, sdk_args],
    include_directories: [public_includes],
    c_pch: nitro_pch,
    pic: false
)

nitrosdk_libs += libfx
