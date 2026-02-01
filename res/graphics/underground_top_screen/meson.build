pngs = files(
    'background_tiles.png',
)

pngs_cell = files(
    'map_markers.png',
)

cells = files(
    'map_markers_cell.json',
)

anims = files(
    'map_markers_anim.json',
)

ncgrs = ncgr_gen.process(pngs,
    extra_args: [ '-convertTo4Bpp', '-version101', '-sopc',],
)

ncgrs_cell = ncgr_cell_gen.process(pngs_cell,
    extra_args: [ '-noskip', '-convertTo4Bpp', '-version101', '-clobbersize',],
)

nclrs = nclr_gen.process(pngs + pngs_cell,
    extra_args: [ '-bitdepth', '4', ]
)

ncers = ncer_gen.process(cells)
nanrs = nanr_gen.process(anims)

nscrs = copy_gen.process(files('background.NSCR'))

underground_top_screen_order = files('underground_top_screen.order')
underground_top_screen_narc = custom_target('underground_top_screen.narc',
    output: [
        'underground_top_screen.narc',
        'underground_top_screen.naix.h',
    ],
    input: [
        ncgrs,
        ncgrs_cell,
        nclrs,
        ncers,
        nanrs,
        nscrs,
    ],
    command: [
        narc_exe, 'create',
        '--naix',
        '--order', underground_top_screen_order,
        '--output', '@OUTPUT0@',
        '@PRIVATE_DIR@',
    ]
)

nitrofs_files += underground_top_screen_narc
naix_headers += underground_top_screen_narc[1]
