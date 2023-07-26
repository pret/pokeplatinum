libnnsgfd_srcs = files(
    'src/gfd_TexVramMan.c',
    'src/gfd_PlttVramMan.c',
    'src/gfd_FrameTexVramMan.c',
    'src/gfd_FramePlttVramMan.c',
    'src/gfd_VramTransferManager.c',
    'src/gfdi_LinkedListVramMan_Common.c',
    'src/gfd_LinkedListTexVramMan.c',
    'src/gfd_LinkedListPlttVramMan.c'
)

libnnsgfd_internal_includes = include_directories('src/include')

libnnsgfd = static_library('nnsgfd',
    sources: [libnnsgfd_srcs],
    c_args: [c_args, sdk_args],
    include_directories: [public_includes, libnnsgfd_internal_includes],
    c_pch: nitro_pch,
    dependencies: [msl_dep, nitrosdk_dep],
    pic: false
)

nitrosystem_libs += libnnsgfd
