sdat_folder = 'pl_sound_data'
sdat_file = 'pl_sound_data.sdat'

sdat_root = meson.current_source_dir() / sdat_folder
generated_sdat = meson.current_build_dir() / sdat_file
custom_target(sdat_file,
    build_by_default: true,
    output: sdat_file,
    command: [
        SDATTool_py,
        '-b', generated_sdat, sdat_root
    ]
)
