libnnssnd_srcs = files(
    'src/main_nnssnd.c',
    'src/resource_mgr.c',
    'src/waveout.c',
    'src/player.c',
    'src/stream_nnssnd.c',
    'src/capture.c',
    'src/sndarc.c',
    'src/heap_nnssnd.c',
    'src/sndarc_loader.c',
    'src/sndarc_player.c',
    'src/sndarc_stream.c',
    'src/seqdata.c',
    'src/fader.c'
)

libnnssnd = static_library('nnssnd',
    sources: [libnnssnd_srcs],
    c_args: [c_args, sdk_args],
    include_directories: [public_includes],
    c_pch: nitro_pch,
    dependencies: nitrosdk_dep,
    pic: false
)

nitrosystem_libs += libnnssnd
