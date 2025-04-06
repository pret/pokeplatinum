lighting_txt_gen = generator(
    lighting_py,
    arguments: [ '@INPUT@', '@OUTPUT@', '@EXTRA_ARGS@', ],
    output: '@BASENAME@',
    depends: [ py_consts_generators ],
)

lighting_data_srcs = lighting_txt_gen.process(files(
    'lighting_set_000.json',
    'lighting_set_002.json'),
    env: jsoncnv_env,
)

lighting_data_newline_srcs = lighting_txt_gen.process(files(
    'lighting_set_001.json',
    'lighting_set_003.json'),
    env: jsoncnv_env,
    extra_args: [
        '--eofnewline',
    ],
)

lighting_data_order = files('lighting_sets.order')

lighting_narc = custom_target('lighting.narc',
    output: [
        'lighting.narc',
        'lighting.naix',
    ],
    input: [
        lighting_data_srcs,
        lighting_data_newline_srcs,
        lighting_data_order
    ],
    depends: [ py_consts_generators ],
    command: [
        narc_exe, 'create',
        '--naix',
        '--order', lighting_data_order,
        '--output', '@OUTPUT0@',
        '@PRIVATE_DIR@',
    ]
)

nitrofs_files += lighting_narc
