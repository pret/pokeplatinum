top_nclr = nclr_gen.process('top_screen_tiles.png',
    extra_args: [
        '-bitdepth', '4',
        '-pcmp',
        '-nopad',
        '-invertsize',
    ],
)

bottom_nclr = nclr_gen.process('bottom_screen_tiles.png',
    extra_args: [
        '-bitdepth', '4',
        '-pcmp',
        '-nopad',
        '-invertsize',
    ],
)

top_ncgr = ncgr_gen.process('top_screen_tiles.png',
    extra_args: [
        '-version101',
        '-sopc',
    ],
)

bottom_ncgr = ncgr_gen.process('bottom_screen_tiles.png',
    extra_args: [
        '-version101',
        '-sopc',
        '-convertTo4Bpp',
    ],
)

nscrs = copy_gen.process(files(
    'top_screen_tilemap.NSCR',
    'bottom_screen_tilemap.NSCR',
))

poffin_cutscene_narc = custom_target('cutscene.narc',
    output: [
        'cutscene.narc',
        'cutscene.naix',
    ],
    input: [
        top_nclr,
        bottom_nclr,
        top_ncgr,
        bottom_ncgr,
        nscrs,
    ],
    command: [
        nitroarc_exe,
        '--create',
        '--index',
        '--files-from', files('cutscene.order'),
        '--file', '@OUTPUT0@',
        '@PRIVATE_DIR@',
    ],
)

nitrofs_files += poffin_cutscene_narc
naix_headers += poffin_cutscene_narc[1]
