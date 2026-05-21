anim_script_subdirs = [
    'none',
    '0468',
    '0469',
    '0470',
    '0471',
    '0472',
    '0473',
    '0474',
    '0475',
    '0476',
    '0477',
    '0478',
    '0479',
    '0480',
    '0481',
    '0482',
    '0483',
    '0484',
    '0485',
    '0486',
    '0487',
    '0488',
    '0489',
    '0490',
    '0491',
    '0492',
    '0493',
    '0494',
    '0495',
    '0496',
    '0497',
    '0498',
    '0499',
    '0500', ]

move_consts = fs.read(moves_txt).splitlines()
foreach move : move_consts
    if move.startswith('MOVE_') and move != 'MOVE_NONE'
        move_name = move.replace('MOVE_', '').to_lower()
        # pl_waza_tbl_subdirs += move_name
        anim_script_subdirs += move_name
    endif
endforeach

move_data_out = custom_target('move_data',
    output: ['move_data.narc'],

    command: [
        moveproc_exe,
        '-M', '@DEPFILE@',
        '-o', meson.current_build_dir(),
        meson.global_build_root() / 'generated' / 'moves.h',
        meson.current_source_dir(),
    ],

    depfile: 'move_data.d',
)

anim_script_srcs = []
foreach subdir : anim_script_subdirs
    anim_script_srcs += subdir / 'anim.s'
endforeach

# This generator is shared by both move-specific animations (in this directory)
# and common animations (in the `battle/scripts/common_anims` directory).
battle_anim_script_bin_gen = generator(make_script_bin_sh,
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
        h_headers,
        battle_particles_narc[1],
        anim_ncer_narc_files[1],
        anim_nanr_narc_files[1],
        anim_ncgr_narc_files[1],
        anim_nclr_narc_files[1],
    ],
    output: '@BASENAME@',
    depfile: '@BASENAME@.d',
)

relative_build_dir = fs.relative_to(meson.current_build_dir(), meson.project_build_root())

anim_scripts_order = custom_target('anim_scripts.order',
    output: 'anim_scripts.order',
    input: [ moves_txt ],
    command: [ ordergen_battle_anim_scripts_py, '@INPUT@', meson.current_source_dir(), '@OUTPUT@' ],
)

anim_scripts_narc = custom_target('anim_scripts.narc',
    output: 'anim_scripts.narc',
    input: battle_anim_script_bin_gen.process(
        anim_script_srcs,
        extra_args: [
            '--out-dir', relative_build_dir / 'anim_scripts.narc.p',
            '--parent-dir',
        ],
        preserve_path_from: meson.current_source_dir(),
    ),
    command: [
        nitroarc_exe,
        '--create',
        '--files-from', anim_scripts_order,
        '--file', '@OUTPUT0@',
        '@PRIVATE_DIR@',
    ],
)

nitrofs_files += move_data_out
nitrofs_files += anim_scripts_narc
