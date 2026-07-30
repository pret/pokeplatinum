yes_no_touch_menu_pngs = files('yes_no_button_tiles.png')

yes_no_button_nscrs = files(
    'yes_button.NSCR',
    'no_button.NSCR',
    'yes_button_pressed_1.NSCR',
    'no_button_pressed_1.NSCR',
    'yes_button_pressed_2.NSCR',
    'no_button_pressed_2.NSCR',
    'yes_button_pressed_3.NSCR',
    'no_button_pressed_3.NSCR',
)

yes_no_touch_menu_nclrs = nclr_gen.process(
    yes_no_touch_menu_pngs,
    extra_args: [ '-bitdepth', '4' ]
)

yes_no_touch_menu_ncgr_lzs = ncgr_lz_gen.process(
    yes_no_touch_menu_pngs,
    extra_args: [
        '-convertTo4Bpp',
        '-version101',
        '-sopc',
        '-nopad',
    ]
)

yes_no_touch_menu_nscr_lzs = lz_gen.process(
    yes_no_button_nscrs,
    extra_args: [ '-nopad' ]
)

yes_no_touch_menu_narc = custom_target('yes_no_touch_menu.narc',
    output: [
        'yes_no_touch_menu.narc',
        'yes_no_touch_menu.naix',
    ],
    input: [
        yes_no_touch_menu_nclrs,
        yes_no_touch_menu_ncgr_lzs,
        yes_no_touch_menu_nscr_lzs,
    ],
    command: [
        nitroarc_exe,
        '--create',
        '--index',
        '--files-from', files('yes_no_touch_menu.order'),
        '--file', '@OUTPUT0@',
        '@PRIVATE_DIR@',
    ],
)

nitrofs_files += yes_no_touch_menu_narc
naix_headers += yes_no_touch_menu_narc[1]
