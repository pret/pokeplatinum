project('libsyscall', ['c', 'nasm'])

build_target = get_option('build_target')

if(build_target == 'arm')
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
endif
