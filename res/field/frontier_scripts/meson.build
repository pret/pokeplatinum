relative_build_dir = fs.relative_to(meson.current_build_dir(), meson.project_build_root())
#
# NOTE: This is a functional copy of script_bin_gen, which is separated from the
# base generator due to an additional dependency on headers generated for
# events IDs. Meson unfortunately does not have a clean way to copy an existing
# object and tweak a single property.
# WARN: If you update this generator, you should also consider updating its parent
# in res/meson.build
frontier_script_bin_gen = generator(make_script_bin_sh,
    arguments: [
        '-i', relative_source_root / 'include',
        '-i', relative_source_root / 'asm',
        '-i', '.',
        '--depfile', '@DEPFILE@',
        '--enumproc', enumproc_exe.full_path(),
        '--assembler', arm_none_eabi_gcc_exe.full_path(),
        '--objcopy', arm_none_eabi_objcopy_exe.full_path(),
        '@EXTRA_ARGS@',
        '@INPUT@',
    ],
    depends: [
        enumproc_exe,
        c_consts_generators,
        frontier_particles_narc[1],
        text_banks,
    ],
    output: '@BASENAME@',
    depfile: '@BASENAME@.d',
)

fr_script_target_name = 'fr_script.narc'
fr_script_private_dir = relative_build_dir / fr_script_target_name + '.p'

fr_script_narc = custom_target('fr_script.narc',
    output: [
        'fr_script.narc',
        'fr_script.naix',
    ],
    input: [
        frontier_script_bin_gen.process(files(
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
