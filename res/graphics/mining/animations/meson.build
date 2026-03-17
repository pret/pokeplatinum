mining_animations_pngs_converted = files(
    'crack_end.png'
)

mining_animations_ncgrs_converted = ncgr_cell_gen.process(mining_animations_pngs_converted,
    extra_args: [
        '-clobbersize',
        '-version101',
        '-convertTo4Bpp',
    ],
)

mining_animations_nclrs_converted = nclr_gen.process(mining_animations_pngs_converted,
    extra_args: [
        '-convertTo4Bpp',
    ],
)

mining_animations_pngs = files(
    'animations.png'
)

mining_animations_ncgrs = ncgr_cell_gen.process(mining_animations_pngs,
    extra_args: [
        '-clobbersize',
        '-version101',
    ],
)

mining_animations_nclrs = nclr_gen.process(mining_animations_pngs)

mining_animations_ncers = ncer_gen.process(files('crack_end_cell.json', 'animations_cell.json'))

mining_animations_nanrs = nanr_gen.process(files('crack_end_anim.json', 'animations_anim.json'))

mining_animations_narc = custom_target('animations.narc',
    output: [
        'animations.narc',
        'animations.naix',
    ],
    input: [
        mining_animations_ncgrs_converted,
        mining_animations_nclrs_converted,
        mining_animations_ncgrs,
        mining_animations_nclrs,
        mining_animations_ncers,
        mining_animations_nanrs,
    ],
    command: [
        nitroarc_exe,
        '--create',
        '--index',
        '--files-from', files('animations.order'),
        '--file', '@OUTPUT0@',
        '@PRIVATE_DIR@',
    ],
)

nitrofs_files += mining_animations_narc
naix_headers += mining_animations_narc[1]
