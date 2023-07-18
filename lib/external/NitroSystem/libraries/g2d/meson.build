libnnsg2d_srcs = files(
    'src/load/g2d_NAN_load.c',
    'src/load/g2d_NOB_load.c',
    'src/load/g2d_NMC_load.c',
    'src/load/g2d_NCG_load.c',
    'src/load/g2d_NCL_load.c',
    'src/load/g2d_NSC_load.c',
    'src/load/g2d_Load.c',
    'src/g2d_Softsprite.c',
    'src/g2d_Animation.c',
    'src/g2d_OAM.c',
    'src/g2d_PaletteTable.c',
    'src/g2d_Image.c',
    'src/g2d_SRTControl.c',
    'src/g2d_Node.c',
    'src/g2d_CellAnimation.c',
    'src/g2d_MultiCellAnimation.c',
    'src/g2d_Renderer.c',
    'src/internal/g2di_Mtx32.c',
    'src/g2d_CellTransferManager.c',
    'src/g2d_OamSoftwareSpriteDraw.c',
    'src/g2d_RendererCore.c',
    'src/g2d_Font.c',
    'src/g2d_CharCanvas.c',
    'src/g2d_TextCanvas.c',
    'src/load/g2d_NFT_load.c',
    'src/internal/g2di_BitReader.c',
    'src/internal/g2di_SplitChar.c'
)

libnnsg2d_internal_includes = include_directories('src/include')

libnnsg2d = static_library('nnsg2d',
    sources: [libnnsg2d_srcs],
    c_args: [c_args, sdk_args],
    include_directories: [public_includes, libnnsg2d_internal_includes],
    c_pch: nitro_pch,
    dependencies: [msl_dep, nitrosdk_dep],
    pic: false
)

nitrosystem_libs += libnnsg2d
