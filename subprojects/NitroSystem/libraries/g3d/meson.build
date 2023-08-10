libnnsg3d_srcs = [
    'src/kernel.c',
    'src/glbstate.c',
    'src/anm.c',
    'src/cgtool.c',
    'src/sbc.c',
    'src/1mat1shp.c',
    'src/gecom.c',
    'src/util_nnsg3d.c',
    'src/mem_nnsg3d.c',
    'src/model.c',
    'src/binres/res_struct_accessor.c',
    'src/binres/res_struct_accessor_anm.c',
    'asm/nsbca.s',
    'src/anm/nsbma.c',
    'src/anm/nsbta.c',
    'src/anm/nsbtp.c',
    'src/anm/nsbva.c',
    'src/cgtool/basic.c',
    'src/cgtool/maya.c',
    'src/cgtool/si3d.c',
    'src/cgtool/3dsmax.c',
    'src/cgtool/xsi.c'
]

libnnsg3d_internal_includes = include_directories('src/binres')

libnnsg3d = static_library('nnsg3d',
    sources: libnnsg3d_srcs,
    c_args: [c_args, sdk_args],
    nasm_args: asm_args,
    include_directories: [public_includes, libnnsg3d_internal_includes],
    c_pch: nitro_pch,
    dependencies: nitrosdk_dep,
    pic: false
)

nitrosystem_libs += libnnsg3d
