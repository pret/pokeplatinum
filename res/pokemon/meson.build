# This build file contains all definitions for building filesystem archives
# and source code data tables related to Pokemon data. Specifically, it handles:
#   - Base Species Data:
#     - pl_personal - base stats, abilities, types, etc. for each species
#     - evo - evolution lines for each species
#     - wotbl - moves learned by-level for each species
#     - ppark - data related to the Catching Show for each species (e.g., where
#       the species will spawn, its points value, etc.)
#     - height - Y offsets applied to each species' front and back sprites
#     - pl_poke_data - Sprite animation sequences, frame data, and shadow sizes
#       applied to a species' front and back sprites
#     - tutorable_moves.h - a table of moves which can be tutored, including the
#       cost of each shard to tutor it and which tutor provides it; ordinarily,
#       this might be move-level data, but it is kept here for simplicity in
#       validating an individual species' learnset of tutorable moves.
#     - species_learnsets_by_tutor.h - a table of bitmasks for each species which
#       defines what tutorable moves they can learn.
#   - Graphics:
#     - pl_pokegra - front and back sprites for each species and gender
#     - pl_otherpoke - front and back sprites for alternate forms
#     - pl_poke_icon - party/box menu icons for each species and some alternate
#       forms
#   - Pokedex:
#     - footprint_data.h - a table of footprint sizes for each Pokemon, as used by
#       Dr. Footstep and the Pokedex
#     - shinzukan - Sinnoh-to-National Pokedex mappings
#     - pl_pokezukan - National-to-Sinnoh Pokedex mappings
#     - zukan_data - Pokedex information for each species

#######################
## SOURCE FILE LISTS ##
#######################
species_data_files = []
poke_icon_files = []
pokegra_files = []
otherpoke_index = {} # otherpoke uses a unique, non-uniform structure


# 1. These static files must always exist.
icons_shared = files(
    '.shared/pl_poke_icon.pal',
    '.shared/pl_poke_icon_anim_01.json',
    '.shared/pl_poke_icon_cell_01.json',
    '.shared/pl_poke_icon_anim_02.json',
    '.shared/pl_poke_icon_cell_02.json',
    '.shared/pl_poke_icon_anim_03.json',
    '.shared/pl_poke_icon_cell_03.json',
)

form_sprites_shared = files(
    '.shared/substitute_back.png',
    '.shared/substitute_front.png',
    '.shared/substitute.pal',
    '.shared/shadows.png',
    '.shared/shadows.pal',
)

sinnoh_pokedex = files('sinnoh_pokedex.json')
pl_growtbl_files = files('.shared/exp_tables.csv')

# 2. Register species and forms. The contents of each output file is a listing
#    of subdirectories which contains some assets that must be compiled.
species_consts = fs.read(species_txt).splitlines()
species_dirnames = []
foreach species : species_consts
  species_dirnames += species.replace('SPECIES_', '').to_lower()
endforeach

# This data file form_registry.json defines orderings of alternate forms in
# certain archives. Each species in the file is mapped to an object whose keys
# are the "names" of its alternate forms. Each form is then mapped to a type:
#   - data, which denotes that the form has separate data entries (e.g., in
#     pl_personal and wotbl)
#   - icon, which denotes that the form has a unique box/party menu icon
#   - sprite, which denotes that the form has a unique front and back sprite
# These types are hierarchical; data-type forms have unique icons and sprites,
# and icon-type forms have unique sprites. For example:
#   - Deoxys-Attack has a unique base stats file, party/menu icon, and sprite.
#   - Unown forms have unique party/menu icons and sprites, but not unique base
#     stats.
#   - Castform forms have only unique sprites.
form_registry = custom_target('form_registry',
    output: [
        'form_data.order',
        'form_icons.order',
        'form_sprites.order',
    ],
    input: files('form_registry.json'),
    command: [ ordergen_forms_py, '@INPUT@', '@OUTPUT0@', '@OUTPUT1@', '@OUTPUT2@' ],
)
form_data_order = form_registry[0]
form_icons_order = form_registry[1]
form_sprites_order = form_registry[2]


# 3. Walk species subdirectories; `species_dirnames` is the authority.
foreach species : species_dirnames
    subdir(species)
endforeach

