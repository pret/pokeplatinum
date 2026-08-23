berries = files(
    'cheri.png',
    'chesto.png',
    'pecha.png',
    'rawst.png',
    'aspear.png',
    'leppa.png',
    'oran.png',
    'persim.png',
    'lum.png',
    'sitrus.png',
    'figy.png',
    'wiki.png',
    'mago.png',
    'aguav.png',
    'iapapa.png',
    'razz.png',
    'bluk.png',
    'nanab.png',
    'wepear.png',
    'pinap.png',
    'pomeg.png',
    'kelpsy.png',
    'qualot.png',
    'hondew.png',
    'grepa.png',
    'tamato.png',
    'cornn.png',
    'magost.png',
    'rabuta.png',
    'nomel.png',
    'spelon.png',
    'pamtre.png',
    'watmel.png',
    'durin.png',
    'belue.png',
    'occa.png',
    'passho.png',
    'wacan.png',
    'rindo.png',
    'yache.png',
    'chople.png',
    'kebia.png',
    'shuca.png',
    'coba.png',
    'payapa.png',
    'tanga.png',
    'charti.png',
    'kasib.png',
    'haban.png',
    'colbur.png',
    'babiri.png',
    'chilan.png',
    'liechi.png',
    'ganlon.png',
    'salac.png',
    'petaya.png',
    'apicot.png',
    'lansat.png',
    'starf.png',
    'enigma.png',
    'micle.png',
    'custap.png',
    'jaboca.png',
    'rowap.png',
)

tiles_ncgr = ncgr_gen.process('tiles.png',
    extra_args: [
        '-bitdepth', '4',
        '-version101',
        '-sopc',
    ]
)

tiles_nclr = nclr_gen.process('tiles.png',
    extra_args: [
        '-bitdepth', '4',
    ]
)

berries_ncgr = ncgr_gen.process(berries,
    extra_args: [
        '-bitdepth', '4',
        '-version101',
        '-clobbersize',
    ]
)

berries_nclr = nclr_gen.process(berries,
    extra_args: [
        '-bitdepth', '4',
    ]
)

berry_tag_narc = custom_target('berry_tag.narc',
    output: [
        'berry_tag.narc',
        'berry_tag.naix',
    ],
    input: [
        copy_gen.process(files('tiles.NSCR', 'dummy.NSCR')),
        tiles_ncgr,
        tiles_nclr,
        nanr_gen.process('berry_anim.json'),
        ncer_gen.process('berry_cell.json'),
        berries_ncgr,
        berries_nclr,
    ],
    command: [
        nitroarc_exe,
        '--create',
        '--index',
        '--files-from', files('berry_tag.order'),
        '--file', '@OUTPUT0@',
        '@PRIVATE_DIR@',
    ]
)

nitrofs_files += berry_tag_narc
naix_headers += berry_tag_narc[1]