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
        'pedometer_cell.json',
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
        'pedometer_anim.json',
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

poketch_nscrs = lz_gen.process(files(
    'unavailable.NSCR',
    'poketch_border.NSCR',
    'calculator.NSCR',
    'stopwatch.NSCR',
    'digital_watch.NSCR',
    'digital_watch_digits.NSCR',
    'analog_watch.NSCR',
    'memo_pad.NSCR',
    'dowsing_machine.NSCR',
    'counter.NSCR',
    'pedometer.NSCR',
    'coin_toss.NSCR',
    'unused_menu.NSCR',
    'move_tester.NSCR',
    'color_changer.NSCR',
    'matchup_checker.NSCR',
    'alarm_clock.NSCR',
    'daycare_checker.NSCR',
    'roulette.NSCR',
    'kitchen_timer.NSCR',
    'link_searcher.NSCR',
    'backlight_toggle.NSCR',
    'party_status.NSCR',
    'calendar.NSCR',
    'marking_map.NSCR',
    'berry_searcher.NSCR',
    'trainer_counter.NSCR',
    ),
    extra_args: [ 
        '-nopad',
    ]
)

poketch_bg_tiles = ncgr_lz_gen.process(
    files(
        'unavailable_bg_tiles.png',
        'poketch_border.png',
        'calculator_bg_tiles.png',
        'stopwatch_bg_tiles.png',
        'watch_bg_tiles.png',
        'memo_pad_bg_tiles.png',
        'dowsing_machine_bg_tiles.png',
        'counter_bg_tiles.png',
        'pedometer_bg_tiles.png',
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
    ), 
    extra_args: [
        '-bitdepth', '4',
        '-nopad',
        '-pcmp',
    ]
)

poketch_generic_bg_tiles = ncgr_lz_gen.process(
    files(
        'generic_bg_tiles.png',
    ),
    extra_args: [
        '-convertTo4Bpp',
        '-sopc',
        '-version101',
        '-nopad',
    ]
)

poketch_screen_palette = nclr_gen.process(
    files('generic_bg_tiles.png'),
    extra_args: ['-bitdepth', '4'],
)

poketch_screen_palette_dupe = generator(nitrogfx_exe,
    arguments: ['@INPUT@', '@OUTPUT@', '-bitdepth', '4'],
    output: '@BASENAME@_dupe.NCLR',
).process(files('generic_bg_tiles.png'))

poketch_border_palette = nclr_gen.process(
    files('poketch_border.pal'),
    extra_args: [
        '-bitdepth', '4',
        '-nopad',
        '-pcmp',
        '-start', '14',
    ]
)

poketch_graphics = ncgr_cell_lz_gen.process(
    files(
        'digits.png',
        'analog_watch.png',
        'memo_pad.png',
        'friendship_checker.png',
        'dowsing_machine.png',
        'counter.png',
        'pedometer.png',
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
    'stopwatch.NCGR.lz',
))

poketch_narc = custom_target('poketch_narc',
    output: [
        'poketch.narc',
        'poketch.naix',
    ],
    input: [
        poketch_graphics,
        poketch_ncgrs,
        poketch_unused_ncgr,
        poketch_bg_tiles,
        poketch_generic_bg_tiles,
        poketch_cells,
        poketch_anims,
        poketch_nscrs,
        poketch_palettes,
        poketch_border_palette,
        poketch_screen_palette,
        poketch_screen_palette_dupe,
    ],
    command: [
        nitroarc_exe,
        '--create',
        '--index',
        '--files-from', files('poketch.order'),
        '--file', '@OUTPUT0@',
        '@PRIVATE_DIR@',
    ],
)

nitrofs_files += poketch_narc
naix_headers += poketch_narc[1]
