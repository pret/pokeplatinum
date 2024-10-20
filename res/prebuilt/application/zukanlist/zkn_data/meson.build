prebuilt_files = [
    'zukan_enc_diamond.narc',
    'zukan_enc_pearl.narc'
]

foreach f : prebuilt_files
    nitrofs_files += fs.copyfile(f)
endforeach

personal_files = []
pokemon_folder = meson.project_source_root() / 'res' / 'pokemon'
encounter_folder = meson.project_source_root() / 'res' / 'field' / 'encounters'

# Generate NARCs
pokedex_data_narc = custom_target('zukan_data.narc',
    output: 'zukan_data.narc',
    input: personal_files,
    env: json2bin_env,
    depends: [ py_consts_generators ],
    command: [
        make_pokedex_data_py,
        '--knarc', knarc_exe,
        '--source-dir', pokemon_folder,
        '--private-dir', '@PRIVATE_DIR@',
        '--output-dir', '@OUTDIR@',
        'giratina_origin'
    ]
)

pokedex_data_giratina_altered_narc = custom_target('zukan_data_gira.narc',
    output: 'zukan_data_gira.narc',
    input: personal_files,
    env: json2bin_env,
    depends: [ py_consts_generators ],
    command: [
        make_pokedex_data_py,
        '--knarc', knarc_exe,
        '--source-dir', pokemon_folder,
        '--private-dir', '@PRIVATE_DIR@',
        '--output-dir', '@OUTDIR@',
        'giratina_altered'
    ]
)

pokedex_enc_platinum_narc = custom_target('zukan_enc_platinum.narc',
    output: 'zukan_enc_platinum.narc',
    input: personal_files,
    env: json2bin_env,
    depends: [ py_consts_generators ],
    command: [
        make_pokedex_enc_platinum_py,
        '--knarc', knarc_exe,
        '--source-dir', encounter_folder,
        '--private-dir', '@PRIVATE_DIR@',
        '--output-dir', '@OUTDIR@'
    ]
)

nitrofs_files += pokedex_data_narc
nitrofs_files += pokedex_data_giratina_altered_narc
nitrofs_files += pokedex_enc_platinum_narc
