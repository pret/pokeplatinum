tiles_png = files('tiles.png')
tiles_ncgr = ncgr_gen.process(tiles_png,
    extra_args: [ '-sopc', '-version101', ],
)
tiles_nclr = nclr_gen.process(tiles_png,
    extra_args: [ '-bitdepth', '4', '-pcmp', '-nopad', '-invertsize', ],
)
tilemap_nscr = copy_gen.process(files('tilemap.bin'))

config_gra_order = files('config_gra.order')
config_gra_narc = custom_target('config_gra.narc',
    output: [
        'config_gra.narc',
        'config_gra.naix.h',
    ],
    input: [
        tiles_ncgr,
        tiles_nclr,
        tilemap_nscr,
        config_gra_order,
    ],
    command: [
        narc_exe, 'create',
        '--naix',
        '--order', config_gra_order,
        '--output', '@OUTPUT0@',
        '@PRIVATE_DIR@',
    ]
)

nitrofs_files += config_gra_narc
naix_headers += config_gra_narc[1]
