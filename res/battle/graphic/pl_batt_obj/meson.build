subdir('prebuilt')
subdir('palettes')
subdir('sprites')

pl_batt_order = files('order.txt')

pl_batt_obj_narc = custom_target('pl_batt_obj.narc',
    output: 'pl_batt_obj.narc',
    input: [
        pl_batt_order,
        pl_batt_obj_nclr,
        pl_batt_obj_built,
        pl_batt_obj_ncgr
    ],
    command: [
        knarc_exe,
        '-d', '@PRIVATE_DIR@',
        '-o', '@INPUT0@',
        '-p',
        '@OUTPUT@'
    ],
    build_always_stale: true
)

nitrofs_files += pl_batt_obj_narc