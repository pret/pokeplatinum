# Tiles and tilemaps
tiles_ncgr = ncgr_gen.process(files('tiles_main.png','tiles_sub.png'),
    extra_args: [
        '-sopc',
        '-version101',
    ],
)

tilemaps_nscr = copy_gen.process(files(
    'tiles_sub.NSCR',
    'page_info.NSCR',
    'page_memo.NSCR',
    'page_skills.NSCR',
    'page_battle_moves.NSCR',
    'page_condition.NSCR',
    'page_contest_moves.NSCR',
    'page_ribbons.NSCR',
    'page_exit.NSCR',
    'move_info.NSCR',
    'page_battle_moves_select_mode.NSCR',
    'page_contest_moves_select_mode.NSCR',
))

# Sprite images
sprites_png_sopc = files(
    'sub_buttons.png',
)

sprites_png_clobbersize = files(
    'condition_arrow.png',
    'a_button.png',
    'ribbon_arrow.png',
    'contest_stat_dot.png',
    'condition_flash.png',
    'marking_circle.png',
    'marking_star.png',
    'marking_diamond.png',
    'marking_square.png',
    'marking_triangle.png',
    'marking_heart.png',
    'shiny_and_pokerus_cured_icon.png',
    'tab_arrow.png',
    'status_icons.png',
    'sheen.png',
    'ribbon_cursor.png',
    'dummy121.png',
    'ribbon_flash.png',
    'tabs.png',
    'move_cursor.png',
    'pokerus_icon.png',
)

balls_dir = 'balls/'

balls_png = files(
    balls_dir / 'master_ball.png',
    balls_dir / 'ultra_ball.png',
    balls_dir / 'great_ball.png',
    balls_dir / 'poke_ball.png',
    balls_dir / 'safari_ball.png',
    balls_dir / 'net_ball.png',
    balls_dir / 'dive_ball.png',
    balls_dir / 'nest_ball.png',
    balls_dir / 'repeat_ball.png',
    balls_dir / 'timer_ball.png',
    balls_dir / 'luxury_ball.png',
    balls_dir / 'premier_ball.png',
    balls_dir / 'dusk_ball.png',
    balls_dir / 'heal_ball.png',
    balls_dir / 'quick_ball.png',
    balls_dir / 'cherish_ball.png',
)

ribbons_dir = 'ribbons/'

ribbons_png = files(
    ribbons_dir / 'hoenn_champion.png',
    ribbons_dir / 'hoenn_contest.png',
    ribbons_dir / 'hoenn_contest_super.png',
    ribbons_dir / 'hoenn_contest_hyper.png',
    ribbons_dir / 'hoenn_contest_master.png',
    ribbons_dir / 'hoenn_victory.png',
    ribbons_dir / 'hoenn_winning.png',
    ribbons_dir / 'hoenn_artist.png',
    ribbons_dir / 'hoenn_effort.png',
    ribbons_dir / 'hoenn_marine_land_sky.png',
    ribbons_dir / 'hoenn_country_national.png',
    ribbons_dir / 'hoenn_earth_world.png',
    ribbons_dir / 'dummy_12.png',
    ribbons_dir / 'dummy_13.png',
    ribbons_dir / 'dummy_14.png',
    ribbons_dir / 'dummy_15.png',
    ribbons_dir / 'sinnoh_champion.png',
    ribbons_dir / 'sinnoh_contest.png',
    ribbons_dir / 'sinnoh_contest_great.png',
    ribbons_dir / 'sinnoh_contest_ultra.png',
    ribbons_dir / 'sinnoh_contest_master.png',
    ribbons_dir / 'ability.png',
    ribbons_dir / 'great_ability.png',
    ribbons_dir / 'double_ability.png',
    ribbons_dir / 'multi_ability.png',
    ribbons_dir / 'pair_ability.png',
    ribbons_dir / 'world_ability.png',
    ribbons_dir / 'alert.png',
    ribbons_dir / 'shock.png',
    ribbons_dir / 'downcast.png',
    ribbons_dir / 'careless.png',
    ribbons_dir / 'relax.png',
    ribbons_dir / 'snooze.png',
    ribbons_dir / 'smile.png',
    ribbons_dir / 'gorgeous.png',
    ribbons_dir / 'royal.png',
    ribbons_dir / 'gorgeous_royal.png',
    ribbons_dir / 'footprint.png',
    ribbons_dir / 'record.png',
    ribbons_dir / 'history.png',
    ribbons_dir / 'legend.png',
    ribbons_dir / 'red.png',
    ribbons_dir / 'green.png',
    ribbons_dir / 'blue.png',
    ribbons_dir / 'festival.png',
    ribbons_dir / 'carnival.png',
    ribbons_dir / 'classic.png',
    ribbons_dir / 'premier.png',
)

