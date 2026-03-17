fs = import('fs')

pl_waza_tbl_subdirs = [
    '0000',
    '0468',
    '0469',
    '0470',
]

anim_script_subdirs = [
    '0000',
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
    '0500',
]

move_consts = fs.read(moves_txt).splitlines()
foreach move : move_consts
    if move.startswith('MOVE_') and move != 'MOVE_NONE'
        move_name = move.replace('MOVE_', '').to_lower()
        pl_waza_tbl_subdirs += move_name
        anim_script_subdirs += move_name
    endif
endforeach

pl_waza_tbl_data_srcs = []
foreach subdir : pl_waza_tbl_subdirs
    pl_waza_tbl_data_srcs += subdir / 'data.json'
endforeach

pl_waza_tbl_narc = custom_target('pl_waza_tbl.narc',
    output: 'pl_waza_tbl.narc',
    input: pl_waza_tbl_data_srcs,
    env: jsoncnv_env,
    depends: [ py_consts_generators ],
    command: [
        movedata_py,
        '--narc', nitroarc_exe,
        '--source-dir', '@CURRENT_SOURCE_DIR@',
        '--private-dir', '@PRIVATE_DIR@',
        '--output-dir', '@OUTDIR@',
    ]
)

battle_anim_script_bin_gen = generator(make_script_bin_sh,
    arguments: [
        '-i', relative_source_root / 'include',
        '-i', relative_source_root / 'asm',
        '-i', '.' / 'res' / 'text',
        '-i', '.' / 'res',
        '-i', '.',
        '--depfile',
        '-P', # Preserve parent dir in output file name
        '--assembler', arm_none_eabi_gcc_exe.full_path(),
        '--objcopy', arm_none_eabi_objcopy_exe.full_path(),
        '@EXTRA_ARGS@',
        '@INPUT@',
    ],
    depends: [
        text_banks,
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

anim_script_srcs = []
foreach subdir : anim_script_subdirs
    anim_script_srcs += subdir / 'anim.s'
endforeach

relative_build_dir = fs.relative_to(meson.current_build_dir(), meson.project_build_root())

anim_scripts_root = meson.current_source_dir()

anim_scripts_basename = 'anim_scripts'
anim_scripts_narc_name = anim_scripts_basename + '.narc'
anim_scripts_order_name = anim_scripts_basename + '.order'

anim_scripts_private_dir = relative_build_dir / anim_scripts_narc_name + '.p'

anim_scripts_order = custom_target(anim_scripts_order_name,
    output: anim_scripts_order_name,
    input: [ moves_txt ],
    command: [ ordergen_battle_anim_scripts_py, '@INPUT@', meson.current_source_dir(), '@OUTPUT@' ],
)

anim_scripts_narc = custom_target(anim_scripts_narc_name,
    output: [
        anim_scripts_narc_name,
    ],
    input: battle_anim_script_bin_gen.process(
        anim_script_srcs,
        extra_args: ['--out-dir', anim_scripts_private_dir],
        preserve_path_from: anim_scripts_root,
    ),
    command: [
        nitroarc_exe,
        '--create',
        '--files-from', anim_scripts_order,
        '--exclude', '*.d',
        '--file', '@OUTPUT0@',
        '@PRIVATE_DIR@',
    ],
)

nitrofs_files += pl_waza_tbl_narc
nitrofs_files += anim_scripts_narc
