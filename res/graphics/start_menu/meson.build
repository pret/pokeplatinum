pngs = files(
    'cursor.png',
    'icons.png',
    'underground_icons.png',
)
ncgrs = ncgr_cell_gen.process(pngs,
    extra_args: [
        '-clobbersize',
        '-version101',  
    ]
)

cells = files(
    'cursor_cell.json',
    'icons_cell.json',
    'underground_icons_cell.json',
)
ncers = ncer_gen.process(cells)

anims = files(
    'cursor_anim.json',
    'icons_anim.json',
    'underground_icons_anim.json',
)
nanrs = nanr_gen.process(anims)

palettes = files(
    'menu.pal',
    'underground_menu.pal',
)
nclrs = nclr_gen.process(palettes,
    extra_args: [
        '-bitdepth', '4',
    ],
)

start_menu_order = files('start_menu.order')
start_menu_narc = custom_target('start_menu.narc',
    output: [
        'start_menu.narc',
        'start_menu.naix',
    ],
    input: [
        ncgrs,
        ncers,
        nanrs,
        nclrs,
    ],
    command: [
        nitroarc_exe,
        '--create',
        '--index',
        '--files-from', files('start_menu.order'),
        '--file', '@OUTPUT0@',
        '@PRIVATE_DIR@',
    ],
)

nitrofs_files += start_menu_narc
naix_headers += start_menu_narc[1]
