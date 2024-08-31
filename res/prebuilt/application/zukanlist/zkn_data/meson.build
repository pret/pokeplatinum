prebuilt_files = [
    'zukan_data_gira.narc',
    'zukan_enc_diamond.narc',
    'zukan_enc_pearl.narc',
    'zukan_enc_platinum.narc'
]

foreach f : prebuilt_files
    nitrofs_files += fs.copyfile(f)
endforeach

personal_files = []
sinnoh_pokedex = files('../../../../pokemon/sinnoh_pokedex.json')

# Generate NARCs
zukan_data_narc = custom_target('zukan_data.narc',
    output: 'zukan_data.narc',
    input: personal_files,
    env: json2bin_env,
    depends: [ py_consts_generators ],
    command: [
        make_zukan_data_py,
        '--knarc', knarc_exe,
        '--source-dir', '@CURRENT_SOURCE_DIR@',
        '--private-dir', '@PRIVATE_DIR@',
        '--output-dir', '@OUTDIR@',
        sinnoh_pokedex
    ]
)

nitrofs_files += zukan_data_narc
