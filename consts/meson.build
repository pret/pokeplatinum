consts_manifests = files(
    'battle.json',
    'global.json',
    'narc_files.json',
    'trainer_ai.json',
)

gen_consts_root = meson.current_build_dir() / 'generated'
gen_c_consts_root = gen_consts_root / 'c'
gen_asm_consts_root = gen_consts_root / 'asm'

custom_target('generated_consts_c',
    build_by_default: true,
    capture: true,
    output: 'generated_consts_c',
    input: consts_manifests,
    command: [
        constgen_py,
        '-f', '@INPUT@',
        '-r', gen_c_consts_root,
        '-l', 'c'
    ]
)

generated_consts_asm = custom_target('generated_consts_asm',
    build_by_default: true,
    capture: true,
    output: 'generated_consts_asm',
    input: consts_manifests,
    command: [
        constgen_py,
        '-f', '@INPUT@',
        '-r', gen_asm_consts_root,
        '-l', 'asm'
    ]
)
