move_tutor_tiles = ncgr_cell_gen.process(
    files(
        'select_box.png',
        'view_change_arrows.png',
        'scroll_arrows.png',
    ),
    extra_args: [
        '-version101',
        '-clobbersize',
    ]
)

move_tutor_bg_tiles = ncgr_gen.process(
    files(
        'move_tutor_bg_tiles.png',
    ),
    extra_args: [
        '-version101',
        '-sopc',
        '-convertTo4Bpp',
    ]
)

move_tutor_cells = ncer_gen.process(files(
    'select_box_cell.json',
    'view_change_arrows_cell.json',
    'scroll_arrows_cell.json',
))

move_tutor_anims = nanr_gen.process(files(
    'select_box_anim.json',
    'view_change_arrows_anim.json',
    'scroll_arrows_anim.json',
))

move_tutor_pals = nclr_gen.process(
    files(
        'sprites.pal',
        'move_tutor_bg_tiles.png',
    ),
    extra_args: [
        '-bitdepth', '4',
    ],
)

move_tutor_nscr = copy_gen.process(files('move_tutor_background.NSCR'))

move_tutor_narc = custom_target('move_tutor.narc',
    output: [
        'move_tutor.narc',
        'move_tutor.naix',
    ],
    input: [
        move_tutor_tiles,
        move_tutor_bg_tiles,
        move_tutor_cells,
        move_tutor_anims,
        move_tutor_pals,
        move_tutor_nscr,
    ],
    command: [
        nitroarc_exe,
        '--create',
        '--index',
        '--files-from', files('move_tutor.order'),
        '--file', '@OUTPUT0@',
        '@PRIVATE_DIR@',
    ],
)

nitrofs_files += move_tutor_narc
naix_headers += move_tutor_narc[1]
