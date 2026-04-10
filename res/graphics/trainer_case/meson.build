trainer_case_pal_pngs_8bpp = files(
    'badge_case_lid_tiles.png',
    'player_dp_tiles.png',
)

trainer_case_pal_pngs_cell_converted = files(
    'badge_case_sprites.png'
)

trainer_case_pal_pngs_cell = files(
    'signature_unused.png'
)

trainer_case_pngs_4bpp = files(
    'case_top_screen_tiles.png',
    'badge_case_tiles.png',
)

trainer_case_pngs_8bpp = files(
    'trainer_card_tiles.png',
    'player_tiles.png',
)

trainer_case_pals_4bpp = files(
    'case_diamond.pal',
    'case_pearl.pal',
    'case_unused.pal',
    'case_platinum.pal',
    'case_heartgold.pal',
    'case_soulsilver.pal',
    'unused.pal',
    'coal_badge.pal',
    'forest_badge.pal',
    'cobble_badge.pal',
    'fen_badge.pal',
    'relic_badge.pal',
    'mine_badge.pal',
    'icicle_badge.pal',
    'beacon_badge.pal',
    'unused2.pal',
)

#these should be in the same order as the TrainerAppearance enum in include/appearance.h
#limit of 16 here because each needs its own row in a 8bpp palette
trainer_appearance_pngs = files(
    'school_kid_m.png',
    'bug_catcher.png',
    'ace_trainer_m.png',
    'roughneck.png',
    'ruin_maniac.png',
    'black_belt.png',
    'rich_boy.png',
    'psychic_m.png',
    'lass.png',
    'battle_girl.png',
    'beauty.png',
    'ace_trainer_f.png',
    'idol.png',
    'socialite.png',
    'cowgirl.png',
    'lady.png',
)

trainer_case_pals_8bpp = files(
    'trainer_card_normal.pal',
    'trainer_card_cobalt.pal',
    'trainer_card_bronze.pal',
    'trainer_card_silver.pal',
    'trainer_card_gold.pal',
    'trainer_card_black.pal',
    'trainer_card_normal_no_dex.pal',
)

trainer_case_cells = files(
    'badge_case_sprites_cell.json',
    'signature_unused_cell.json',
)

trainer_case_anims = files(
    'badge_case_sprites_anim.json',
    'signature_unused_anim.json',
)

trainer_case_ncgrs_4bpp = ncgr_gen.process(
    trainer_case_pngs_4bpp,
    extra_args: [
        '-version101',
        '-sopc',
    ]
)

trainer_case_ncgrs_4bpp_cell = ncgr_cell_gen.process(
    trainer_case_pal_pngs_cell,
    extra_args: [
        '-version101',
        '-clobbersize',
        '-mappingtype', '128'
    ]
)

trainer_case_ncgrs_4bpp_cell_converted = ncgr_cell_gen.process(
    trainer_case_pal_pngs_cell_converted,
    extra_args: [
        '-version101',
        '-clobbersize',
        '-mappingtype', '128',
        '-convertTo4Bpp'
    ]
)

trainer_case_ncgrs_8bpp = ncgr_gen.process(
    trainer_case_pngs_8bpp + trainer_case_pal_pngs_8bpp + trainer_appearance_pngs,
    extra_args: [
        '-version101',
        '-sopc',
        '-bitdepth', '8'
    ]
)

trainer_case_nclrs_4bpp = nclr_gen.process(
    trainer_case_pals_4bpp + trainer_case_pal_pngs_cell + trainer_case_pal_pngs_cell_converted,
    extra_args: [ '-bitdepth', '4' ]
)

trainer_case_nclrs_8bpp = nclr_gen.process(
    trainer_case_pals_8bpp + trainer_case_pal_pngs_8bpp,
    extra_args: [ '-bitdepth', '8' ]
)

trainer_case_ncers = ncer_gen.process(trainer_case_cells)

trainer_case_nanrs = nanr_gen.process(trainer_case_anims)

trainer_case_nscrs = copy_gen.process(files(
    'trainer_card_front.NSCR',
    'trainer_card_back.NSCR',
    'case_top_screen.NSCR',
    'badge_case.NSCR',
    'badge_case_lid.NSCR',
    'lucas.NSCR',
    'dawn.NSCR',
    'lucas_dp.NSCR',
    'dawn_dp.NSCR',
    'trainer_appearance.NSCR',
))

trainer_appearance_nclrs = nclr_gen.process(
    trainer_appearance_pngs,
    extra_args: [ '-bitdepth', '8' ]
)

trainer_appearances_nclr = custom_target('trainer_appearances_nclr',
    command: [
        nclr_concat_py,
        '--input', '@INPUT@',
        '--output', '@OUTPUT@',
        '-r', '4'
    ],
    input: [ trainer_appearance_nclrs ],
    output: [ 'trainer_appearances.NCLR' ]
) 

trainer_case_narc = custom_target('trainer_case.narc',
    output: [
        'trainer_case.narc',
        'trainer_case.naix',
    ],
    input: [
        trainer_case_ncgrs_4bpp,
        trainer_case_ncgrs_4bpp_cell,
        trainer_case_ncgrs_4bpp_cell_converted,
        trainer_case_ncgrs_8bpp,
        trainer_case_nclrs_4bpp,
        trainer_case_nclrs_8bpp,
        trainer_case_ncers,
        trainer_case_nanrs,
        trainer_case_nscrs,
        copy_gen.process(trainer_appearances_nclr),
    ],
    command: [
        nitroarc_exe,
        '--create',
        '--index',
        '--files-from', files('trainer_case.order'),
        '--file', '@OUTPUT0@',
        '@PRIVATE_DIR@',
    ],
)

nitrofs_files += trainer_case_narc
naix_headers += trainer_case_narc[1]
