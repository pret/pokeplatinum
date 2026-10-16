accessories_dir = 'accessories/'

nclrs = nclr_gen.process(
    files(
        accessories_dir / 'accessory.pal',
        'button.pal',
        'bg_portrait_photo.png',
        'bg_portrait_accessories.png',
        'bg_top.png',
        'numbers.png',
        'message_box.png',
    ),
    extra_args: [
        '-bitdepth', '4'
    ]
)

accessory_ncgrs = ncgr_gen.process(files(
        accessories_dir / 'accessory_white_fluff.png',
        accessories_dir / 'accessory_yellow_fluff.png',
        accessories_dir / 'accessory_pink_fluff.png',
        accessories_dir / 'accessory_brown_fluff.png',
        accessories_dir / 'accessory_black_fluff.png',
        accessories_dir / 'accessory_orange_fluff.png',
        accessories_dir / 'accessory_round_pebble.png',
        accessories_dir / 'accessory_glitter_boulder.png',
        accessories_dir / 'accessory_snaggy_pebble.png',
        accessories_dir / 'accessory_jagged_boulder.png',
        accessories_dir / 'accessory_black_pebble.png',
        accessories_dir / 'accessory_mini_pebble.png',
        accessories_dir / 'accessory_pink_scale.png',
        accessories_dir / 'accessory_blue_scale.png',
        accessories_dir / 'accessory_green_scale.png',
        accessories_dir / 'accessory_purple_scale.png',
        accessories_dir / 'accessory_big_scale.png',
        accessories_dir / 'accessory_narrow_scale.png',
        accessories_dir / 'accessory_blue_feather.png',
        accessories_dir / 'accessory_red_feather.png',
        accessories_dir / 'accessory_yellow_feather.png',
        accessories_dir / 'accessory_white_feather.png',
        accessories_dir / 'accessory_black_moustache.png',
        accessories_dir / 'accessory_white_moustache.png',
        accessories_dir / 'accessory_black_beard.png',
        accessories_dir / 'accessory_white_beard.png',
        accessories_dir / 'accessory_small_leaf.png',
        accessories_dir / 'accessory_big_leaf.png',
        accessories_dir / 'accessory_narrow_leaf.png',
        accessories_dir / 'accessory_shed_claw.png',
        accessories_dir / 'accessory_shed_horn.png',
        accessories_dir / 'accessory_thin_mushroom.png',
        accessories_dir / 'accessory_thick_mushroom.png',
        accessories_dir / 'accessory_stump.png',
        accessories_dir / 'accessory_pretty_dewdrop.png',
        accessories_dir / 'accessory_snow_crystal.png',
        accessories_dir / 'accessory_sparks.png',
        accessories_dir / 'accessory_shimmering_fire.png',
        accessories_dir / 'accessory_mystic_fire.png',
        accessories_dir / 'accessory_determination.png',
        accessories_dir / 'accessory_peculiar_spoon.png',
        accessories_dir / 'accessory_puffy_smoke.png',
        accessories_dir / 'accessory_poison_extract.png',
        accessories_dir / 'accessory_wealthy_coin.png',
        accessories_dir / 'accessory_eerie_thing.png',
        accessories_dir / 'accessory_spring.png',
        accessories_dir / 'accessory_seashell.png',
        accessories_dir / 'accessory_humming_note.png',
        accessories_dir / 'accessory_shiny_powder.png',
        accessories_dir / 'accessory_glitter_powder.png',
        accessories_dir / 'accessory_red_flower.png',
        accessories_dir / 'accessory_pink_flower.png',
        accessories_dir / 'accessory_white_flower.png',
        accessories_dir / 'accessory_blue_flower.png',
        accessories_dir / 'accessory_orange_flower.png',
        accessories_dir / 'accessory_yellow_flower.png',
        accessories_dir / 'accessory_googly_specs.png',
        accessories_dir / 'accessory_black_specs.png',
        accessories_dir / 'accessory_gorgeous_specs.png',
        accessories_dir / 'accessory_sweet_candy.png',
        accessories_dir / 'accessory_confetti.png',
        accessories_dir / 'accessory_colored_parasol.png',
        accessories_dir / 'accessory_old_umbrella.png',
        accessories_dir / 'accessory_spotlight.png',
        accessories_dir / 'accessory_cape.png',
        accessories_dir / 'accessory_standing_mike.png',
        accessories_dir / 'accessory_surfboard.png',
        accessories_dir / 'accessory_carpet.png',
        accessories_dir / 'accessory_retro_pipe.png',
        accessories_dir / 'accessory_fluffy_bed.png',
        accessories_dir / 'accessory_mirror_ball.png',
        accessories_dir / 'accessory_photo_board.png',
        accessories_dir / 'accessory_pink_barrette.png',
        accessories_dir / 'accessory_red_barrette.png',
        accessories_dir / 'accessory_blue_barrette.png',
        accessories_dir / 'accessory_yellow_barrette.png',
        accessories_dir / 'accessory_green_barrette.png',
        accessories_dir / 'accessory_pink_balloon.png',
        accessories_dir / 'accessory_red_balloons.png',
        accessories_dir / 'accessory_blue_balloons.png',
        accessories_dir / 'accessory_yellow_balloon.png',
        accessories_dir / 'accessory_green_balloons.png',
        accessories_dir / 'accessory_lace_headdress.png',
        accessories_dir / 'accessory_top_hat.png',
        accessories_dir / 'accessory_silk_veil.png',
        accessories_dir / 'accessory_heroic_headband.png',
        accessories_dir / 'accessory_professor_hat.png',
        accessories_dir / 'accessory_flower_stage.png',
        accessories_dir / 'accessory_gold_pedestal.png',
        accessories_dir / 'accessory_glass_stage.png',
        accessories_dir / 'accessory_award_podium.png',
        accessories_dir / 'accessory_cube_stage.png',
        accessories_dir / 'accessory_turtwig_mask.png',
        accessories_dir / 'accessory_chimchar_mask.png',
        accessories_dir / 'accessory_piplup_mask.png',
        accessories_dir / 'accessory_big_tree.png',
        accessories_dir / 'accessory_flag.png',
        accessories_dir / 'accessory_crown.png',
        accessories_dir / 'accessory_tiara.png',
        accessories_dir / 'accessory_comet.png',
    ),
    extra_args: [
        '-version101',
        '-sopc',
        '-scan',
    ]
)

