
we_sub_files = files(
    'dummy00.s',
    'sleep.s',
    'poison.s',
    'burn.s',
    'freeze.s',
    'paralysis.s',
    'confusion.s',
    'infatuation.s',
    'level_up.s',
    'bag_item_use.s',
    'held_item_use.s',
    'shiny.s',
    'stat_boost.s',
    'stat_drop.s',
    'restore_hp.s',
    'sub_out.s',
    'sub_in.s',
    'escape_item.s',
    'weather_fog.s',
    'weather_rain.s',
    'weather_hail.s',
    'weather_sandstorm.s',
    'weather_sun.s',
    'dummy23.s',
    'dummy24.s',
    'substitute_in.s',
    'substitute_out.s',
    'happy.s',
    'eating.s',
    'angry.s',
    'damage_curse.s',
    'damage_nightmare.s',
    'damage_leech_seed.s',
    'damage_bind.s',
    'damage_wrap.s',
    'damage_fire_spin.s',
    'damage_magma_storm.s',
    'damage_clamp.s',
    'damage_whirlpool.s',
    'damage_sand_tomb.s',
    'damage_ingrain.s',
    'dummy41.s',
    'dummy42.s',
    'dummy43.s',
    'dummy44.s',
    'dummy45.s',
    'dummy46.s',
    'dummy47.s',
    'dummy48.s',
    'dummy49.s',
)

relative_build_dir = fs.relative_to(meson.current_build_dir(), meson.project_build_root())

we_sub_basename = 'we_sub'
we_sub_narc_name = we_sub_basename + '.narc'
we_sub_naix_name = we_sub_basename + '.naix.h'
we_sub_order = files('we_sub.order')

we_sub_private_dir = relative_build_dir / we_sub_narc_name + '.p'

we_sub_narc = custom_target(we_sub_narc_name,
    output: [
        we_sub_narc_name,
        we_sub_naix_name,
    ],
    input: script_bin_gen.process(
        we_sub_files,
        extra_args: [ '--out-dir', we_sub_private_dir, ]
    ),
    command: [
        narc_exe, 'create',
        '--naix',
        '--order', we_sub_order,
        '--output', '@OUTPUT0@',
        '@PRIVATE_DIR@',
    ]
)

nitrofs_files += we_sub_narc
naix_headers += we_sub_narc[1]
