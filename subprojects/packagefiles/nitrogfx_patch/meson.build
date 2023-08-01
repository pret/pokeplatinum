project('nitrogfx', 'c')

libpng_dep = dependency('libpng', native: true)

nitrogfx_exe = executable('nitrogfx',
    sources: [
        'main.c',
        'convert_png.c',
        'gfx.c',
        'jasc_pal.c',
        'lz.c',
        'rl.c',
        'util.c',
        'font.c',
        'huff.c',
        'json.c',
        'cJSON.c',
    ],
    dependencies: libpng_dep,
    native: true
)
