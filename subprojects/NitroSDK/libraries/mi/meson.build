libmi_srcs = files(
    'src/mi_wram.c',
    'src/mi_dma.c',
    'src/mi_dma_hblank.c',
    'src/mi_dma_gxcommand.c',
    'src/mi_memory.c',
    'src/mi_swap.c',
    'src/mi_uncompress.c',
    'src/mi_dma_card.c',
    'src/mi_init.c'
)

libmi_internal_includes = include_directories('src/include')

libmi = static_library('mi',
    sources: [libmi_srcs, fx_const_h],
    c_args: [c_args, sdk_args],
    include_directories: [public_includes, libmi_internal_includes],
    c_pch: nitro_pch,
    pic: false
)

nitrosdk_libs += libmi
