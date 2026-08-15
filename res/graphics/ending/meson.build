ending_ncgr = []
ending_nclr = []
ending_ncer = []
ending_nanr = []

ending_png_ncgr = [
    ['background_morning_bottom_tiles.png', ['-bitdepth', '4', '-version101', '-sopc']],
    ['background_day_bottom_tiles.png', ['-bitdepth', '4', '-version101', '-sopc']],
    ['background_night_bottom_tiles.png', ['-bitdepth', '4', '-version101', '-sopc']],
    ['background_morning_top_tiles.png', ['-bitdepth', '4', '-version101', '-sopc']],
    ['background_day_top_tiles.png', ['-bitdepth', '4', '-version101', '-sopc']],
    ['background_night_top_tiles.png', ['-bitdepth', '4', '-version101', '-sopc']],
    ['bike_bg_objects.png', ['-convertTo4Bpp', '-version101', '-clobbersize', '-mappingtype', '128', '-cell', files('bike_bg_objects_cell.json')[0]]],
    ['unused_all_rights_reserved_tiles.png', ['-bitdepth', '4', '-version101', '-sopc']],
    ['lucas_bike_eye_tiles.png', ['-bitdepth', '4', '-version101', '-clobbersize', '-mappingtype', '128']],
    ['lucas_bike.png', ['-bitdepth', '4', '-version101', '-clobbersize', '-mappingtype', '128', '-vram', '-cell', files('lucas_bike_cell.json')[0]]],
    ['dawn_bike_eye_tiles.png', ['-bitdepth', '4', '-version101', '-clobbersize', '-mappingtype', '128']],
    ['dawn_bike_tiles.png', ['-bitdepth', '4', '-version101', '-clobbersize', '-mappingtype', '128', '-vram']],
    ['memories/lucas/memory_lucas_route_201_starter.png', ['-bitdepth', '8', '-version101', '-sopc']],
    ['memories/lucas/memory_lucas_rowans_lab.png', ['-bitdepth', '8', '-version101', '-sopc']],
    ['memories/lucas/memory_lucas_pokemon_center.png', ['-bitdepth', '8', '-version101', '-sopc']],
    ['memories/lucas/memory_lucas_valley_windworks.png', ['-bitdepth', '8', '-version101', '-sopc']],
    ['memories/lucas/memory_lucas_route_210_psyduck.png', ['-bitdepth', '8', '-version101', '-sopc']],
    ['memories/lucas/memory_lucas_eterna_forest.png', ['-bitdepth', '8', '-version101', '-sopc']],
    ['memories/lucas/memory_lucas_pastoria_great_marsh.png', ['-bitdepth', '8', '-version101', '-sopc']],
    ['memories/lucas/memory_lucas_canalave_barry.png', ['-bitdepth', '8', '-version101', '-sopc']],
    ['memories/lucas/memory_lucas_lake_acuity.png', ['-bitdepth', '8', '-version101', '-sopc']],
    ['memories/lucas/memory_lucas_spear_pillar.png', ['-bitdepth', '8', '-version101', '-sopc']],
    ['memories/dawn/memory_dawn_route_201_starter.png', ['-bitdepth', '8', '-version101', '-sopc']],
    ['memories/dawn/memory_dawn_jubilife_looker.png', ['-bitdepth', '8', '-version101', '-sopc']],
    ['memories/dawn/memory_dawn_pokemon_mart.png', ['-bitdepth', '8', '-version101', '-sopc']],
    ['memories/dawn/memory_dawn_eterna_cyrus.png', ['-bitdepth', '8', '-version101', '-sopc']],
    ['memories/dawn/memory_dawn_hearthome_contest_hall.png', ['-bitdepth', '8', '-version101', '-sopc']],
    ['memories/dawn/memory_dawn_solaceon_town.png', ['-bitdepth', '8', '-version101', '-sopc']],
    ['memories/dawn/memory_dawn_route_216.png', ['-bitdepth', '8', '-version101', '-sopc']],
    ['memories/dawn/memory_dawn_lake_valor.png', ['-bitdepth', '8', '-version101', '-sopc']],
    ['memories/dawn/memory_dawn_galactic_hq.png', ['-bitdepth', '8', '-version101', '-sopc']],
    ['memories/dawn/memory_dawn_spear_pillar.png', ['-bitdepth', '8', '-version101', '-sopc']],
    ['twinleaf_lucas_1.png', ['-bitdepth', '8', '-version101', '-sopc']],
    ['twinleaf_lucas_2.png', ['-bitdepth', '8', '-version101', '-sopc']],
    ['twinleaf_lucas_3.png', ['-bitdepth', '8', '-version101', '-sopc']],
    ['twinleaf_lucas_4.png', ['-bitdepth', '8', '-version101', '-sopc']],
    ['twinleaf_dawn_1.png', ['-bitdepth', '8', '-version101', '-sopc']],
    ['twinleaf_dawn_2.png', ['-bitdepth', '8', '-version101', '-sopc']],
    ['twinleaf_dawn_3.png', ['-bitdepth', '8', '-version101', '-sopc']],
    ['twinleaf_dawn_4.png', ['-bitdepth', '8', '-version101', '-sopc']],
]
foreach file : ending_png_ncgr
    basename = file[0].split('.')[0].split('/')[-1].replace('_tiles', '')

    ncgr = custom_target(basename + '.NCGR',
        output: basename + '.NCGR',
        input: file[0],
        command: [ nitrogfx_exe, '@INPUT@', '@OUTPUT@', file[1] ]
        )
    ending_ncgr += ncgr
