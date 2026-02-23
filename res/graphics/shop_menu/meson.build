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

shop_gra_narc = custom_target('shop_gra.narc',
    output: [
        'shop_gra.narc',
        'shop_gra.naix',
    ],
    input: [
        tiles_ncgr,
        tilemaps_nscr,
        sprites_ncgr,
        sprites_ncer,
        sprites_nanr,
        palettes_nclr,
    ],
    command: [
        nitroarc_exe,
        '--create',
        '--index',
        '--files-from', files('shop_gra.order'),
        '--file', '@OUTPUT0@',
        '@PRIVATE_DIR@',
    ],
)

nitrofs_files += shop_gra_narc
naix_headers += shop_gra_narc[1]
