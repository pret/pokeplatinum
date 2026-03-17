pngs_4bpp = files(
    'lucas.png',
    'hole.png',
)

pngs_4bpp_with_palettes = files(
    'lucas.png',
)

pngs_8bpp = files(
    'dawn.png',
)

cells = files(
    'player_cell.json',
    'hole_cell.json',
)

anims = files(
    'player_anim.json',
    'hole_anim.json',
)

ncgrs_4bpp = ncgr_gen.process(pngs_4bpp,
    extra_args: [ '-clobbersize', '-version101', ],
)

ncgrs_8bpp = ncgr_gen.process(pngs_8bpp,
    extra_args: [ '-clobbersize', '-version101', '-bitdepth', '8', '-convertTo4Bpp', ],
)

nclrs_4bpp = nclr_gen.process(pngs_4bpp_with_palettes,
    extra_args: [ '-bitdepth', '4', ]
)

nclrs_8bpp = nclr_gen.process(pngs_8bpp,
    extra_args: [ '-bitdepth', '8', '-convertTo4Bpp', ],
)

ncers = ncer_gen.process(cells)
nanrs = nanr_gen.process(anims)

underground_map_transition_narc = custom_target('underground_map_transition.narc',
    output: [
        'underground_map_transition.narc',
        'underground_map_transition.naix',
    ],
    input: [
        ncgrs_4bpp,
        ncgrs_8bpp,
        nclrs_4bpp,
        nclrs_8bpp,
        ncers,
        nanrs,
    ],
    command: [
        nitroarc_exe,
        '--create',
        '--index',
        '--files-from', files('underground_map_transition.order'),
        '--file', '@OUTPUT0@',
        '@PRIVATE_DIR@',
    ],
)

nitrofs_files += underground_map_transition_narc
naix_headers += underground_map_transition_narc[1]
