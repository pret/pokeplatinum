# This build file contains all definitions for building the filesystem archive which contains all
# in-game text. In effect, the archive can be imagined as a two-dimensional array of non-
# uniform arrays of strings; the archive itself contains "banks", and each bank contains strings.
# The exact files that are processed is controlled by `generated/text_banks.txt`, which serves as
# the authority on mapping the in-repo filename of each bank and the index of that bank within the
# archive. All text bank files to be processed *must* have a name which *matches* their
# corresponding entry in `generated/text_banks.txt`, minus the `TEXT_BANK_` prefix. For example,
# `TEXT_BANK_SPECIES_NAME` corresponds to a file named `species_name`.

# 1. Declare a set of files which are known to be generated. As with all other text banks, these
# *must* have names which match the values in `generated/text_banks.txt`, minus the `TEXT_BANK_`
# prefix, and in lower-case.
species_text_bank_names = [
    'species_name.json',
    'species_name_with_articles.json',
    'species_pokedex_entry_fr.json',
    'species_pokedex_entry_de.json',
    'species_pokedex_entry_it.json',
    'species_pokedex_entry_es.json',
    'species_pokedex_entry_jp.json',
    'species_pokedex_entry_en.json',
    'species_weight.json',
    'species_weight_gira.json',
    'species_height.json',
    'species_height_gira.json',
    'species_category.json',
    'species_name_with_natdex_number_en.json',
    'species_name_with_natdex_number_fr.json',
    'species_name_with_natdex_number_de.json',
    'species_name_with_natdex_number_it.json',
    'species_name_with_natdex_number_es.json',
    'species_name_with_natdex_number_jp.json',
    'species_category_en.json',
    'species_category_fr.json',
    'species_category_de.json',
    'species_category_it.json',
    'species_category_es.json',
    'species_category_jp.json'
]

trainer_text_bank_names = [
    'npc_trainer_messages.json',
    'npc_trainer_names.json'
]

frontier_text_bank_names = [
    'frontier_trainer_messages.json',
    'frontier_trainer_names.json'
]

town_map_text_bank_name = [
    'town_map.json'
]

# This list will be what's used hereafter when referring to any-and-all generated banks.
generated_text_banks = [
    species_text_bank_names,
    trainer_text_bank_names,
    frontier_text_bank_names,
    town_map_text_bank_name,
]

# 2. All other files must be static. Pull these from `generated/text_banks.txt`. This allows us
# to circumvent needing to build an NAIX, which reduces overall build depenedencies and speeds
# up compilation times when a user just wants to edit an *existing* text bank.
text_bank_consts = fs.read(text_banks_txt).splitlines()
text_bank_files = []
foreach text_bank : text_bank_consts
    text_bank_name = (text_bank.replace('TEXT_BANK_', '').to_lower() + '.json')
    if not generated_text_banks.contains(text_bank_name)
        text_bank_files += files(text_bank_name)
    endif
endforeach

# 3. Generate the ordering for `pl_msg.narc` from `generated/text_banks.txt`.
text_banks_order = custom_target('text_banks.order',
    output: 'text_banks.order',
    input: text_banks_txt,
    command: [ ordergen_text_banks_py, '@INPUT@', '@OUTPUT@' ],
)

# 4. Generate individual text bank binaries from JSON files.
bank_header_target = fs.relative_to(meson.current_build_dir() / 'bank', meson.project_build_root())
bank_header_dir = custom_target('bank_header_dir',
    capture: true,
    output: 'bank_header_dir',
    command: [
        'sh', '-c', 'mkdir -p ' + bank_header_target
    ]
)
json_to_bin_gen = generator(msgenc_exe,
    arguments: [
        '-e',
        '--json',
        '-c', charmap_txt.full_path(),
        '-H', bank_header_target / '@BASENAME@' + '.h',
        '@INPUT@',
        '@OUTPUT@'
    ],
    depends: [ charmap_txt, bank_header_dir ],
    output: '@BASENAME@'
)

# 5. Set up targets which build generated text banks and build the final NARC.
species_text_banks = custom_target('species_text_banks',
    output: species_text_bank_names,
    command: [
        make_species_text_banks_py,
        '--source-dir', pokemon_data_root,
        '--output-dir', '@OUTDIR@',
        '--format', 'json',
    ],
    env: species_env,
    depend_files: [ species_data_files ],
)

text_bank_files += species_text_banks

trainer_text_banks = custom_target('trainer_text_banks',
    output: trainer_text_bank_names,
    command: [
        'cp',
        '@OUTDIR@/../trainers/npc_trainer_messages.json',
        '@OUTDIR@/../trainers/npc_trainer_names.json',
        '@OUTDIR@',
    ],
    env: trainer_env,
    depends: [ datagen_trainer_out ],
)

text_bank_files += trainer_text_banks

frontier_text_banks = custom_target('frontier_text_banks',
    output: frontier_text_bank_names,
    command: [
        'cp',
        '@OUTDIR@/../trainers/frontier/frontier_trainer_messages.json',
        '@OUTDIR@/../trainers/frontier/frontier_trainer_names.json',
        '@OUTDIR@',
    ],
    env: trainer_env,
    depends: [ datagen_frontier_out ],
)

text_bank_files += frontier_text_banks

town_map_text_bank = custom_target('town_map_text_bank',
    output: town_map_text_bank_name,
    command: [
        'cp',
        '@OUTDIR@/../town_map/town_map.json',
        '@OUTDIR@'
    ],
    depends: [ town_map_data ]
)

text_bank_files += town_map_text_bank

text_banks = custom_target('pl_msg.narc',
    output: 'pl_msg.narc',
    input: json_to_bin_gen.process(text_bank_files),
    command: [
        nitroarc_exe,
        '--create',
        '--index',
        '--files-from', text_banks_order,
        '--file', '@OUTPUT0@',
        '@PRIVATE_DIR@',
    ],
)

nitrofs_files += text_banks
