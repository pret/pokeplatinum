pokedex_message_banks = custom_target('pokedex_message_banks',
    output: [
        'message_bank_species_names.gmm',
        'message_bank_species_names_with_articles.gmm',
        'message_bank_species_dex_entry.gmm',
        'message_bank_species_weight.gmm',
        'message_bank_species_weight_gira.gmm',
        'message_bank_species_height.gmm',
        'message_bank_species_height_gira.gmm',
        'message_bank_species_name_number_1.gmm',
        'message_bank_species_name_number_2.gmm',
        'message_bank_species_name_number_3.gmm',
        'message_bank_species_category.gmm'
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