sprites_ncgr_sopc = ncgr_gen.process(sprites_png_sopc,
    extra_args: [
        '-version101',
        '-sopc',
    ],
)

sprites_ncgr_clobbersize = ncgr_gen.process(
    sprites_png_clobbersize,
    balls_png,
    ribbons_png,
    extra_args: [
        '-version101',
        '-clobbersize',
    ],
)

# Sprite cells
sprites_cell_json = files(
    'condition_arrow_cell.json',
    'ribbon_arrow_cell.json',
    'contest_stat_dot_cell.json',
    'condition_flash_cell.json',
    'markings_cell.json',
    'tab_arrow_cell.json',
    'status_icons_cell.json',
    'sheen_cell.json',
    ribbons_dir / 'ribbons_cell.json',
    'ribbon_flash_cell.json',
    'ribbon_cursor_cell.json',
    'tabs_cell.json',
    'move_cursor_cell.json',
    'pokerus_icon_cell.json',
)

sprites_ncer = ncer_gen.process(sprites_cell_json)

# Sprite anims
sprites_anim_json = files(
    'condition_arrow_anim.json',
    'ribbon_arrow_anim.json',
    'contest_stat_dot_anim.json',
    'condition_flash_anim.json',
    'markings_anim.json',
    'tab_arrow_anim.json',
    'status_icons_anim.json',
    'sheen_anim.json',
    ribbons_dir / 'ribbons_anim.json',
    'ribbon_flash_anim.json',
    'ribbon_cursor_anim.json',
    'tabs_anim.json',
    'move_cursor_anim.json',
    'pokerus_icon_anim.json',
)

sprites_nanr = nanr_gen.process(sprites_anim_json)

# Palettes
palettes_pal_4bpp = files(
    'tiles_main.pal',
    'tiles_sub.pal',
    balls_dir / 'balls_0.pal',
    balls_dir / 'balls_1.pal',
    balls_dir / 'balls_2.pal',
    balls_dir / 'balls_3.pal',
    'status_icons.pal',
    'sprites.pal',
)

palettes_nclr_4bpp = nclr_gen.process(palettes_pal_4bpp,
    extra_args: [
        '-bitdepth', '4',
    ],
)

palettes_pal_8bpp = files(
    ribbons_dir / 'ribbons.pal',
)

palettes_nclr_8bpp = nclr_gen.process(palettes_pal_8bpp,
    extra_args: [
        '-bitdepth', '8',
    ],
)

pokemon_summary_screen_narc = custom_target('pl_pst_gra.narc',
    output: [
        'pl_pst_gra.narc',
        'pl_pst_gra.naix',
    ],
    input: [
        tiles_ncgr,
        tilemaps_nscr,
        sprites_ncgr_sopc,
        sprites_ncgr_clobbersize,
        sprites_ncer,
        sprites_nanr,
        palettes_nclr_4bpp,
        palettes_nclr_8bpp,
    ],
    command: [
        nitroarc_exe,
        '--create',
        '--index',
        '--files-from', files('pokemon_summary_screen.order'),
        '--file', '@OUTPUT0@',
        '@PRIVATE_DIR@',
    ],
)

nitrofs_files += pokemon_summary_screen_narc
naix_headers += pokemon_summary_screen_narc[1]
