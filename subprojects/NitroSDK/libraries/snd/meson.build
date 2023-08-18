libsnd_srcs = files(
    'src/snd_interface.c',
    'src/snd_main.c',
    'src/snd_command.c',
    'src/snd_alarm.c',
    'src/snd_work.c',
    'src/snd_util.c',
    'src/snd_bank.c'
)

libsnd = static_library('snd',
    sources: [libsnd_srcs, fx_const_h],
    c_args: [c_args, sdk_args],
    include_directories: [public_includes],
    c_pch: nitro_pch,
    pic: false
)

nitrosdk_libs += libsnd
