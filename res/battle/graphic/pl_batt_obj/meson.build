subdir('palettes')
subdir('sprites')
subdir('cells')
subdir('anims')

nclr_normal = nclr_gen.process(palettes_normal, 
    extra_args: [ '-nopad', '-bitdepth', '4' ]
)
nclr_pcmp = nclr_gen.process(palettes_pcmp, 
    extra_args: [ '-nopad', '-bitdepth', '4', '-pcmp', '-invertsize' ]
)

ncgr_uncompressed_64 = ncgr_gen.process(tiles_uncompressed_mapping_64,
    extra_args: [ '-clobbersize', '-mappingtype', '64' ]
)
ncgr_uncompressed_128 = ncgr_gen.process(tiles_uncompressed_mapping_128,
    extra_args: [ '-clobbersize', '-mappingtype', '128' ]
)
ncgr_compressed_64 = lz_gen.process(ncgr_gen.process(tiles_compressed_mapping_64,
    extra_args: [ '-clobbersize', '-mappingtype', '64' ]
))
ncgr_compressed_32 = lz_gen.process(ncgr_gen.process(tiles_compressed_mapping_32,
    extra_args: [ '-clobbersize', '-mappingtype', '32' ]
))
ncgr_compressed_64_v101 = lz_gen.process(ncgr_gen.process(tiles_compressed_mapping_64_v101,
    extra_args: [ '-clobbersize', '-mappingtype', '64', '-version101' ]
))
ncgr_compressed_32_v101 = lz_gen.process(ncgr_gen.process(tiles_compressed_mapping_32_v101,
    extra_args: [ '-clobbersize', '-mappingtype', '32', '-version101' ]
))
ncgr_compressed_vram = lz_gen.process(ncgr_gen.process(tiles_compressed_vram_transfer,
    extra_args: [ '-clobbersize', '-mappingtype', '64', '-vram', '-num_tiles', '500' ]
))

ncer_uncompressed = ncer_gen.process(cells_uncompressed)
ncer_compressed = lz_gen.process(ncer_gen.process(cells_compressed))

nanr_uncompressed = nanr_gen.process(anims_uncompressed)
nanr_compressed = lz_gen.process(nanr_gen.process(anims_compressed))

pl_batt_obj_order = files('pl_batt_obj.order')
pl_batt_obj_ignore = files('pl_batt_obj.ignore')
pl_batt_obj_narc = custom_target('pl_batt_obj.narc',
    output: [
        'pl_batt_obj.narc',
        'pl_batt_obj.naix',
    ],
    input: [
        nclr_normal,
        nclr_pcmp,
        ncgr_uncompressed_64,
        ncgr_uncompressed_128,
        ncgr_compressed_64,
        ncgr_compressed_32,
        ncgr_compressed_64_v101,
        ncgr_compressed_32_v101,
        ncgr_compressed_vram,
        ncer_uncompressed,
        ncer_compressed,
        nanr_uncompressed,
        nanr_compressed,
        pl_batt_obj_order
    ],
    command: [
        knarc_exe,
        '-d', '@PRIVATE_DIR@',
        '-p', '@OUTPUT0@',
        '--order', pl_batt_obj_order,
        '--ignore', pl_batt_obj_ignore,
        '--naix',
    ]
)

nitrofs_files += pl_batt_obj_narc[0]
naix_headers += pl_batt_obj_narc[1]