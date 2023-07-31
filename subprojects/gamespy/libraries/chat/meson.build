libdwcgschat_srcs = files(
    'asm/chatcallbacks.s',
    'asm/chatchannel.s',
    'asm/chatcrypt.s',
    'asm/chathandlers.s',
    'asm/chatmain.s',
    'asm/chatsocket.s'
)

libdwcgschat = static_library('dwcgschat',
    sources: libdwcgschat_srcs,
    nasm_args: asm_args,
    include_directories: public_includes,
    pic: false
)

gamespy_libs += libdwcgschat