# Stash the listing of species in an environment so that other processes can make
# use of it.
species_env = environment()
species_env.append('SPECIES', species_dirnames, separator: ';')


# Order of extra personal files for mon forms
# TODO: Move these into species directories after finishing the refactor
species_data_files += [
    deoxys_attack_personal,
    deoxys_defense_personal,
    deoxys_speed_personal,
    wormadam_sandy_personal,
    wormadam_trash_personal,
    giratina_origin_personal,
    shaymin_sky_personal,
    rotom_heat_personal,
    rotom_wash_personal,
    rotom_frost_personal,
    rotom_fan_personal,
    rotom_mow_personal
]

# The last icon added to the list before this should have been
# the basic egg icon.
poke_icon_files += [
    manaphy_egg_icon,
    deoxys_attack_icon,
    deoxys_defense_icon,
    deoxys_speed_icon,
    unown_a_icon,
    unown_b_icon,
    unown_c_icon,
    unown_d_icon,
    unown_e_icon,
    unown_f_icon,
    unown_g_icon,
    unown_h_icon,
    unown_i_icon,
    unown_j_icon,
    unown_k_icon,
    unown_l_icon,
    unown_m_icon,
    unown_n_icon,
    unown_o_icon,
    unown_p_icon,
    unown_q_icon,
    unown_r_icon,
    unown_s_icon,
    unown_t_icon,
    unown_u_icon,
    unown_v_icon,
    unown_w_icon,
    unown_x_icon,
    unown_y_icon,
    unown_z_icon,
    unown_exc_icon,
    unown_que_icon,
    burmy_sandy_icon,
    burmy_trash_icon,
    wormadam_sandy_icon,
    wormadam_trash_icon,
    shellos_east_sea_icon,
    gastrodon_east_sea_icon,
    giratina_origin_icon,
    shaymin_sky_icon,
    rotom_heat_icon,
    rotom_wash_icon,
    rotom_frost_icon,
    rotom_fan_icon,
    rotom_mow_icon,
]

otherpoke_files = []
num_keys = otherpoke_index.keys().length()
foreach key : range(num_keys)
    otherpoke_files += otherpoke_index.get(key.to_string())
endforeach


# 4. Compile assets. Compilers take registries as inputs and declare dependencies
#    on the actual source files. The former prevents command line bloat; the
#    latter maintains that compilation must reoccur when source files change.
datagen_species_out = custom_target('datagen_species_out',
    output: [
        'pl_personal.narc',
        'evo.narc',
        'wotbl.narc',
        'ppark.narc',
        'height.narc',
        'pl_poke_data.narc',
        'tutorable_moves.h',
        'species_learnsets_by_tutor.h',
    ],
    command: [
        datagen_species_exe,
        meson.current_build_dir(),
        meson.current_source_dir(),
        form_data_order,
        files('move_tutors.json'),
    ],
    env: species_env,
    depend_files: [
        species_data_files,
    ],
)
pl_personal_narc = datagen_species_out[0]
evo_narc = datagen_species_out[1]
wotbl_narc = datagen_species_out[2]
ppark_narc = datagen_species_out[3]
height_narc = datagen_species_out[4]
pl_poke_data_narc = datagen_species_out[5]
tutorable_moves_h = datagen_species_out[6]
species_learnsets_by_tutor_h = datagen_species_out[7]


# OLD NARCs
pl_poke_icon_narc = custom_target('pl_poke_icon.narc',
    output: 'pl_poke_icon.narc',
    input: [
        icons_shared,
        poke_icon_files
    ],
    command: [
        make_pl_poke_icon_py,
        '--nitrogfx', nitrogfx_exe,
        '--narc', narc_exe,
        '--shared-dir', '@CURRENT_SOURCE_DIR@/.shared',
        '--private-dir', '@PRIVATE_DIR@',
        '--output-dir', '@OUTDIR@',
        poke_icon_files
    ]
)

pl_pokegra_narc = custom_target('pl_pokegra.narc',
    output: 'pl_pokegra.narc',
    input: pokegra_files,
    command: [
        make_pl_pokegra_py,
        '--nitrogfx', nitrogfx_exe,
        '--narc', narc_exe,
        '--source-dir', '@CURRENT_SOURCE_DIR@',
        '--private-dir', '@PRIVATE_DIR@',
        '--output-dir', '@OUTDIR@',
        species_dirnames,
    ]
)

