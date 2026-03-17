tilemaps_nscr = copy_gen.process(files(
    'top_screen_region_bg_tilemap.NSCR',
    'hidden_locations_top_screen.NSCR',
    'top_screen_region_map_tilemap.NSCR',
    'bottom_screen_region_bg_tilemap.NSCR',
    'bottom_screen_region_map_tilemap.NSCR',
    'zoom_button_states.NSCR',
    'bottom_screen_zoom_button_screen.NSCR',
    'hidden_location_bottom_screen.NSCR',
))

sprite_anims_nanr = nanr_gen.process(files(
    'zoom_button_shockwave_anim.json',
    'cursor_anim.json',
    'player_icons_anim.json',
    'location_history_dot_anim.json',
    'fly_destination_blocks_anim.json',
))

sprite_cells_ncer = ncer_gen.process(files(
    'zoom_button_shockwave_cell.json',
    'cursor_cell.json',
    'player_icons_cell.json',
    'location_history_dot_cell.json',
    'fly_destination_blocks_cell.json',
))

sprite_ncgr_cells = ncgr_cell_gen.process(
    files(
        'zoom_button_shockwave.png',
        'cursor.png',
        'player_icons.png',
        'location_history_dot.png',
    ),
    extra_args: [
        '-version101',
        '-clobbersize',
        '-bitdepth', '4',
    ]
)

fly_destination_blocks_ncgr = ncgr_gen.process(
    files(
        'fly_destination_blocks.png',
    ),
    extra_args: [
        '-version101',
        '-clobbersize',
        '-convertTo4Bpp',
    ]
)

tilesets_ncgr = ncgr_gen.process(
    files(
        'top_screen_map_tiles.png',
        'bottom_screen_map_tiles.png',
        'bottom_screen_button_tiles.png',
    ),
    extra_args: [
        '-version101',
        '-sopc',
        '-bitdepth', '4',
    ]
)

palettes_nclr = nclr_gen.process(
    files(
        'top_screen_map.pal',
        'zoom_button_shockwave.png',
    ),
    extra_args: [
        '-bitdepth', '4',
        '-pcmp',
        '-nopad'
    ],
)

top_screen_sprites_0_4_nclr = nclr_gen.process(
    files(
        'cursor_player_female.pal',
        'player_male.pal',
        'location_history_dot.png',
        'unknown.pal',
    ),
    extra_args: [
        '-bitdepth', '4',
        '-pcmp',
        '-nopad'
    ],
)

fly_destination_blocks_nclr = nclr_gen.process(
    files('fly_destination_blocks.png'),
    extra_args: [
        '-bitdepth', '4',
        '-pcmp', '-start', '11',
        '-nopad'
    ],
)

top_screen_sprites_0_9_nclr = custom_target('top_screen_sprites_0_9_nclr',
    command: [
        nclr_concat_py,
        '--input', '@INPUT@',
        '--output', '@OUTPUT@',
    ],
    input: [
        top_screen_sprites_0_4_nclr,
        fly_destination_blocks_nclr,
    ],
    output: [
        'top_screen_sprites_1.NCLR'
    ]
)

top_screen_sprites_nclr = custom_target('top_screen_sprites_nclr',
    command: [
        nclr_concat_py,
        '--input', '@INPUT@',
        '--output', '@OUTPUT@',
        '--preserve-pcmp'
    ],
    input: [
        top_screen_sprites_0_9_nclr,
        fly_destination_blocks_nclr,
    ],
    output: [
        'top_screen_sprites.NCLR'
    ]
)

bottom_screen_bg_individual_nclr = nclr_gen.process(
    files(
        'bottom_screen_map.pal',
        'zoom_button_screen.pal',
    ),
    extra_args: [
        '-bitdepth', '4',
        '-pcmp',
        '-nopad'
    ],
)

bottom_screen_bg_nclr = custom_target('bottom_screen_bg_nclr',
    command: [
        nclr_concat_py,
        '--input', '@INPUT@',
        '--output', '@OUTPUT@',
    ],
    input: [
        bottom_screen_bg_individual_nclr,
    ],
    output: [
        'bottom_screen_bg.NCLR'
    ]
)

town_map_graphics_narc = custom_target('town_map_graphics.narc',
    output: [
        'town_map_graphics.narc',
        'town_map_graphics.naix',
    ],
    input: [
        tilemaps_nscr,
        sprite_anims_nanr,
        sprite_cells_ncer,
        sprite_ncgr_cells,
        fly_destination_blocks_ncgr,
        tilesets_ncgr,
        palettes_nclr,
        copy_gen.process(top_screen_sprites_nclr),
        copy_gen.process(bottom_screen_bg_nclr),
    ],
    command: [
        nitroarc_exe,
        '--create',
        '--index',
        '--files-from', files('town_map_graphics.order'),
        '--file', '@OUTPUT0@',
        '@PRIVATE_DIR@',
    ],
)

nitrofs_files += town_map_graphics_narc
naix_headers += town_map_graphics_narc[1]
