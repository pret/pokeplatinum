pl_winframe_pal_pngs= files(
    'standard_system.png',
    'message_box_00.png',
    'message_box_01.png',
    'message_box_02.png',
    'message_box_03.png',
    'message_box_04.png',
    'message_box_05.png',
    'message_box_06.png',
    'message_box_07.png',
    'message_box_08.png',
    'message_box_09.png',
    'message_box_10.png',
    'message_box_12.png',
    'message_box_13.png',
    'message_box_14.png',
    'message_box_15.png',
    'message_box_16.png',
    'message_box_17.png',
    'message_box_18.png',
    'message_box_19.png',
)

# Extra files added here either do not have a distinct palette of their
# own or have a special PAL file.
pl_winframe_sopc_v101_pngs = pl_winframe_pal_pngs
pl_winframe_sopc_v101_pngs += files(
    'standard_field.png',       # no distinct palette
    'scroll_cursor.png',        # no distinct palette
    'wait_dial.png',            # no distinct palette
    'message_box_11.png',       # has a special PAL file
)

pl_winframe_v101_clobber_pngs = files('pokemon_preview.png')

# Extra files added here have special handling requirements that disallow
# them from being lumped in with the other PNG -> NCLR conversions.
pl_winframe_pals = pl_winframe_pal_pngs
pl_winframe_pals += files(
    'standard_underground.pal', # is a distinct palette
    'pokemon_preview.png',      # has no SOPC section
    'message_box_11.pal',       # has multiple palettes, unlike the other message boxes
)

pl_winframe_ncgrs_sopc_v101 = ncgr_gen.process(pl_winframe_sopc_v101_pngs,
    extra_args: [
        '-sopc',
        '-version101',
    ],
)
pl_winframe_ncgrs_v101_clobber = ncgr_gen.process(pl_winframe_v101_clobber_pngs,
    extra_args: [
        '-version101',
        '-clobbersize',
    ]
)
pl_winframe_nclrs = nclr_gen.process(pl_winframe_pals,
    extra_args: [
        '-bitdepth', '4',
    ]
)
pl_winframe_ncers = ncer_gen.process(files('pokemon_preview_cell.json'))
pl_winframe_nanrs = nanr_gen.process(files('pokemon_preview_anim.json'))

pl_winframe_narc = custom_target('pl_winframe.narc',
    output: [
        'pl_winframe.narc',
        'pl_winframe.naix',
    ],
    input: [
        pl_winframe_ncgrs_sopc_v101,
        pl_winframe_ncgrs_v101_clobber,
        pl_winframe_nclrs,
        pl_winframe_ncers,
        pl_winframe_nanrs,
    ],
    command: [
        nitroarc_exe,
        '--create',
        '--index',
        '--files-from', files('pl_winframe.order'),
        '--file', '@OUTPUT0@',
        '@PRIVATE_DIR@',
    ],
)

nitrofs_files += pl_winframe_narc
naix_headers += pl_winframe_narc[1]
