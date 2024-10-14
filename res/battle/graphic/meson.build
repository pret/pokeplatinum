subdir('pl_batt_obj')

copy_prog = find_program('cp')

nitrofs_files += custom_target(
    input: pl_batt_obj_narc,
    output: 'pl_batt_obj.narc',
    command: [
        copy_prog,
        '@INPUT@',
        '@OUTPUT@'
    ]
)