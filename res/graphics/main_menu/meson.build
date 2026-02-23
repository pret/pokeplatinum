main_menu_palettes_nclr = nclr_gen.process(
    files(
        'mystery_gift_bg_tiles.png',
        'wonder_card_tiles.png',
        'download_arrow.png',
        'wonder_cards_text.pal',
        'wonder_card_share_buttons.png',
        'wonder_card_share_bg_tiles.png',
        'gba_migration_bg_tiles.png',
        'gba_migration_sprites.png',
        'gift_reception_bg_tiles.png',
        'giftbox.png',
        'mystery_gift_particles.png',
        'main_menu_scroll_arrows.png',
        'wireless_icons.png',
    ),
    extra_args: [
        '-bitdepth', '4'
    ]
)

main_menu_tiles_sopc_ncgr = ncgr_lz_gen.process(
    files(
        'mystery_gift_bg_tiles.png',
        'wonder_card_tiles.png',
        'wonder_card_share_bg_tiles.png',
        'unused_00027.png',
    ),
    extra_args: [
        '-version101',
        '-sopc',
        '-nopad',
    ]
)

main_menu_tiles_convert_4bpp_ncgr = ncgr_lz_gen.process(
    files(
        'gba_migration_bg_tiles.png',
        'gift_reception_bg_tiles.png',
    ),
    extra_args: [
        '-version101',
        '-sopc',
        '-convertTo4Bpp',
        '-nopad',
    ]
)

main_menu_wireless_icons_ncgr = ncgr_gen.process(
    files('wireless_icons.png'),
    extra_args: ['-version101', '-sopc']
)

main_menu_tiles_clobbersize_cell_ncgr = ncgr_cell_lz_gen.process(
    files(
        'wonder_card_share_buttons.png',
        'mystery_gift_particles.png',
        'main_menu_scroll_arrows.png',
    ),
    extra_args: [
        '-version101',
        '-clobbersize',
        '-nopad',
    ]
)

main_menu_giftbox_ncgr = ncgr_cell_lz_gen.process(
    files(
        'giftbox.png',
    ),
    extra_args: [
        '-version101',
        '-clobbersize',
        '-convertTo4Bpp',
        '-nopad',
    ]
)

main_menu_download_arrow_ncgr = ncgr_lz_gen.process(
    files(
        'download_arrow.png',
    ),
    extra_args: [
        '-version101',
        '-clobbersize',
        '-nopad',
    ]
)

main_menu_gba_migration_sprites_ncgr = ncgr_lz_gen.process(
    files(
        'gba_migration_sprites.png',
    ),
    extra_args: [
        '-version101',
        '-clobbersize',
        '-num_tiles', '581',
        '-convertTo4Bpp',
        '-nopad',
    ],
)

main_menu_tilemaps_nscr = lz_gen.process(
    files(
        'mystery_gift_bg.NSCR',
        'wonder_card_front.NSCR',
        'wonder_card_back.NSCR',
        'wonder_card_share_bg.NSCR',
        'gba_migration_box.NSCR',
        'gba_migration_confirm.NSCR',
        'unused_00028.NSCR',
        'gift_reception_bg.NSCR',
    ),
    extra_args: ['-nopad']
)

main_menu_nanr = nanr_lz_gen.process(
    files(
        'download_arrow_anim.json',
        'wonder_card_share_buttons_anim.json',
        'gba_migration_sprites_anim.json',
        'giftbox_anim.json',
        'mystery_gift_particles_anim.json',
        'main_menu_scroll_arrows_anim.json',
    ),
    extra_args: ['-nopad'],
)

main_menu_ncer = ncer_lz_gen.process(
    files(
        'download_arrow_cell.json',
        'wonder_card_share_buttons_cell.json',
        'gba_migration_sprites_cell.json',
        'giftbox_cell.json',
        'mystery_gift_particles_cell.json',
        'main_menu_scroll_arrows_cell.json',
    ),
    extra_args: ['-nopad'],
)

main_menu_graphics_narc = custom_target('main_menu_graphics.narc',
    output: [
        'main_menu_graphics.narc',
        'main_menu_graphics.naix',
    ],
    input: [
        main_menu_palettes_nclr,
        main_menu_tiles_sopc_ncgr,
        main_menu_tiles_convert_4bpp_ncgr,
        main_menu_wireless_icons_ncgr,
        main_menu_tiles_clobbersize_cell_ncgr,
        main_menu_giftbox_ncgr,
        main_menu_download_arrow_ncgr,
        main_menu_gba_migration_sprites_ncgr,
        main_menu_tilemaps_nscr,
        main_menu_nanr,
        main_menu_ncer,
    ],
    command: [
        nitroarc_exe,
        '--create',
        '--index',
        '--files-from', files('main_menu_graphics.order'),
        '--file', '@OUTPUT0@',
        '@PRIVATE_DIR@',
    ],
)

nitrofs_files += main_menu_graphics_narc
naix_headers += main_menu_graphics_narc[1]
