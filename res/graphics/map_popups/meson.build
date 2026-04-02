map_popup_files = files(
    'city_popup.png',
    'town_popup.png',
    'route_popup.png',
    'cave_popup.png',
    'forest_popup.png',
    'water_popup.png',
    'park_popup.png',
    'lake_popup.png',
    'indoors_popup.png',
)

map_popup_ncgrs = ncgr_gen.process(
    map_popup_files,
    extra_args: [
        '-version101',
        '-sopc',
        '-convertTo4Bpp',
        '-width', '32',
        '-num_tiles', '96',
    ]
)

map_popup_nclrs = nclr_gen.process(
    map_popup_files,
    extra_args: [
        '-bitdepth', '4'
    ]
)

map_popup_narc = custom_target('map_popup.narc',
    output: [
        'map_popup.narc',
    ],
    input: [
        map_popup_ncgrs,
        map_popup_nclrs,
    ],
    command: [
        nitroarc_exe,
        '--create',
        '--files-from', files('map_popup.order'),
        '--file', '@OUTPUT0@',
        '@PRIVATE_DIR@',
    ],
)

nitrofs_files += map_popup_narc
