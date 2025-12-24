party_menu_narc = custom_target('party_menu_graphics.narc',
    output: [
        'party_menu_graphics.narc',
        'party_menu_graphics.naix.h',
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
        narc_exe, 'create', '--naix',
        '--order', files('party_menu_graphics.order'),
        '--output', '@OUTPUT0@',
        '@PRIVATE_DIR@',
    ]
)

party_menu_resdat = custom_target(
    output: [
        'ncgrs.resdat',
        'nclrs.resdat',
        'ncers.resdat',
        'nanrs.resdat',
        'templates.cldat',
        'templates.h',
    ],

    input: [
        bag_graphics_narc[1],
        party_menu_narc[1],
        pokemon_summary_screen_narc[1],
        pl_poke_icon_narc[1],
    ],

    command: [
        dataproc_resdat_exe,
        '--gen-header',
        '--prefix', meson.current_build_dir(),
        '-D', 'NARC_INDEX_GRAPHIC__PL_BAG_GRA:@INPUT0@',
        '-D', 'NARC_INDEX_GRAPHIC__PL_PLIST_GRA:@INPUT1@',
        '-D', 'NARC_INDEX_GRAPHIC__PL_PST_GRA:@INPUT2@',
        '-D', 'NARC_INDEX_POKETOOL__ICONGRA__PL_POKE_ICON:@INPUT3@',
        files('resdat.json'),
    ],
)

nitrofs_files += party_menu_narc
nitrofs_files += party_menu_resdat
naix_headers += party_menu_narc[1]
naix_headers += party_menu_resdat[5]
