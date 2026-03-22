# The JSON files in this directory define sprite-templates to be fed to
# tools/dataproc/src/resdatproc. The header-file output by that program may
# be used in ROM code to refer to individual templates in a template-set.

party_menu_resdat = custom_target('party_menu_resdat',
    output: [
        'party_menu_chars.resdat',
        'party_menu_pltts.resdat',
        'party_menu_cells.resdat',
        'party_menu_anims.resdat',
        'party_menu.cldat',
        'party_menu.h',
    ],

    input: [
        party_menu_narc[1],
        pokemon_summary_screen_narc[1],
        pl_poke_icon_narc[1],
        bag_graphics_narc[1],
    ],

    command: [
        resdatproc_exe,
        '-D', 'NARC_INDEX_GRAPHIC__PL_PLIST_GRA:@INPUT0@',
        '-D', 'NARC_INDEX_GRAPHIC__PL_PST_GRA:@INPUT1@',
        '-D', 'NARC_INDEX_POKETOOL__ICONGRA__PL_POKE_ICON:@INPUT2@',
        '-D', 'NARC_INDEX_GRAPHIC__PL_BAG_GRA:@INPUT3@',
        '-p', 'party_menu',
        '-M', '@DEPFILE@',
        '-N',
        '-o', meson.current_build_dir(),
        files('party_menu.json'),
    ],

    depfile: 'party_menu_resdat.d',
)

poffin_case_resdat = custom_target('poffin_case_resdat',
    output: [
        'poffin_case_chars.resdat',
        'poffin_case_pltts.resdat',
        'poffin_case_cells.resdat',
        'poffin_case_anims.resdat',
        'poffin_case.cldat',
        'poffin_case.h',
    ],

    input: [ poffin_case_narc[1] ],

    command: [
        resdatproc_exe,
        '-D', 'NARC_INDEX_GRAPHIC__PORU_GRA:@INPUT0@',
        '-p', 'poffin_case',
        '-M', '@DEPFILE@',
        '-N',
        '-o', meson.current_build_dir(),
        files('poffin_case.json'),
    ],

    depfile: 'poffin_case_resdat.d',
)

pokemon_summary_screen_resdat = custom_target('pokemon_summary_screen_resdat',
    output: [
        'pokemon_summary_screen_chars.resdat',
        'pokemon_summary_screen_pltts.resdat',
        'pokemon_summary_screen_cells.resdat',
        'pokemon_summary_screen_anims.resdat',
        'pokemon_summary_screen.cldat',
        'pokemon_summary_screen.h',
    ],

    input: [
        pokemon_summary_screen_narc[1],
        battle_sprites_narc[1],
        pl_poke_icon_narc[1],
        bag_graphics_narc[1],
        party_menu_narc[1],
    ],

    command: [
        resdatproc_exe,
        '-D', 'NARC_INDEX_GRAPHIC__PL_PST_GRA:@INPUT0@',
        '-D', 'NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ:@INPUT1@',
        '-D', 'NARC_INDEX_POKETOOL__ICONGRA__PL_POKE_ICON:@INPUT2@',
        '-D', 'NARC_INDEX_GRAPHIC__PL_BAG_GRA:@INPUT3@',
        '-D', 'NARC_INDEX_GRAPHIC__PL_PLIST_GRA:@INPUT4@',
        '-M', '@DEPFILE@',
        '-p', 'pokemon_summary_screen',
        '-N',
        '-o', meson.current_build_dir(),
        files('pokemon_summary_screen.json'),
    ],

    depfile: 'pokemon_summary_screen_resdat.d',
)

shop_menu_resdat = custom_target('shop_menu_resdat',
    output: [
        'shop_menu_chars.resdat',
        'shop_menu_pltts.resdat',
        'shop_menu_cells.resdat',
        'shop_menu_anims.resdat',
        'shop_menu.cldat',
        'shop_menu.h',
    ],

    input: [ shop_gra_narc[1], item_icon_narc[1] ],

    command: [
        resdatproc_exe,
        '-D', 'NARC_INDEX_GRAPHIC__SHOP_GRA:@INPUT0@',
        '-D', 'NARC_INDEX_ITEMTOOL__ITEMDATA__ITEM_ICON:@INPUT1@',
        '-p', 'shop_menu',
        '-M', '@DEPFILE@',
        '-N',
        '-o', meson.current_build_dir(),
        files('shop_menu.json'),
    ],

    depfile: 'shop_menu_resdat.d',
)

