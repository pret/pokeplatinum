project('libsyscall', ['c', 'nasm'])

asm_args = [
    '-proc', 'arm5TE',
    '-16',
    '-gccinc'
]

libsyscall = static_library('syscall',
    sources: 'asm/_secure.s',
    nasm_args: asm_args,
    pic: false
)

libsyscall_dep = declare_dependency(
    link_with: libsyscall
)

meson.override_dependency('libsyscall', libsyscall_dep)
