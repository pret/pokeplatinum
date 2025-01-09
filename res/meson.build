nitrofs_files = []
naix_headers = []

### PREBUILT FILES ###
subdir('prebuilt')

### DECOMPILED DATA DIRECTORIES ###
# These subpaths are listed because the result of some build-rule inside them
# is a dependency of some later build-rule. e.g., `trdata.naix` is a dependency
# of the files compiled into `scr_seq.narc`.
subdir('pokemon')
subdir('trainers')
subdir('text')

# Common generator for "scripting" files, i.e. field and battle scripts
relative_source_root = fs.relative_to(meson.project_source_root(), meson.project_build_root())

copy_gen = generator(find_program('cp'),
    arguments: [ '@INPUT@', '@OUTPUT@', ],
    output: '@PLAINNAME@'
)

make_script_bin_args = [
    '-i', relative_source_root / 'include',
    '-i', relative_source_root / 'asm',
    '-i', '.' / 'res' / 'text',
    '-i', '.' / 'res',
    '-i', '.',
    '--assembler', arm_none_eabi_gcc_exe.full_path(),
    '--objcopy', arm_none_eabi_objcopy_exe.full_path(),
    '@EXTRA_ARGS@',
    '@INPUT@',
]

make_script_bin_deps = [
    message_banks_narc, # for GMM headers
    asm_consts_generators, # for ASM headers
    c_consts_generators, # for C headers
]

s_to_bin_gen = generator(make_script_bin_sh,
    arguments: make_script_bin_args,
    depends: make_script_bin_deps,
    output: '@BASENAME@'
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

subdir('battle')
subdir('field')
subdir('fonts')
subdir('graphics')
subdir('items')
subdir('sound')