tower_records_resdat = custom_target('tower_records_resdat',
    output: [
        'tower_records_chars.resdat',
        'tower_records_pltts.resdat',
        'tower_records_cells.resdat',
        'tower_records_anims.resdat',
        'tower_records.cldat',
        'tower_records.h',
    ],

    input: [ tower_records_narc[1] ],

    command: [
        resdatproc_exe,
        '-D', 'NARC_INDEX_GRAPHIC__BTOWER:@INPUT0@',
        '-M', '@DEPFILE@',
        '-p', 'tower_records',
        '-N',
        '-o', meson.current_build_dir(),
        files('tower_records.json'),
    ],

    depfile: 'tower_records_resdat.d',
)

town_map_resdat = custom_target('town_map_resdat',
    output: [
        'town_map_chars.resdat',
        'town_map_pltts.resdat',
        'town_map_cells.resdat',
        'town_map_anims.resdat',
        'town_map.cldat',
        'town_map.h',
    ],

    input: [ town_map_graphics_narc[1] ],

    command: [
        resdatproc_exe,
        '-D', 'NARC_INDEX_GRAPHIC__TMAP_GRA:@INPUT0@',
        '-M', '@DEPFILE@',
        '-p', 'town_map',
        '-N',
        '-o', meson.current_build_dir(),
        files('town_map.json'),
    ],

    depfile: 'town_map_resdat.d',
)

underground_map_transition_resdat = custom_target('underground_map_transition_resdat',
    output: [
        'underground_map_transition_chars.resdat',
        'underground_map_transition_pltts.resdat',
        'underground_map_transition_cells.resdat',
        'underground_map_transition_anims.resdat',
        'underground_map_transition.cldat',
        'underground_map_transition.h',
    ],

    input: [ underground_map_transition_narc[1] ],

    command: [
        resdatproc_exe,
        '-D', 'NARC_INDEX_DATA__UGEFFECT_OBJ_GRAPHIC:@INPUT0@',
        '-M', '@DEPFILE@',
        '-p', 'underground_map_transition',
        '-N',
        '-o', meson.current_build_dir(),
        files('underground_map_transition.json'),
    ],

    depfile: 'underground_map_transition_resdat.d',
)

underground_map_transition_dawn_resdat = custom_target('underground_map_transition_dawn_resdat',
    output: [
        'underground_map_transition_dawn_chars.resdat',
        'underground_map_transition_dawn_pltts.resdat',
    ],

    input: [ underground_map_transition_narc[1] ],

    command: [
        resdatproc_exe,
        '-D', 'NARC_INDEX_DATA__UGEFFECT_OBJ_GRAPHIC:@INPUT0@',
        '-M', '@DEPFILE@',
        '-p', 'underground_map_transition_dawn',
        '-n', '1',
        '-f', 'characters',
        '-f', 'palettes',
        '-o', meson.current_build_dir(),
        files('underground_map_transition.json'),
    ],

    depfile: 'underground_map_transition_dawn_resdat.d',
)


nitrofs_files += party_menu_resdat
nitrofs_files += poffin_case_resdat
nitrofs_files += pokemon_summary_screen_resdat
nitrofs_files += shop_menu_resdat
nitrofs_files += tower_records_resdat
nitrofs_files += town_map_resdat
nitrofs_files += underground_map_transition_resdat
nitrofs_files += underground_map_transition_dawn_resdat

naix_headers += party_menu_resdat[5]
naix_headers += poffin_case_resdat[5]
naix_headers += pokemon_summary_screen_resdat[5]
naix_headers += shop_menu_resdat[5]
naix_headers += tower_records_resdat[5]
naix_headers += town_map_resdat[5]
naix_headers += underground_map_transition_resdat[5]