nanrs = nanr_gen.process(files(
    'heart_dot_anim.json',
    'button_page_down_anim.json',
    'button_page_up_anim.json',
    'button_accessory_anim.json',
    'button_backdrop_anim.json',
    'button_done_anim.json',
    'numbers_anim.json',
    'message_box_anim.json',
))

ncers = ncer_gen.process(files(
    'heart_dot_cell.json',
    'button_page_down_cell.json',
    'button_page_up_cell.json',
    'button_accessory_cell.json',
    'button_backdrop_cell.json',
    'button_done_cell.json',
    'numbers_cell.json',
    'message_box_cell.json',
))

nscrs = copy_gen.process(files(
    'bg_dress_up_double.NSCR',
    'bg_dress_up_single.NSCR',
    'bg_portrait_gallery_photo.NSCR',
    'bg_portrait_contest_photo.NSCR',
    'bg_portrait_accessories.NSCR',
    'bg_top.NSCR',
))

bg_ncgrs = ncgr_gen.process(files(
        'bg_dress_up_double.png',
        'bg_portrait_photo.png',
        'bg_dress_up_single.png',
        'bg_portrait_accessories.png',
        'bg_top.png',
    ),
    extra_args: [
        '-convertTo4Bpp',
        '-version101',
        '-sopc'
    ]
)

cell_ncgrs = ncgr_cell_gen.process(files(
        'button_page_down.png',
        'button_page_up.png',
        'button_accessory.png',
        'button_backdrop.png',
        'button_done.png',
        'heart_dot.png',
        'numbers.png',
        'message_box.png',
    ),
    extra_args: [
        '-convertTo4Bpp',
        '-version101',
        '-clobbersize',
    ]
)

backdrops_dir = 'backdrops'

backdrop_dirnames = [
    'dress_up',
    'ranch',
    'city_at_night',
    'snowy_town',
    'fiery',
    'outer_space',
    'cumulus_cloud',
    'desert',
    'flower_patch',
    'future_room',
    'open_sea',
    'total_darkness',
    'tatami_room',
    'gingerbread_room',
    'seafloor',
    'underground',
    'sky',
    'theater',
]

backdrop_tile_pngs = []
backdrop_icon_pngs = []
backdrop_nscrs = []

foreach backdrop_name : backdrop_dirnames
    backdrop_tile_pngs += files(backdrops_dir / backdrop_name / 'tiles.png')
    backdrop_nscrs += files(backdrops_dir / backdrop_name / 'frame0.NSCR')
    backdrop_nscrs += files(backdrops_dir / backdrop_name / 'frame1.NSCR')
    backdrop_icon_pngs += files(backdrops_dir / backdrop_name / 'icon.png')
endforeach

backdrops_full_dir = meson.current_source_dir() / backdrops_dir

backdrop_tile_ncgrs = ncgr_gen.process(
    backdrop_tile_pngs,
    extra_args: [
        '-version101',
        '-sopc',
    ],
    preserve_path_from: backdrops_full_dir
)

backdrop_icon_ncgrs = ncgr_gen.process(
    backdrop_icon_pngs,
    extra_args: [
        '-version101',
        '-sopc',
        '-scan',
    ],
    preserve_path_from: backdrops_full_dir
)

backdrop_nclrs = nclr_gen.process(
    backdrop_tile_pngs,
    extra_args: [
        '-bitdepth', '4'
    ],
    preserve_path_from: backdrops_full_dir
)

fashion_case_narc = custom_target('fashion_case.narc',
    output: [
        'fashion_case.narc',
        'fashion_case.naix',
    ],
    input: [
        nclrs,
        accessory_ncgrs,
        nanrs,
        ncers,
        nscrs,
        bg_ncgrs,
        cell_ncgrs,
        backdrop_tile_ncgrs,
        backdrop_icon_ncgrs,
        backdrop_nclrs,
        copy_gen.process(backdrop_nscrs, preserve_path_from: backdrops_full_dir),
        copy_gen.process('unk_palette.NCLR'),
        copy_gen.process('unk_data.bin'),
    ],
    command: [
        nitroarc_exe,
        '--create',
        '--index',
        '--files-from', files('fashion_case.order'),
        '--file', '@OUTPUT0@',
        '@PRIVATE_DIR@',
    ]
)

nitrofs_files += fashion_case_narc
naix_headers += fashion_case_narc[1]