endforeach

ending_png_nclr = [
    ['bike_bg_objects.pal', ['-bitdepth', '4', '-nopad', '-pcmp']],
    ['background_day_top_alt.pal', ['-bitdepth', '4', '-nopad', '-pcmp']],
    ['background_night_top_alt.pal', ['-bitdepth', '4', '-nopad', '-pcmp']],
    ['background_morning_bottom.pal', ['-bitdepth', '4', '-nopad', '-pcmp']],
    ['background_day_bottom.pal', ['-bitdepth', '4', '-nopad', '-pcmp']],
    ['background_night_bottom.pal', ['-bitdepth', '4', '-nopad', '-pcmp']],
    ['background_morning_top.pal', ['-bitdepth', '4', '-nopad', '-pcmp']],
    ['background_day_top.pal', ['-bitdepth', '4', '-nopad', '-pcmp']],
    ['background_night_top.pal', ['-bitdepth', '4', '-nopad', '-pcmp']],
    ['unused_all_rights_reserved_tiles.png', ['-bitdepth', '4', '-nopad', '-pcmp']],
    ['lucas_bike.png', ['-bitdepth', '4', '-nopad', '-pcmp']],
    ['dawn_bike_tiles.png', ['-bitdepth', '4', '-nopad', '-pcmp']],
    ['text.pal', ['-bitdepth', '4', '-nopad', '-pcmp']],
]
foreach file : ending_png_nclr
    basename = file[0].split('.')[0].split('/')[-1].replace('_tiles', '')

    nclr = custom_target(basename + '.NCLR',
        output: basename + '.NCLR',
        input: file[0],
        command: [ nitrogfx_exe, '@INPUT@', '@OUTPUT@', file[1] ]
        )
    ending_nclr += nclr
endforeach

ending_png_extended_nclr = [
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
foreach file : ending_png_extended_nclr
    basename = file[0].split('.')[0].split('/')[-1].replace('_0', '')

    nclr = custom_target(basename + '.NCLR',
        output: basename + '.NCLR',
        input: file[0],
        command: [ nitrogfx_exe, '@INPUT@', '@OUTPUT@', file[1] ]
        )
    ending_nclr += nclr
endforeach

ending_cell_json = [
    'bike_bg_objects_cell.json',
    'lucas_bike_cell.json',
    'dawn_bike_cell.json',
]
foreach file : ending_cell_json
    basename = file.split('.')[0].replace('_cell', '')

    ncer = custom_target(basename + '.NCER',
        output: basename + '.NCER',
        input: basename + '_cell.json',
        command: [ nitrogfx_exe, '@INPUT@', '@OUTPUT@' ]
        )
    ending_ncer += ncer
endforeach

ending_anim_json = [
    'bike_bg_objects_anim.json',
    'lucas_bike_anim.json',
    'dawn_bike_anim.json',
]
foreach file : ending_anim_json
    basename = file.split('.')[0].replace('_anim', '')

    nanr = custom_target(basename + '.NANR',
        output: basename + '.NANR',
        input: basename + '_anim.json',
        command: [ nitrogfx_exe, '@INPUT@', '@OUTPUT@' ]
        )
    ending_nanr += nanr
endforeach

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
        copy_gen.process(ending_ncgr),
        copy_gen.process(ending_nclr),
        copy_gen.process(ending_ncer),
        copy_gen.process(ending_nanr),
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
