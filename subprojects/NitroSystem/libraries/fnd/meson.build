libnnsfnd_srcs = files(
    'src/list_nnsfnd.c',
    'src/heapcommon.c',
    'src/expheap.c',
    'src/frameheap.c',
    'src/unitheap.c',
    'src/allocator.c'
)

libnnsfnd_internal_includes = include_directories('src/include')

libnnsfnd = static_library('nnsfnd',
    sources: [libnnsfnd_srcs],
    c_args: [c_args, sdk_args],
    include_directories: [public_includes, libnnsfnd_internal_includes],
    c_pch: nitro_pch,
    dependencies: nitrosdk_dep,
    pic: false
)

nitrosystem_libs += libnnsfnd
