consts_manifest_basenames = [
    'abilities',
    'battle',
    'battle_subscripts',
    'btlcmd',
    'game_records',
    'gender',
    'items',
    'map',
    'movement',
    'moves',
    'pokemon',
    'poketch',
    'scrcmd',
    'sdat',
    'shadows',
    'species',
    'tm_learnset',
    'trainer',
    'trainer_ai',
]

generated_consts_root = meson.current_build_dir()
consts_manifests = []
generated_c_headers = []
generated_asm_headers = []
generated_py_headers = []

c_consts_generators = []
asm_consts_generators = []
py_consts_generators = []

foreach basename : consts_manifest_basenames
    manifest = basename + '.json'
    c_header = basename + '.h'
    asm_header = basename + '.inc'
    py_header = basename + '.py'

    c_consts_generators += custom_target(
        input: manifest,
        output: c_header,
        command: [
            constgen_py,
            '--file', '@INPUT@',
            '--root', generated_consts_root,
            '--lang', 'c'
        ]
    )

    asm_consts_generators += custom_target(
        input: manifest,
        output: asm_header,
        command: [
            constgen_py,
            '--file', '@INPUT@',
            '--root', generated_consts_root,
            '--lang', 'asm'
        ]
    )

    py_consts_generators += custom_target(
        input: manifest,
        output: py_header,
        command: [
            constgen_py,
            '--file', '@INPUT@',
            '--root', generated_consts_root,
            '--lang', 'py'
        ]
    )
endforeach

