pal = files(
    'background.pal',
    'sprites.pal',
)

nclr = nclr_gen.process(pal,
    extra_args: [
        '-bitdepth', '4',
        '-pcmp',
        '-nopad',
        '-invertsize',
    ]
)

sprites_cell_png = files(
    'main_sprites.png',
)

sprites_cell_ncgr = ncgr_cell_gen.process(sprites_cell_png,
    extra_args: [
        '-clobbersize',
        '-version101',
        '-convertTo4Bpp'
    ],
)

sprites_png = files(
    'sub_sprites.png',
)

sprites_ncgr = ncgr_gen.process(sprites_png,
    extra_args: [
        '-clobbersize',
        '-version101',
        '-num_tiles', '148',
    ],
)

sprites_cell = files(
    'main_sprites_cell.json',
    'sub_sprites_cell.json',
)

sprites_ncer = ncer_gen.process(sprites_cell)

sprites_anim = files(
    'main_sprites_anim.json',
    'sub_sprites_anim.json',
)

sprites_nanr = nanr_gen.process(sprites_anim)

tiles_png = files(
    'main_tiles.png',
    'sub_tiles.png',
)

tiles_ncgr = ncgr_gen.process(tiles_png,
    extra_args: [
        '-version101',
        '-sopc',
    ],
)

tilemaps = copy_gen.process(files(
    'main_tilemap.NSCR',
    'sub_tilemap.NSCR',
))

poffin_case_order = files('poffin_case.order')
poffin_case_narc = custom_target('poru_gra.narc',
    output: [
        'poru_gra.narc',
        'poru_gra.naix.h',
    ],
    input: [
        nclr,
        sprites_cell_ncgr,
        sprites_ncgr,
        sprites_ncer,
        sprites_nanr,
        tiles_ncgr,
        tilemaps,
    ],
    command: [
        narc_exe, 'create',
        '--naix',
        '--order', poffin_case_order,
        '--output', '@OUTPUT0@',
        '@PRIVATE_DIR@',
    ]
)

poffin_case_resdat = custom_target(
    output: [
        'ncgrs.resdat',
        'nclrs.resdat',
        'ncers.resdat',
        'nanrs.resdat',
        'templates.cldat',
        'templates.h',
    ],

    input: [
        poffin_case_narc[1],
    ],

    command: [
        dataproc_resdat_exe,
        '--gen-header',
        '--prefix', meson.current_build_dir(),
        '-D', 'NARC_INDEX_GRAPHIC__PORU_GRA:@INPUT0@',
        files('resdat.json'),
    ],
)

nitrofs_files += poffin_case_narc
nitrofs_files += poffin_case_resdat
naix_headers += poffin_case_narc[1]
naix_headers += poffin_case_resdat[5]
