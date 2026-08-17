ending_ncgr_4bpp = ncgr_gen.process(files(
    'background_morning_bottom_tiles.png',
    'background_day_bottom_tiles.png',
    'background_night_bottom_tiles.png',
    'background_morning_top_tiles.png',
    'background_day_top_tiles.png',
    'background_night_top_tiles.png',
    'unused_all_rights_reserved_tiles.png',
), extra_args: ['-bitdepth', '4', '-version101', '-sopc'])

ending_ncgr_8bpp = ncgr_gen.process(files(
    'memories/lucas/memory_lucas_route_201_starter.png',
    'memories/lucas/memory_lucas_rowans_lab.png',
    'memories/lucas/memory_lucas_pokemon_center.png',
    'memories/lucas/memory_lucas_valley_windworks.png',
    'memories/lucas/memory_lucas_route_210_psyduck.png',
    'memories/lucas/memory_lucas_eterna_forest.png',
    'memories/lucas/memory_lucas_pastoria_great_marsh.png',
    'memories/lucas/memory_lucas_canalave_barry.png',
    'memories/lucas/memory_lucas_lake_acuity.png',
    'memories/lucas/memory_lucas_spear_pillar.png',
    'memories/dawn/memory_dawn_route_201_starter.png',
    'memories/dawn/memory_dawn_jubilife_looker.png',
    'memories/dawn/memory_dawn_pokemon_mart.png',
    'memories/dawn/memory_dawn_eterna_cyrus.png',
    'memories/dawn/memory_dawn_hearthome_contest_hall.png',
    'memories/dawn/memory_dawn_solaceon_town.png',
    'memories/dawn/memory_dawn_route_216.png',
    'memories/dawn/memory_dawn_lake_valor.png',
    'memories/dawn/memory_dawn_galactic_hq.png',
    'memories/dawn/memory_dawn_spear_pillar.png',
    'twinleaf_lucas_1.png',
    'twinleaf_lucas_2.png',
    'twinleaf_lucas_3.png',
    'twinleaf_lucas_4.png',
    'twinleaf_dawn_1.png',
    'twinleaf_dawn_2.png',
    'twinleaf_dawn_3.png',
    'twinleaf_dawn_4.png',
), extra_args: ['-bitdepth', '8', '-version101', '-sopc'])

ending_ncgr_eyes = ncgr_gen.process(files(
    'lucas_bike_eye_tiles.png',
    'dawn_bike_eye_tiles.png',
), extra_args: ['-bitdepth', '4', '-version101', '-clobbersize', '-mappingtype', '128'])

ending_ncgr_cell_from_8bpp = ncgr_cell_gen.process(files(
    'bike_bg_objects.png'
), extra_args: ['-convertTo4Bpp', '-version101', '-clobbersize', '-mappingtype', '128'])

ending_ncgr_cell_bike = ncgr_cell_gen.process(files(
    'lucas_bike.png'
), extra_args: ['-bitdepth', '4', '-version101', '-clobbersize', '-mappingtype', '128', '-vram'])

ending_ncgr_bike = ncgr_gen.process(files(
    'dawn_bike_tiles.png'
), extra_args: ['-bitdepth', '4', '-version101', '-clobbersize', '-mappingtype', '128', '-vram'])


ending_nclr = nclr_gen.process(files(
    'bike_bg_objects.pal',
    'background_day_top_alt.pal',
    'background_night_top_alt.pal',
    'background_morning_bottom.pal',
    'background_day_bottom.pal',
    'background_night_bottom.pal',
    'background_morning_top.pal',
    'background_day_top.pal',
    'background_night_top.pal',
    'unused_all_rights_reserved_tiles.png',
    'lucas_bike.png',
    'dawn_bike_tiles.png',
    'text.pal',
), extra_args: ['-bitdepth', '4', '-nopad', '-pcmp'])

