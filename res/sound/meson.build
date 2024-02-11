sdat_files = [
    'pl_sound_data.sdat'
]

foreach f : sdat_files
    sdat_root = meson.current_source_dir() / f
    generated_sdat = meson.current_build_dir() / f

    custom_target('generated_sdat',
        build_by_default: true,
        capture: true,
        output: 'generated_sdat',
        command: [
            SDATTool_py,
            '-b', sdat_root
        ]
    )

    nitrofs_files += fs.copyfile(f)
endforeach