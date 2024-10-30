nitrofs_files = []
naix_headers = []

### PREBUILT FILES ###
subdir('prebuilt')

### DECOMPILED DATA DIRECTORIES ###
subdir('text') # must be listed first for GMM header targets

# Common generator for "scripting" files, i.e. field and battle scripts
relative_source_root = fs.relative_to(meson.project_source_root(), meson.project_build_root())

copy_gen = generator(find_program('cp'),
    arguments: [ '@INPUT@', '@OUTPUT@', ],
    output: '@PLAINNAME@'
)

s_to_bin_gen = generator(make_script_bin_sh,
    arguments: [
        '-i', relative_source_root / 'include',
        '-i', relative_source_root / 'asm',
        '-i', '.' / 'res' / 'text',
        '-i', '.' / 'res',
        '-i', '.',
        '--assembler', arm_none_eabi_gcc_exe.full_path(),
        '--objcopy', arm_none_eabi_objcopy_exe.full_path(),
        '@EXTRA_ARGS@',
        '@INPUT@',
    ],
    depends: [
        message_banks_narc, # for GMM headers
        asm_consts_generators, # for ASM headers
        c_consts_generators, # for C headers
    ],
    output: '@BASENAME@'
)

mv_gen = generator(find_program('mv'),
    arguments: [ '@INPUT@', '@OUTPUT@', ],
    output: '@PLAINNAME@',
)

ncgr_gen = generator(nitrogfx_exe,
    arguments: [ '@INPUT@', '@OUTPUT@', '@EXTRA_ARGS@', ],
    output: '@BASENAME@.NCGR',
)

nclr_gen = generator(nitrogfx_exe,
    arguments: [ '@INPUT@', '@OUTPUT@', '@EXTRA_ARGS@', ],
    output: '@BASENAME@.NCLR',
)

ncer_gen = generator(nitrogfx_exe,
    arguments: [ '@INPUT@', '@OUTPUT@', '@EXTRA_ARGS@', ],
    output: '@BASENAME@.NCER'
)

nanr_gen = generator(nitrogfx_exe,
    arguments: [ '@INPUT@', '@OUTPUT@', '@EXTRA_ARGS@', ],
    output: '@BASENAME@.NANR'
)

lz_gen = generator(nitrogfx_exe,
    arguments: [ '@INPUT@', '@OUTPUT@', '@EXTRA_ARGS@', ],
    output: '@PLAINNAME@.lz',
)

subdir('battle')
subdir('field')
subdir('fonts')
subdir('graphics')
subdir('items')
subdir('pokemon')
subdir('sound')
subdir('trainers')