ending_nclr_extended = []
ending_png_extended_pal = [
    ['memories/lucas/memory_lucas_route_201_starter_0.pal', ['-bitdepth', '8', '-extended', '1', '-pcmp', '-nopad']],
    ['memories/lucas/memory_lucas_rowans_lab_0.pal', ['-bitdepth', '8', '-extended', '16', '-pcmp', '-nopad']],
    ['memories/lucas/memory_lucas_pokemon_center_0.pal', ['-bitdepth', '8', '-extended', '16', '-pcmp', '-nopad']],
    ['memories/lucas/memory_lucas_valley_windworks_0.pal', ['-bitdepth', '8', '-extended', '16', '-pcmp', '-nopad']],
    ['memories/lucas/memory_lucas_route_210_psyduck_0.pal', ['-bitdepth', '8', '-extended', '16', '-pcmp', '-nopad']],
    ['memories/lucas/memory_lucas_eterna_forest_0.pal', ['-bitdepth', '8', '-extended', '16', '-pcmp', '-nopad']],
    ['memories/lucas/memory_lucas_pastoria_great_marsh_0.pal', ['-bitdepth', '8', '-extended', '16', '-pcmp', '-nopad']],
    ['memories/lucas/memory_lucas_canalave_barry_0.pal', ['-bitdepth', '8', '-extended', '16', '-pcmp', '-nopad']],
    ['memories/lucas/memory_lucas_lake_acuity_0.pal', ['-bitdepth', '8', '-extended', '16', '-pcmp', '-nopad']],
    ['memories/lucas/memory_lucas_spear_pillar_0.pal', ['-bitdepth', '8', '-extended', '16', '-pcmp', '-nopad']],
    ['memories/dawn/memory_dawn_route_201_starter_0.pal', ['-bitdepth', '8', '-extended', '16', '-pcmp', '-nopad']],
    ['memories/dawn/memory_dawn_jubilife_looker_0.pal', ['-bitdepth', '8', '-extended', '16', '-pcmp', '-nopad']],
    ['memories/dawn/memory_dawn_pokemon_mart_0.pal', ['-bitdepth', '8', '-extended', '16', '-pcmp', '-nopad']],
    ['memories/dawn/memory_dawn_eterna_cyrus_0.pal', ['-bitdepth', '8', '-extended', '16', '-pcmp', '-nopad']],
    ['memories/dawn/memory_dawn_hearthome_contest_hall_0.pal', ['-bitdepth', '8', '-extended', '16', '-pcmp', '-nopad']],
    ['memories/dawn/memory_dawn_solaceon_town_0.pal', ['-bitdepth', '8', '-extended', '16', '-pcmp', '-nopad']],
    ['memories/dawn/memory_dawn_route_216_0.pal', ['-bitdepth', '8', '-extended', '16', '-pcmp', '-nopad']],
    ['memories/dawn/memory_dawn_lake_valor_0.pal', ['-bitdepth', '8', '-extended', '16', '-pcmp', '-nopad']],
    ['memories/dawn/memory_dawn_galactic_hq_0.pal', ['-bitdepth', '8', '-extended', '16', '-pcmp', '-nopad']],
    ['memories/dawn/memory_dawn_spear_pillar_0.pal', ['-bitdepth', '8', '-extended', '16', '-pcmp', '-nopad']],
    ['twinleaf_lucas_1_0.pal', ['-bitdepth', '8', '-extended', '1', '-pcmp', '-nopad']],
    ['twinleaf_lucas_2_0.pal', ['-bitdepth', '8', '-extended', '1', '-pcmp', '-nopad']],
    ['twinleaf_lucas_3_0.pal', ['-bitdepth', '8', '-extended', '1', '-pcmp', '-nopad']],
    ['twinleaf_lucas_4_0.pal', ['-bitdepth', '8', '-extended', '1', '-pcmp', '-nopad']],
    ['twinleaf_dawn_1_0.pal', ['-bitdepth', '8', '-extended', '1', '-pcmp', '-nopad']],
    ['twinleaf_dawn_2_0.pal', ['-bitdepth', '8', '-extended', '1', '-pcmp', '-nopad']],
    ['twinleaf_dawn_3_0.pal', ['-bitdepth', '8', '-extended', '1', '-pcmp', '-nopad']],
    ['twinleaf_dawn_4_0.pal', ['-bitdepth', '8', '-extended', '1', '-pcmp', '-nopad']],
]
foreach file : ending_png_extended_pal
    basename = file[0].split('.')[0].split('/')[-1].replace('_0', '')

    nclr = custom_target(basename + '.NCLR',
        output: basename + '.NCLR',
        input: file[0],
        command: [ nitrogfx_exe, '@INPUT@', '@OUTPUT@', file[1] ]
        )
    ending_nclr_extended += nclr
endforeach

ending_cell_json = files(
    'bike_bg_objects_cell.json',
    'lucas_bike_cell.json',
    'dawn_bike_cell.json',
)
ending_ncer = ncer_gen.process(ending_cell_json)

ending_anim_json = files(
    'bike_bg_objects_anim.json',
    'lucas_bike_anim.json',
    'dawn_bike_anim.json',
)
ending_nanr = nanr_gen.process(ending_anim_json)

ending_nscr = copy_gen.process(files(
    'background_morning_bottom.NSCR',
    'background_day_bottom.NSCR',
    'background_night_bottom.NSCR',
    'background_morning_top.NSCR',
    'background_day_top.NSCR',
    'background_night_top.NSCR',
    'unused_all_rights_reserved.NSCR',
    'memory_shared.NSCR',
    'twinleaf_shared.NSCR',
))

ending_bmd0 = copy_gen.process(files(
    'background_day_lamppost.BMD0',
    'background_night_lamppost.BMD0',
    'background_morning_tree_1.BMD0',
    'background_morning_tree_2.BMD0',
    'background_night_tree_1_normal.BMD0',
    'background_night_tree_1_snowy.BMD0',
    'background_night_tree_2.BMD0',
))

ending_narc = custom_target('ending.narc',
    output: [
        'ending.narc',
        'ending.naix',
    ],
    input: [
        ending_ncgr_4bpp,
        ending_ncgr_8bpp,
        ending_ncgr_eyes,
        ending_ncgr_cell_from_8bpp,
        ending_ncgr_cell_bike,
        ending_ncgr_bike,
        ending_nclr,
        copy_gen.process(ending_nclr_extended),
        ending_ncer,
        ending_nanr,
        ending_nscr,
        ending_bmd0,
    ],
    command: [
        nitroarc_exe,
        '--create',
        '--index',
        '--files-from', files('ending.order'),
        '--file', '@OUTPUT0@',
        '@PRIVATE_DIR@',
    ],
)

nitrofs_files += ending_narc
naix_headers += ending_narc[1]
