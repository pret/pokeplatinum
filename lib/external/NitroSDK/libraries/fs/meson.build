libfs_srcs = files(
    'src/fs_command.c',
    'src/fs_command_default.c',
    'src/fs_archive.c',
    'src/fs_file.c',
    'src/fs_rom.c',
    'src/fs_overlay.c'
)

libfs_internal_includes = include_directories('src/include')

libfs = static_library('fs',
    sources: [libfs_srcs, fx_const_h],
    c_args: [c_args, sdk_args],
    dependencies: msl_dep,
    include_directories: [public_includes, libfs_internal_includes],
    c_pch: nitro_pch,
    pic: false
)

nitrosdk_libs += libfs
