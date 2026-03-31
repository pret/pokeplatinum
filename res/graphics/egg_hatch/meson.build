egg_nanrs = nanr_lz_gen.process(files(
    'egg_anim.json',
    'black_bar_anim.json',
))

egg_ncers = ncer_lz_gen.process(files(
    'egg_cell.json',
    'black_bar_cell.json',
))

egg_ncgr = ncgr_cell_lz_gen.process(
    files(
        'egg.png',
        'black_bar.png',
    ),
    extra_args: [
        '-clobbersize',
        '-mappingtype', '64',
    ]
)

background_ncgr = ncgr_lz_gen.process(
    files('background.png'),
    extra_args: ['-convertTo4Bpp'],
)

egg_nclrs = nclr_gen.process(
    files(
        'background.png',
        'egg.png',
    ),
    extra_args: [
        '-invertsize',
        '-pcmp',
        '-nopad',
        '-bitdepth', '4',
    ]
)

black_bar_nclr = nclr_gen.process(files('black_bar.png'))

background_tilemap = lz_gen.process(files(
    'background.NSCR',
))

egg_particle_files = files(
    'normal.spa',
    'manaphy.spa',
)

egg_particles_narc = custom_target('egg_particles_narc',
    output: [
        'egg_particles.narc',
        'egg_particles.naix',
    ],
    input: copy_gen.process(egg_particle_files),
    command: [
        nitroarc_exe,
        '--create',
        '--index',
        '--files-from', files('egg_particles.order'),
        '--file', '@OUTPUT0@',
        '@PRIVATE_DIR@',
    ],
)

nitrofs_files += egg_particles_narc
naix_headers += egg_particles_narc[1]

egg_graphics_narc = custom_target('egg_graphics',
    output: [
        'egg_graphics.narc',
        'egg_graphics.naix',
    ],
    input: [
        egg_nanrs,
        egg_ncers,
        egg_ncgr,
        background_ncgr,
        egg_nclrs,
        black_bar_nclr,
        background_tilemap,
    ],
    command: [
        nitroarc_exe,
        '--create',
        '--index',
        '--files-from', files('egg_graphics.order'),
        '--file', '@OUTPUT0@',
        '@PRIVATE_DIR@',
    ],
)

nitrofs_files += egg_graphics_narc
naix_headers += egg_graphics_narc[1]
