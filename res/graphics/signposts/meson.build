field_board_pngs = files(
    'signpost_frame.png',
    'route_map_00.png',
    'route_map_01.png',
    'route_map_02.png',
    'route_map_03.png',
    'route_map_04.png',
    'route_map_05.png',
    'route_map_06.png',
    'route_map_07.png',
    'route_map_08.png',
    'route_map_09.png',
    'route_map_10.png',
    'route_map_11.png',
    'route_map_12.png',
    'route_map_13.png',
    'route_map_14.png',
    'route_map_15.png',
    'route_map_16.png',
    'route_map_17.png',
    'route_map_18.png',
    'route_map_19.png',
    'route_map_20.png',
    'route_map_21.png',
    'route_map_22.png',
    'route_map_23.png',
    'route_map_24.png',
    'route_map_25.png',
    'route_map_26.png',
    'route_map_27.png',
    'route_map_28.png',
    'route_map_29.png',
    'route_map_30.png',
    'city_map_empty.png',
    'city_map_twinleaf.png',
    'city_map_sandgem.png',
    'city_map_floaroma.png',
    'city_map_solaceon.png',
    'city_map_celestic.png',
    'city_map_survival_area.png',
    'city_map_resort_area.png',
    'city_map_jubilife.png',
    'city_map_canalave.png',
    'city_map_oreburgh.png',
    'city_map_eterna.png',
    'city_map_hearthome.png',
    'city_map_pastoria.png',
    'city_map_veilstone.png',
    'city_map_sunyshore.png',
    'city_map_snowpoint.png',
    'city_map_pokemon_league.png',
    'city_map_fight_area.png',
)

field_board_pals = files('signpost.pal')

field_board_ncgrs = ncgr_gen.process(field_board_pngs,
    extra_args: [
        '-sopc',
        '-version101',
    ]
)

field_board_nclrs = nclr_gen.process(field_board_pals,
    extra_args: [
        '-bitdepth', '4',
    ]
)

field_board_narc = custom_target('field_board.narc',
    output: [
        'field_board.narc',
        'field_board.naix',
    ],
    input: [
        field_board_ncgrs,
        field_board_nclrs,
    ],
    command: [
        nitroarc_exe,
        '--create',
        '--index',
        '--files-from', files('field_board.order'),
        '--file', '@OUTPUT0@',
        '@PRIVATE_DIR@',
    ],
)

nitrofs_files += field_board_narc
naix_headers += field_board_narc[1]
