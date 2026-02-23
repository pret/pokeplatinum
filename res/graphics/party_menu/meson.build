subdir('form_changes')

party_menu_narc = custom_target('party_menu_graphics.narc',
    output: [
        'party_menu_graphics.narc',
        'party_menu_graphics.naix',
    ],

    input: [
        ncgr_gen.process(
            files('touch_button.png'),
            extra_args: ['-version101', '-sopc', '-convertTo4Bpp']
        ),
        ncgr_gen.process(
            files(
                'subscreen_tiles.png',
                'menu_tiles.png'
            ),
            extra_args: ['-version101', '-sopc'],
        ),
        ncgr_cell_gen.process(
            files(
                'cursor.png',
                'button.png',
            ),
            extra_args: ['-version101', '-clobbersize'],
        ),
        ncgr_gen.process(
            files(
                'member_ball.png',
                'icons.png',
            ),
            extra_args: ['-version101', '-clobbersize'],
        ),
        nclr_gen.process(
            files(
                'touch_button.png',
                'shared.pal',
                'subscreen.pal',
                'menu.pal',
                'icons.png',
                'touch_button_shockwave.pal',
            ),
            extra_args: ['-bitdepth', '4'],
        ),
        ncer_gen.process(
            files(
                'member_ball_cell.json',
                'cursor_cell.json',
                'button_cell.json',
                'icons_cell.json',
            )
        ),
        nanr_gen.process(
            files(
                'member_ball_anim.json',
                'cursor_anim.json',
                'button_anim.json',
                'icons_anim.json',
            )
        ),
        copy_gen.process(
            files(
                'subscreen.NSCR',
                'menu.NSCR',
                'menu_panels.NSCR',
            )
        ),
    ],

    command: [
        nitroarc_exe,
        '--create',
        '--index',
        '--files-from', files('party_menu_graphics.order'),
        '--file', '@OUTPUT0@',
        '@PRIVATE_DIR@',
    ],
)

nitrofs_files += party_menu_narc
naix_headers += party_menu_narc[1]
