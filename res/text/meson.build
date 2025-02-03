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
    'species_name.gmm',
    'species_name_with_articles.gmm',
    'species_pokedex_entry_fr.gmm',
    'species_pokedex_entry_de.gmm',
    'species_pokedex_entry_it.gmm',
    'species_pokedex_entry_es.gmm',
    'species_pokedex_entry_jp.gmm',
    'species_pokedex_entry_en.gmm',
    'species_weight.gmm',
    'species_weight_gira.gmm',
    'species_height.gmm',
    'species_height_gira.gmm',
    'species_category.gmm',
    'species_name_with_natdex_number_en.gmm',
    'species_name_with_natdex_number_fr.gmm',
    'species_name_with_natdex_number_de.gmm',
    'species_name_with_natdex_number_it.gmm',
    'species_name_with_natdex_number_es.gmm',
    'species_name_with_natdex_number_jp.gmm',
    'species_category_en.gmm',
    'species_category_fr.gmm',
    'species_category_de.gmm',
    'species_category_it.gmm',
    'species_category_es.gmm',
    'species_category_jp.gmm'
]

# This list will be what's used hereafter when referring to any-and-all generated banks.
generated_text_banks = species_text_bank_names

# 2. All other files must be static. Pull these from `generated/text_banks.txt`. This allows us
# to circumvent needing to build an NAIX, which reduces overall build depenedencies and speeds
# up compilation times when a user just wants to edit an *existing* text bank.
text_bank_consts = fs.read(text_banks_txt).splitlines()
text_bank_files = []
foreach text_bank : text_bank_consts
    text_bank_name = (text_bank.replace('TEXT_BANK_', '').to_lower() + '.gmm')
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

# 4. Generate individual text bank binaries from GMM files.
bank_header_target = meson.current_build_dir() / 'bank'
bank_header_dir = custom_target('bank_header_dir',
    capture: true,
    output: 'bank_header_dir',
    command: [
        'sh', '-c', 'mkdir -p ' + bank_header_target
    ]
)
gmm_to_bin_gen = generator(msgenc_exe,
    arguments: [
        '-e',
        '--gmm',
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
        '--output-dir', '@OUTDIR@'
    ],
    env: species_env,
    depend_files: [ species_data_files ],
)

text_bank_files += species_text_banks

text_banks = custom_target('pl_msg.narc',
    output: 'pl_msg.narc',
    input: gmm_to_bin_gen.process(text_bank_files),
    command: [
        narc_exe, 'create',
        '--order', text_banks_order,
        '--output', '@OUTPUT0@',
        '@PRIVATE_DIR@',
    ]
)

nitrofs_files += text_banks
