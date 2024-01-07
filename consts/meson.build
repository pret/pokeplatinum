consts_manifests = files(
    'battle.json'
)

gen_consts_includes = include_directories('.')

gen_consts_root = meson.current_build_dir() / 'generated'
gen_c_consts_root = gen_consts_root / 'c'
gen_asm_consts_root = gen_consts_root / 'asm'

generated_c_consts = custom_target('gen_c_consts',
    build_by_default: true,
    capture: true,
    output: 'gen_c_consts',
    input: consts_manifests,
    command: [
        constgen_py,
        '-f', '@INPUT@',
        '-r', gen_c_consts_root,
        '-l', 'c'
    ]
)
