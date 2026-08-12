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
        'move_scripts.order',
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
move_scripts_order = move_data[2]
move_data_outputs = move_data.to_list()
move_text_banks = move_data_outputs.slice(3, move_data_outputs.length())

anim_script_srcs = files(
    '.shared/anim_0468_0474.s',
    '.shared/anim_0475_0500.s',
)

move_script_srcs = files('.shared/script_0468_0500.s')
move_script_srcdir = meson.current_source_dir()

move_consts = fs.read(moves_txt).splitlines()
foreach move : move_consts
    if move.startswith('MOVE_')
        move_stem = move.replace('MOVE_', '').to_lower()
        anim_script_srcs += files(move_stem / 'anim.s')
        move_script_srcs += files(move_stem / 'script.s')
    endif
endforeach

relative_build_dir = fs.relative_to(meson.current_build_dir(), meson.project_build_root())

anim_scripts_narc = custom_target('anim_scripts.narc',
    output: 'anim_scripts.narc',
    input: script_bin_gen.process(
        anim_script_srcs,
        extra_args: [
            '--out-dir', relative_build_dir / 'anim_scripts.narc.p',
            '--parent-dir',
        ],
        preserve_path_from: meson.current_source_dir(),
        depends: [
            battle_particles_narc,
            anim_ncer_narc_files,
            anim_nanr_narc_files,
            anim_ncgr_narc_files,
            anim_nclr_narc_files,
        ],
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
