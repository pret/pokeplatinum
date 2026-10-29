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
        '-S', make_script_bin_sh,
        '-s', scripts_order,
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
    ],

    console: true,
    depfile: 'mapbuild.d',

    # We have to also depend on the tools here so that the inner build re-runs
    # even if the generated build manifest does not change.
    depends: [
        nitroarc_exe,
        enumproc_exe,
        text_banks,
        events_headers,
        pl_sound_data_sdat,
        c_consts_generators,
        h_headers,
    ],

    depend_files: [
        scripts_order,
        make_script_bin_sh.full_path(),
    ],
)

nitrofs_files += mapbuild[0]
naix_headers += mapbuild[1]
