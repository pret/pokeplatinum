tiles_ncgr = ncgr_gen.process(files('tiles.png'),
    extra_args: [
        '-sopc',
        '-version101',
])

tilemaps_nscr = copy_gen.process(files(
    'tilemap.NSCR',
    'tilemap_no_item.NSCR',
))

sprites_png = files(
    'scroll_arrow.png',
    'cursor.png',
)
sprites_ncgr = ncgr_gen.process(sprites_png,
    extra_args: [
        '-version101',
        '-clobbersize',
])

sprites_cell_json = files(
    'scroll_arrow_cell.json',
    'cursor_cell.json',
)
sprites_ncer = ncer_gen.process(sprites_cell_json)

sprites_anim_json = files(
    'scroll_arrow_anim.json',
    'cursor_anim.json',
)
sprites_nanr = nanr_gen.process(sprites_anim_json)

palettes_pal = files(
    'default.pal',
    'frontier.pal',
    'sprites.pal',
)
palettes_nclr = nclr_gen.process(palettes_pal,
    extra_args: [
        '-bitdepth', '4',
    ],
)

shop_gra_order = files('shop_gra.order')
shop_gra_narc = custom_target('shop_gra.narc',
    output: [
        'shop_gra.narc',
        'shop_gra.naix.h',
    ],
    input: [
        tiles_ncgr,
        tilemaps_nscr,
        sprites_ncgr,
        sprites_ncer,
        sprites_nanr,
        palettes_nclr,
        shop_gra_order,
    ],
    command: [
        narc_exe, 'create',
        '--naix',
        '--order', shop_gra_order,
        '--output', '@OUTPUT0@',
        '@PRIVATE_DIR@',
    ]
)

shop_menu_resdat = custom_target(
    output: [
        'ncgrs.resdat',
        'nclrs.resdat',
        'ncers.resdat',
        'nanrs.resdat',
        'templates.cldat',
    ],

    input: [
        shop_gra_narc[1],
        item_icon_narc[1],
    ],

    command: [
        dataproc_resdat_exe,
        '--prefix', meson.current_build_dir(),
        '-D', 'NARC_INDEX_GRAPHIC__SHOP_GRA:@INPUT0@',
        '-D', 'NARC_INDEX_ITEMTOOL__ITEMDATA__ITEM_ICON:@INPUT1@',
        files('resdat.json'),
    ],
)

nitrofs_files += shop_gra_narc
nitrofs_files += shop_menu_resdat
naix_headers += shop_gra_narc[1]