pl_otherpoke_narc = custom_target('pl_otherpoke.narc',
    output: 'pl_otherpoke.narc',
    input: [
        otherpoke_files,
        form_sprites_shared,
    ],
    command: [
        make_pl_otherpoke_py,
        '--nitrogfx', nitrogfx_exe,
        '--narc', narc_exe,
        '--private-dir', '@PRIVATE_DIR@',
        '--output-dir', '@OUTDIR@',
        '--sprite-entries', '154',
        '--palette-entries', '94',
        otherpoke_files,
        form_sprites_shared,
    ]
)

pl_pokezukan_narc = custom_target('pl_pokezukan.narc',
    output: 'pl_pokezukan.narc',
    input: species_data_files,
    env: json2bin_env,
    command: [
        make_pl_pokezukan_py,
        '--narc', narc_exe,
        '--source-dir', '@CURRENT_SOURCE_DIR@',
        '--private-dir', '@PRIVATE_DIR@',
        '--output-dir', '@OUTDIR@',
        sinnoh_pokedex
    ]
)

shinzukan_narc = custom_target('shinzukan.narc',
    output: 'shinzukan.narc',
    input: species_data_files,
    env: json2bin_env,
    command: [
        make_shinzukan_py,
        '--narc', narc_exe,
        '--source-dir', '@CURRENT_SOURCE_DIR@',
        '--private-dir', '@PRIVATE_DIR@',
        '--output-dir', '@OUTDIR@',
        sinnoh_pokedex
    ]
)

pl_growtbl_narc = custom_target('pl_growtbl.narc',
    output: 'pl_growtbl.narc',
    input: pl_growtbl_files,
    command: [
        make_pl_growtbl_py,
        '--narc', narc_exe,
        '--source-dir', '@CURRENT_SOURCE_DIR@',
        '--private-dir', '@PRIVATE_DIR@',
        '--output-dir', '@OUTDIR@',
        pl_growtbl_files
    ]
)

pokedex_data_srcs = files()
foreach pokemon : species_dirnames
    pokedex_data_srcs += files(pokemon / 'data.json')
endforeach

pokedex_data_narc = custom_target('zukan_data.narc',
    output: 'zukan_data.narc',
    input: pokedex_data_srcs,
    env: json2bin_env,
    depends: [ py_consts_generators ],
    command: [
        make_pokedex_data_py,
        '--narc', narc_exe,
        '--source-dir', '@CURRENT_SOURCE_DIR@',
        '--private-dir', '@PRIVATE_DIR@',
        '--output-dir', '@OUTDIR@',
        'giratina_origin',
        pokedex_data_srcs
    ]
)

pokedex_data_giratina_altered_narc = custom_target('zukan_data_gira.narc',
    output: 'zukan_data_gira.narc',
    input: pokedex_data_srcs,
    env: json2bin_env,
    depends: [ py_consts_generators ],
    command: [
        make_pokedex_data_py,
        '--narc', narc_exe,
        '--source-dir', '@CURRENT_SOURCE_DIR@',
        '--private-dir', '@PRIVATE_DIR@',
        '--output-dir', '@OUTDIR@',
        'giratina_altered',
        pokedex_data_srcs
    ]
)

species_header_target = meson.current_build_dir()

gen_species_headers = custom_target('gen_species_headers',
    output: [
        'footprint_data.h',
    ],
    input: species_data_files,
    env: json2bin_env,
    depends: [ py_consts_generators ],
    command: [
        make_species_tables_py,
        '--source-dir', '@CURRENT_SOURCE_DIR@',
        '--output-dir', species_header_target,
    ]
)

nitrofs_files += pl_personal_narc
nitrofs_files += evo_narc
nitrofs_files += wotbl_narc
nitrofs_files += ppark_narc
nitrofs_files += height_narc

nitrofs_files += pl_poke_icon_narc
nitrofs_files += pl_pokegra_narc
nitrofs_files += pl_otherpoke_narc
nitrofs_files += pl_poke_data_narc
nitrofs_files += pl_pokezukan_narc
nitrofs_files += shinzukan_narc
nitrofs_files += pl_growtbl_narc
nitrofs_files += pokedex_data_narc
nitrofs_files += pokedex_data_giratina_altered_narc
