pokedex_message_banks = custom_target('pokedex_message_banks',
    output: [
        'message_bank_species_names.gmm',
        'message_bank_species_names_with_articles.gmm',
        'message_bank_unk_0706.gmm',
        'message_bank_unk_0707.gmm',
        'message_bank_unk_0708.gmm',
        'message_bank_unk_0709.gmm',
        'message_bank_unk_0710.gmm',
        'message_bank_unk_0712.gmm',
        'message_bank_unk_0715.gmm',
        'message_bank_unk_0716.gmm',
        'message_bank_unk_0718.gmm'
    ],
    input: message_banks_narc_order,
    env: json2bin_env,
    depends: [ py_consts_generators ],
    command: [
        make_pokedex_message_banks_py,
        '--source-dir', '@CURRENT_SOURCE_DIR@',
        '--output-dir', '@OUTDIR@'
    ]
)
