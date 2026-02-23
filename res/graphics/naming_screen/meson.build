naming_screen_pngs = files(
    'naming_screen_main_tiles.png',
    'naming_screen_dummy_0.png',
    'naming_screen_unk_tiles.png',
)

naming_screen_sprites_pngs = files(
    'naming_screen_sprites.png',
    'naming_screen_unk_sprite.png',
)

naming_screen_pals = files(
    'naming_screen.pal',
    'naming_screen_sprites.pal',
)

naming_screen_cell_jsons = files(
    'naming_screen_sprites_cell.json',
    'naming_screen_unk_sprite_cell.json',
)

naming_screen_anim_jsons = files(
    'naming_screen_sprites_anim.json',
    'naming_screen_unk_sprite_anim.json',
)

naming_screen_nscrs = files(
    'naming_screen_bg.NSCR',
    'naming_screen_dummy_1.NSCR',
    'naming_screen_chars_bg_0.NSCR',
    'naming_screen_chars_bg_1.NSCR',
    'naming_screen_chars_bg_2.NSCR',
    'naming_screen_chars_bg_3.NSCR',
    'naming_screen_dummy_2.NSCR',
    'naming_screen_dummy_3.NSCR',
)

naming_screen_sprites_ncgr_lzs = ncgr_lz_gen.process(naming_screen_sprites_pngs,
    extra_args: [
        '-clobbersize',
        '-version101',
        '-mappingtype', '0',
        '-nopad',
    ]
)

naming_screen_ncgr_lzs = ncgr_lz_gen.process(naming_screen_pngs,
    extra_args: [
        '-sopc',
        '-version101',
        '-nopad',
    ]
)

naming_screen_nclrs = nclr_gen.process(naming_screen_pals,
    extra_args: [
        '-bitdepth', '4',
    ]
)

naming_screen_ncer_lzs = ncer_lz_gen.process(naming_screen_cell_jsons,
    extra_args: [
        '-nopad',
    ]
)

naming_screen_nanr_lzs = nanr_lz_gen.process(naming_screen_anim_jsons,
    extra_args: [
        '-nopad',
    ]
)

naming_screen_nscr_lzs = lz_gen.process(naming_screen_nscrs,
    extra_args: [
        '-nopad',
    ]
)

naming_screen_narc = custom_target('namein.narc',
    output: [
        'namein.narc',
        'namein.naix',
    ],
    input: [
        naming_screen_ncgr_lzs,
        naming_screen_sprites_ncgr_lzs,
        naming_screen_nclrs,
        naming_screen_ncer_lzs,
        naming_screen_nanr_lzs,
        naming_screen_nscr_lzs,
    ],
    command: [
        nitroarc_exe,
        '--create',
        '--index',
        '--files-from', files('naming_screen.order'),
        '--file', '@OUTPUT0@',
        '@PRIVATE_DIR@',
    ],
)

nitrofs_files += naming_screen_narc
naix_headers += naming_screen_narc[1]
