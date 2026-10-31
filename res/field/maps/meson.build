enc_ex_er_bin_gen = generator(
    encdata_ex_elusive_rod_py,
    arguments: [ '@INPUT@', '@OUTPUT0@', '@OUTPUT1@', ],
    output: [
        '@BASENAME@_mt_coronet_b1f_species.bin',
        '@BASENAME@_mt_coronet_b1f_tiles.bin',
    ],
    depends: [ py_consts_generators ],
)
enc_ex_ht_bin_gen = generator(
    encdata_ex_honey_trees_py,
    arguments: [ '@INPUT@', '@OUTPUT0@', '@OUTPUT1@', '@OUTPUT2@', ],
    output: [
        '@BASENAME@_common.bin',
        '@BASENAME@_uncommon.bin',
        '@BASENAME@_rare.bin',
    ],
    depends: [ py_consts_generators ],
)
enc_ex_tg_bin_gen = generator(
    encdata_ex_trophy_garden_py,
    arguments: [ '@INPUT@', '@OUTPUT@', ],
    output: '@BASENAME@_trophy_garden_dailies.bin',
    depends: [ py_consts_generators ],

)
enc_ex_gm_bin_gen = generator(
    encdata_ex_great_marsh_py,
    arguments: [ '@INPUT@', '@OUTPUT0@', '@OUTPUT1@', '@OUTPUT2@', ],
    output: [
        '@BASENAME@_natdex.bin',
        '@BASENAME@_local.bin',
        '@BASENAME@_coords.bin',
    ],
    depends: [ py_consts_generators ],

)

encdata_ex_elusive_rod_src = files('mt_coronet_b1f/encounters.json')
encdata_ex_honey_trees_src = files('encounters_honey_tree.json')
encdata_ex_trophy_garden_src = files('trophy_garden/encounters.json')
encdata_ex_great_marsh_src = files('encounters_great_marsh_lookout.json')

encdata_ex_narc = custom_target('encdata_ex.narc',
    output: 'encdata_ex.narc',
    input: [
        enc_ex_er_bin_gen.process(encdata_ex_elusive_rod_src, env: jsoncnv_env),
        enc_ex_ht_bin_gen.process(encdata_ex_honey_trees_src, env: jsoncnv_env),
        enc_ex_tg_bin_gen.process(encdata_ex_trophy_garden_src, env: jsoncnv_env),
        enc_ex_gm_bin_gen.process(encdata_ex_great_marsh_src, env: jsoncnv_env),
    ],
    env: jsoncnv_env,
    depends: [ py_consts_generators ],
    command: [
        nitroarc_exe,
        '--create',
        '--files-from', encdata_ex_order,
        '--file', '@OUTPUT0@',
        '@PRIVATE_DIR@',
    ],
)

nitrofs_files += encdata_ex_narc

mapgen = custom_target('mapgen',
    output: 'build.ninja',
    command: [
        mapgen_exe,
        '-o', '@OUTDIR@',
        '-M', '@DEPFILE@',
        '-R', meson.project_source_root(),
        '-G', global_scripts,
        '-N', nitroarc_exe,
        '-E', enumproc_exe,
        '-P', mapproc_exe,
        '-S', make_script_bin_sh,
        '-s', scripts_order,
        '-C', encounterproc_exe,
        '-c', encounters_order,
        '-Z', make_pokedex_enc_platinum_py,
        meson.project_source_root() / 'include/constants/fieldmap.h',
        meson.current_source_dir(),
    ],

    depfile: 'mapgen.d',
)

mapbuild = custom_target('mapbuild',
    command: [
        subninja_py,
        '--manifest', mapgen,
        '--depfile', '@DEPFILE@',
        '--domain', 'maps',
    ],

    output: [
        'scr_seq.narc',
        'scr_seq.naix',
        'zone_event.narc',
        'zone_event.naix',
        'pl_enc_data.narc',
        'pl_enc_data.naix',
        'zukan_enc_platinum.narc',
        'map_matrix.narc',
        'map_matrix.naix',
        'headers.h',
    ],

    console: true,
    depfile: 'mapbuild.d',

    # We have to also depend on the tools here so that the inner build re-runs
    # even if the generated build manifest does not change.
    depends: [
        nitroarc_exe,
        enumproc_exe,
        mapproc_exe,
        encounterproc_exe,
        text_banks,
        pl_sound_data_sdat,
        area_data_narc,
        c_consts_generators,
        py_consts_generators,
        h_headers,
    ],

    # Inner inputs that no depfile records.
    depend_files: [
        scripts_order,
        encounters_order,
        encdata_ex_honey_trees_src,
        encdata_ex_great_marsh_src,
        make_script_bin_sh.full_path(),
        make_pokedex_enc_platinum_py.full_path(),
    ],
)

nitrofs_files += mapbuild[0]
naix_headers += mapbuild[1]
nitrofs_files += mapbuild[2]
naix_headers += mapbuild[3]
nitrofs_files += mapbuild[4]
naix_headers += mapbuild[5]
nitrofs_files += mapbuild[6]
nitrofs_files += mapbuild[7]
naix_headers += mapbuild[8]
h_headers += mapbuild[9]
