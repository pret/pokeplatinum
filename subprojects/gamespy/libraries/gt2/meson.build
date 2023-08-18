libdwcgsgt2_srcs = files(
    'asm/gt2auth.s',
    'asm/gt2buffer.s',
    'asm/gt2callback.s',
    'asm/gt2connection.s',
    'asm/gt2main.s',
    'asm/gt2message.s',
    'asm/gt2socket.s',
    'asm/gt2utility.s'
)

libdwcgsgt2 = static_library('dwcgsgt2',
    sources: libdwcgsgt2_srcs,
    nasm_args: asm_args,
    include_directories: public_includes,
    pic: false
)

gamespy_libs += libdwcgsgt2
