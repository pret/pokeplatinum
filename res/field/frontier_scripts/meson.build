relative_build_dir = fs.relative_to(meson.current_build_dir(), meson.project_build_root())

fr_script_target_name = 'fr_script.narc'
fr_script_private_dir = relative_build_dir / fr_script_target_name + '.p'

fr_script_narc = custom_target('fr_script.narc',
    output: [
        'fr_script.narc',
        'fr_script.naix',
    ],
    input: [
        script_bin_gen.process(files(
            'frontier_scripts_battle_castle.s',
            'frontier_scripts_battle_factory.s',
            'frontier_scripts_battle_hall.s',
            'frontier_scripts_battle_arcade.s',
        ), extra_args: ['--out-dir', fr_script_private_dir]),
        copy_gen.process(files(
            'frontier_scripts_unused_04.bin',
            'frontier_scripts_unused_05.bin',
        )),
        script_bin_gen.process(files(
            'frontier_scripts_battle_tower_corridor.s',
            'frontier_scripts_battle_tower_corridor_multi.s',
            'frontier_scripts_battle_tower_battle_room.s',
            'frontier_scripts_battle_tower_multi_battle_room.s',
            'frontier_scripts_unknown_10.s',
        ), extra_args: ['--out-dir', fr_script_private_dir]),
    ],
    command: [
        nitroarc_exe,
        '--create',
        '--index',
        '--files-from', files('fr_script.order'),
        '--file', '@OUTPUT0@',
        '@PRIVATE_DIR@',
    ],
)

nitrofs_files += fr_script_narc
naix_headers += fr_script_narc[1]
