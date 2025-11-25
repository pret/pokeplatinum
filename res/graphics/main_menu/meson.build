palettes_nclr = nclr_gen.process(
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

tiles_sopc_ncgr = ncgr_lz_gen.process(
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

tiles_convert_4bpp_ncgr = ncgr_lz_gen.process(
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

wireless_icons_ncgr = ncgr_gen.process(
    files('wireless_icons.png'),
    extra_args: ['-version101', '-sopc']
)

tiles_clobbersize_cell_ncgr = ncgr_cell_lz_gen.process(
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

giftbox_ncgr = ncgr_cell_lz_gen.process(
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

download_arrow_ncgr = ncgr_lz_gen.process(
    files(
        'download_arrow.png',
    ),
    extra_args: [
        '-version101',
        '-clobbersize',
        '-nopad',
    ]
)

gba_migration_sprites_ncgr = ncgr_lz_gen.process(
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

tilemaps_nscr = lz_gen.process(
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

nanr = nanr_lz_gen.process(
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

ncer = ncer_lz_gen.process(
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

main_menu_graphics_order = files('main_menu_graphics.order')

main_menu_graphics_narc = custom_target('main_menu_graphics.narc',
    output: [
        'main_menu_graphics.narc',
        'main_menu_graphics.naix',
    ],
    input: [
        palettes_nclr,
        tiles_sopc_ncgr,
        tiles_convert_4bpp_ncgr,
        wireless_icons_ncgr,
        tiles_clobbersize_cell_ncgr,
        giftbox_ncgr,
        download_arrow_ncgr,
        gba_migration_sprites_ncgr,
        tilemaps_nscr,
        nanr,
        ncer,
        main_menu_graphics_order,
    ],
    command: [
        narc_exe, 'create',
        '--naix',
        '--order', main_menu_graphics_order,
        '--output', '@OUTPUT0@',
        '@PRIVATE_DIR@'
    ],
)

nitrofs_files += main_menu_graphics_narc
naix_headers += main_menu_graphics_narc[1]
