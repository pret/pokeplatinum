sdat_folder = 'pl_sound_data'
sdat_file = 'pl_sound_data.sdat'

sdat_source = meson.current_source_dir() / sdat_folder
sdat_build = meson.current_build_dir() / sdat_folder
generated_sdat = meson.current_build_dir() / sdat_file

pl_sound_data_sdat = custom_target(sdat_file,
    build_by_default: true,
    output: sdat_file,
    command: [
        SDATTool_py,
        '-b', generated_sdat, sdat_source, '-bf', sdat_build
    ]
)

nitrofs_files += pl_sound_data_sdat