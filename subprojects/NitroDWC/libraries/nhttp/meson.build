libdwcnhttp_srcs = files(
    'asm/nhttp_bgnend.s',
    'asm/nhttp_control.s',
    'asm/nhttp_list.s',
    'asm/nhttp_os_nitro.s',
    'asm/nhttp_recvbuf.s',
    'asm/nhttp_request.s',
    'asm/nhttp_resolve_nitro.s',
    'asm/nhttp_response.s',
    'asm/nhttp_socket_nitro.s',
    'asm/nhttp_stdlib_nitro.s',
    'asm/nhttp_thread.s',
    'asm/nhttp_token.s'
)

libdwcnhttp = static_library('dwcnhttp',
    sources: libdwcnhttp_srcs,
    nasm_args: asm_args,
    include_directories: public_includes,
    pic: false
)

nitrodwc_libs += libdwcnhttp
