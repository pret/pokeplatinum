poketch_cells = ncer_lz_gen.process(
    files(
        'digits_cell.json',
        'poke_icon_cell.json',
        'stopwatch_cell.json',
        'analog_watch_cell.json',
        'memo_pad_cell.json',
        'friendship_checker_cell.json',
        'dowsing_machine_cell.json',
        'counter_cell.json',
        'pedomether_cell.json',
        'coin_toss_cell.json',
        'move_tester_cell.json',
        'color_changer_cell.json',
        'matchup_checker_cell.json',
        'alarm_clock_cell.json',
        'daycare_checker_cell.json',
        'roulette_cell.json',
        'kitchen_timer_cell.json',
        'link_searcher_cell.json',
        'backlight_toggle_cell.json',
        'party_status_cell.json',
        'calendar_cell.json',
        'map_cell.json',
        'trainer_counter_cell.json',
    ),
    extra_args: [
        '-nopad',
    ]
)

poketch_anims = nanr_lz_gen.process(
    files(
        'digits_anim.json',
        'poke_icon_anim.json',
        'stopwatch_anim.json',
        'analog_watch_anim.json',
        'memo_pad_anim.json',
        'friendship_checker_anim.json',
        'dowsing_machine_anim.json',
        'counter_anim.json',
        'pedomether_anim.json',
        'coin_toss_anim.json',
        'move_tester_anim.json',
        'color_changer_anim.json',
        'matchup_checker_anim.json',
        'alarm_clock_anim.json',
        'daycare_checker_anim.json',
        'roulette_anim.json',
        'kitchen_timer_anim.json',
        'link_searcher_anim.json',
        'backlight_toggle_anim.json',
        'party_status_anim.json',
        'calendar_anim.json',
        'map_anim.json',
        'trainer_counter_anim.json',
    ),
    extra_args: [
        '-nopad',
    ]
)

poketch_nscrs = copy_gen.process(files(
    'unavailable.NSCR.lz',
    'poketch_border.NSCR.lz',
    'calculator.NSCR.lz',
    'stopwatch.NSCR.lz',
    'digital_watch.NSCR.lz',
    'digital_watch_digits.NSCR.lz',
    'analog_watch.NSCR.lz',
    'memo_pad.NSCR.lz',
    'dowsing_machine.NSCR.lz',
    'counter.NSCR.lz',
    'pedomether.NSCR.lz',
    'coin_toss.NSCR.lz',
    'unused_menu.NSCR.lz',
    'move_tester.NSCR.lz',
    'color_changer.NSCR.lz',
    'matchup_checker.NSCR.lz',
    'alarm_clock.NSCR.lz',
    'daycare_checker.NSCR.lz',
    'roulette.NSCR.lz',
    'kitchen_timer.NSCR.lz',
    'link_searcher.NSCR.lz',
    'backlight_toggle.NSCR.lz',
    'party_status.NSCR.lz',
    'calendar.NSCR.lz',
    'marking_map.NSCR.lz',
    'berry_searcher.NSCR.lz',
    'trainer_counter.NSCR.lz',
))

poketch_bg_tiles = ncgr_lz_gen.process(
    files(
        'generic_bg_tiles.png',
        'unavailable_bg_tiles.png',
        'calculator_bg_tiles.png',
        'stopwatch_bg_tiles.png',
        'watch_bg_tiles.png',
        'memo_pad_bg_tiles.png',
        'dowsing_machine_bg_tiles.png',
        'counter_bg_tiles.png',
        'pedomether_bg_tiles.png',
        'coin_toss_bg_tiles.png',
        'unused_menu_bg_tiles.png',
        'move_tester_bg_tiles.png',
        'color_changer_bg_tiles.png',
        'matchup_checker_bg_tiles.png',
        'alarm_clock_bg_tiles.png',
        'daycare_checker_bg_tiles.png',
        'roulette_bg_tiles.png',
        'kitchen_timer_bg_tiles.png',
        'link_searcher_bg_tiles.png',
        'backlight_toggle_bg_tiles.png',
        'party_status_bg_tiles.png',
        'calendar_bg_tiles.png',
        'map_bg_tiles.png',
        'trainer_counter_bg_tiles.png',
    ),
    extra_args: [
        '-sopc',
        '-version101',
        '-nopad',
    ]
)

poketch_palettes = nclr_gen.process(
    files(
        'unavailable_bg_tiles.png',
        'unused_apps.png',
    ), extra_args: [
        '-bitdepth', '4',
        '-nopad',
        '-pcmp',
    ]
)

poketch_nclrs = copy_gen.process(files(
    'screen_themes.NCLR',
    'screen_themes_dupe.NCLR',
    'poketch_border.NCLR',
))

poketch_graphics = ncgr_cell_lz_gen.process(
    files(
        'digits.png',
        'analog_watch.png',
        'memo_pad.png',
        'dowsing_machine.png',
        'counter.png',
        'pedomether.png',
        'coin_toss.png',
        'move_tester.png',
        'color_changer.png',
        'matchup_checker.png',
        'alarm_clock.png',
        'daycare_checker.png',
        'roulette.png',
        'kitchen_timer.png',
        'link_searcher.png',
        'backlight_toggle.png',
        'party_status.png',
        'calendar.png',
        'map.png',
        'trainer_counter.png',
    ),
    extra_args: [
        '-clobbersize',
        '-version101',
        '-nopad',
    ]
)

poketch_unused_ncgr = ncgr_gen.process(
    files('unused_apps.png'),
    extra_args: [
        '-convertTo4Bpp',
        '-version101',
        '-sopc',
    ],
)

poketch_ncgrs = copy_gen.process(files(
    'poketch_border_tiles.NCGR.lz',
    'stopwatch.NCGR.lz',
    'friendship_checker.NCGR.lz',
))

poketch_order = files('poketch.order')

poketch_narc = custom_target('poketch_narc',
    output: [
        'poketch.narc',
        'poketch.naix.h',
    ],
    input: [
        poketch_graphics,
        poketch_ncgrs,
        poketch_unused_ncgr,
        poketch_bg_tiles,
        poketch_cells,
        poketch_anims,
        poketch_nscrs,
        poketch_nclrs,
        poketch_palettes,
    ],
    command: [
        narc_exe, 'create',
        '--naix',
        '--order', poketch_order,
        '--output', '@OUTPUT0@',
        '@PRIVATE_DIR@',
    ]
)

nitrofs_files += poketch_narc
naix_headers += poketch_narc[1]
