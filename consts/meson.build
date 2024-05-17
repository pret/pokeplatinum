consts_manifests = files(
    'battle.json',
    'global.json',
    'narc_files.json',
    'trainer.json',
    'sprites.json',
    'movement.json',
    'map.json',
)

gen_consts_root = meson.current_build_dir() / 'generated'
gen_c_consts_root = gen_consts_root / 'c'
gen_asm_consts_root = gen_consts_root / 'asm'
gen_py_consts_root = gen_consts_root / 'py'

generated_consts_c = custom_target('generated_consts_c',
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

generated_consts_py = custom_target('generated_consts_py',
    capture: true,
    output: 'generated_consts_py',
    input: consts_manifests,
    command: [
        constgen_py,
        '-f', '@INPUT@',
        '-r', gen_py_consts_root,
        '-l', 'py'
    ]
)
