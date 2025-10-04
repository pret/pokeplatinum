fs = import('fs')

pl_waza_tbl_subdirs = [
    '0000',
    '0468',
    '0469',
    '0470',
]

we_subdirs = [
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
        we_subdirs += move_name
    endif
endforeach

pl_waza_tbl_data_srcs = []
foreach subdir : pl_waza_tbl_subdirs
    pl_waza_tbl_data_srcs += subdir / 'data.json'
endforeach

pl_waza_tbl_narc = custom_target('pl_waza_tbl.narc',
    output: 'pl_waza_tbl.narc',
    input: pl_waza_tbl_data_srcs,
    env: json2bin_env,
    depends: [ py_consts_generators ],
    command: [
        movedata_py,
        '--narc', narc_exe,
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
        waza_particle_narc[1],
        wecell_narc_files[1],
        wecellanm_narc_files[1],
        wechar_narc_files[1],
        wepltt_narc_files[1],
    ],
    output: '@BASENAME@',
    depfile: '@BASENAME@.d',
)

we_srcs = []
foreach subdir : we_subdirs
    we_srcs += subdir / 'anim.s'
endforeach

relative_build_dir = fs.relative_to(meson.current_build_dir(), meson.project_build_root())

we_root = meson.current_source_dir()

we_basename = 'we'
we_narc_name = we_basename + '.arc'
we_narc_order_name = we_basename + '.order'

we_private_dir = relative_build_dir / we_narc_name + '.p'

we_narc_order = custom_target(we_narc_order_name,
    output: we_narc_order_name,
    input: [ moves_txt ],
    command: [ ordergen_battle_anim_scripts_py, '@INPUT@', meson.current_source_dir(), '@OUTPUT@' ],
)

we_narc = custom_target(we_narc_name,
    output: [
        we_narc_name,
    ],
    input: battle_anim_script_bin_gen.process(
        we_srcs,
        extra_args: ['--out-dir', we_private_dir],
        preserve_path_from: we_root,
    ),
    command: [
        narc_exe, 'create',
        '--order', we_narc_order,
        '--output', '@OUTPUT0@',
        '@PRIVATE_DIR@',
    ]
)

nitrofs_files += pl_waza_tbl_narc
nitrofs_files += we_narc
