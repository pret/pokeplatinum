subdir('area_build_model')
subdir('area_map_tex')
subdir('area_move_model')

prebuilt_files = [
    'area_data.narc'
]

foreach f : prebuilt_files
    nitrofs_files += fs.copyfile(f)
endforeach
