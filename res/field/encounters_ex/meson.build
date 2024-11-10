endata_ex_srcs = files(
    'mt_coronet_lake.json',
    'honey_tree_common.json',
    'honey_tree_uncommon.json',
    'honey_tree_rare.json',
    'trophy_garden_dailies.json',
    'great_marsh_dailies_natdex.json',
    'great_marsh_dailies.json',
    'great_marsh_binocular_coords.json',
)

encdata_ex_narc = custom_target('encdata_ex.narc',
    output: 'encdata_ex.narc',
    input: endata_ex_srcs,
    env: json2bin_env,
    depends: [ py_consts_generators ],
    command: [
        make_encdata_ex_py,
        '--knarc', knarc_exe,
        '--source-dir', '@CURRENT_SOURCE_DIR@',
        '--private-dir', '@PRIVATE_DIR@',
        '--output-dir', '@OUTDIR@'
    ]
)

nitrofs_files += encdata_ex_narc