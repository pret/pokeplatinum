move_text_bank_names = [
    'move_names.json',
    'move_names_uppercase.json',
    'move_descriptions.json',
    'moves_used_in_battle.json',
]

move_data = custom_target('move_data',
    output: [
        'move_data.narc',
        'anim_scripts.order',
        move_text_bank_names,
    ],

    command: [
        moveproc_exe,
        '-M', '@DEPFILE@',
        '-o', meson.current_build_dir(),
        meson.global_build_root() / 'generated' / 'moves.h',
        meson.current_source_dir(),
    ],

    depfile: 'move_data.d',
)

move_anim_scripts_order = move_data[1]
move_data_outputs = move_data.to_list()
move_text_banks = move_data_outputs.slice(2, move_data_outputs.length())

anim_script_srcs = [
    '.shared/anim_0468_0474.s',
    '.shared/anim_0475_0500.s',
]

move_consts = fs.read(moves_txt).splitlines()
foreach move : move_consts
    if move.startswith('MOVE_')
        move_stem = move.replace('MOVE_', '').to_lower()
        anim_script_srcs += move_stem / 'anim.s'
    endif
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
        '--files-from', move_anim_scripts_order,
        '--file', '@OUTPUT0@',
        '@PRIVATE_DIR@',
    ],
)

nitrofs_files += move_data
nitrofs_files += anim_scripts_narc
