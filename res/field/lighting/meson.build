lighting_txt_gen = generator(
    lighting_py,
    arguments: [ '@INPUT@', '@OUTPUT@', '@EXTRA_ARGS@', ],
    output: '@BASENAME@'
)

lighting_data_srcs = lighting_txt_gen.process(files(
    'lighting_set_000.json',
    'lighting_set_002.json'
))

lighting_data_newline_srcs = lighting_txt_gen.process(files(
    'lighting_set_001.json',
    'lighting_set_003.json'),
    extra_args: [
        '--eofnewline',
    ],
)

lighting_data_order = files('lighting_sets.order')

lighting_narc = custom_target('arealight.narc',
    output: [
        'arealight.narc',
        'arealight.naix',
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
