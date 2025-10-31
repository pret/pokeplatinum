town_map_env = environment()
town_map_env.append('PYTHONPATH', meson.project_build_root())

town_map_data = custom_target('town_map_data',
    output: [
        'town_map_blocks.dat',
        'town_map_flags.dat',
        'town_map.json'
    ],
    command: [
        make_town_map_data_py,
        '--input', files('town_map_data.json'),
        '--signpost-naix', field_board_narc[1],
        '--blocks', '@OUTDIR@/town_map_blocks.dat',
        '--flags', '@OUTDIR@/town_map_flags.dat',
        '--text-bank', '@OUTDIR@/town_map.json'
    ],
    env: town_map_env,
    depends: [ py_consts_generators ],
)

nitrofs_files += town_map_data
