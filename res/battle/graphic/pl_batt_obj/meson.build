pl_batt_obj_lz_builder = generator(nitrogfx_exe,
    output: '@BASENAME@.lz',
    arguments: ['@INPUT@', '@OUTPUT@']
)

subdir('prebuilt')
subdir('palettes')
subdir('sprites')

pl_batt_order = files('order.txt')

pl_batt_obj_narc = custom_target('pl_batt_obj.narc',
    output: 'pl_batt_obj.narc',
    input: [
        pl_batt_order,
        pl_batt_obj_nclr,
        pl_batt_obj_nclr_pcmp,
        pl_batt_obj_prebuilt_copy,
        pl_batt_obj_prebuilt_compressed,
        pl_batt_obj_ncgr,
        pl_batt_obj_ncgr_compressed
    ],
    command: [
        make_pl_batt_obj_py,
        '--nitrogfx', nitrogfx_exe,
        '--knarc', knarc_exe,
        '--private-dir', '@PRIVATE_DIR@',
        '--output-dir', '@OUTDIR@',
        '@INPUT0@'
    ]
)

nitrofs_files += pl_batt_obj_narc