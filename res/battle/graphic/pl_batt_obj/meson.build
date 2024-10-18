subdir('palettes')
subdir('sprites')
subdir('cells')
subdir('anims')

pl_batt_order = files('order.txt')

nitrofs_files += custom_target('pl_batt_obj.narc',
    output: 'pl_batt_obj.narc',
    input: [
        pl_batt_order,
        pl_batt_obj_nclr,
        pl_batt_obj_nanr,
        pl_batt_obj_ncgr,
        pl_batt_obj_ncer
    ],
    command: [
        knarc_exe,
        '-d', '@PRIVATE_DIR@',
        '-o', '@INPUT0@',
        '--naix',
        '-p',
        '@OUTPUT@'
    ],
    build_always_stale: true
)