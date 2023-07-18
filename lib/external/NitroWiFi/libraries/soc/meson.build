libsoc_srcs = files(
    'src/socl_startup.c',
    'src/socl_command.c',
    'src/socl_create.c',
    'src/socl_listen_accept.c',
    'src/socl_bind.c',
    'src/socl_read.c',
    'src/socl_write.c',
    'src/socl_shutdown.c',
    'src/socl_close.c',
    'src/socl_cleanup.c',
    'src/socl_resolve.c',
    'src/socl_poll.c',
    'src/socl_const.c',
    'src/socl_misc.c',
    'src/socl_list.c',
    'src/soc.c',
    'src/socl_ssl.c'
)

libsoc_internal_includes = [include_directories('src/include'), include_directories('../wcm/src/include')]

libsoc = static_library('soc',
    sources: [libsoc_srcs],
    c_args: [c_args, sdk_args],
    include_directories: [public_includes, libsoc_internal_includes],
    dependencies: [msl_dep, nitrosdk_dep],
    c_pch: nitro_pch,
    pic: false
)

nitrowifi_libs += libsoc
