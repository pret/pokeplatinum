tilemaps_nscr = copy_gen.process(files(
    'bag_ui_main.NSCR',
    'item_list_border.NSCR',
    'pokeball_borders.NSCR',
    'pokeball_inside.NSCR',
))

sprite_anims_nanr = nanr_gen.process(files(
    'bag_sprite_anim.json',
    'pocket_selector_arrows_anim.json',
    'pocket_highlight_anim.json',
    'item_highlight_anim.json',
    'moving_item_pos_bar_anim.json',
    'button_shockwave_anim.json',
))

bag_sprite_female_anim_unused_nanr = generator(nitrogfx_exe,
    arguments: ['@INPUT@', '@OUTPUT@'],
    output: '@BASENAME@_female_unused.NANR',
).process(files('bag_sprite_anim.json'))

sprite_cells_ncer = ncer_gen.process(files(
    'bag_sprite_cell.json',
    'pocket_selector_arrows_cell.json',
    'pocket_highlight_cell.json',
    'item_highlight_cell.json',
    'moving_item_pos_bar_cell.json',
    'button_shockwave_cell.json',
))

bag_sprite_female_cell_unused_ncer = generator(nitrogfx_exe,
    arguments: ['@INPUT@', '@OUTPUT@'],
    output: '@BASENAME@_female_unused.NCER',
).process(files('bag_sprite_cell.json'))

palettes_8bpp = nclr_gen.process(
    files(
        'bag_ui_main.pal',
        'buttons.pal',
        'pokeball_borders.pal',
        'ui_elements.pal',
    ),
    extra_args: [
        '-bitdepth', '4'
    ],
)

palettes_4bpp = nclr_gen.process(
    files(
        'bag_sprite_male.png',
        'bag_sprite_female.png',
        'pocket_selector_icons.png',
        'button_shockwave.png',
    ),
    extra_args: [
        '-bitdepth', '4'
    ]
)

sprites_ncgr_sopc = ncgr_gen.process(
    files(
        'bag_ui_main_tileset.png',
        'buttons.png',
        'item_entry_icons.png',
        'pocket_selector_icons.png',
        'pokeball_borders_tileset.png',
    ),
    extra_args: [
        '-version101',
        '-sopc',
        '-bitdepth', '4',
    ]
)

sprites_ncgr_clobbersize = ncgr_gen.process(
    files(
        'bag_sprite_male.png',
        'bag_sprite_female.png',
        'pocket_selector_arrows.png',
        'pocket_highlight.png',
        'button_shockwave.png',
    ),
    extra_args: [
        '-version101',
        '-clobbersize',
        '-bitdepth', '4',
    ]
)

sprites_ncgr_cell = ncgr_cell_gen.process(
    files(
        'item_highlight.png',
        'moving_item_pos_bar.png',
    ),
    extra_args: [
        '-version101',
        '-clobbersize',
        '-bitdepth', '4',
    ]
)

sprites_ncgr_8bpp = ncgr_gen.process(
    files(
        'pokeball_inside.png',
    ),
    extra_args: [
        '-version101',
        '-sopc',
        '-bitdepth', '8',
    ],
)

bag_graphics_narc = custom_target('bag_graphics.narc',
    output: [
        'bag_graphics.narc',
        'bag_graphics.naix',
    ],
    input: [
        tilemaps_nscr,
        sprite_anims_nanr,
        sprite_cells_ncer,
        bag_sprite_female_anim_unused_nanr,
        bag_sprite_female_cell_unused_ncer,
        palettes_8bpp,
        palettes_4bpp,
        sprites_ncgr_sopc,
        sprites_ncgr_clobbersize,
        sprites_ncgr_cell,
        sprites_ncgr_8bpp,
    ],
    command: [
        nitroarc_exe,
        '--create',
        '--index',
        '--files-from', files('bag_graphics.order'),
        '--file', '@OUTPUT0@',
        '@PRIVATE_DIR@',
    ],
)

nitrofs_files += bag_graphics_narc
naix_headers += bag_graphics_narc[1]
