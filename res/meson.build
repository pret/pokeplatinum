nitrofs_files = []
naix_headers = []

### PREBUILT FILES ###
subdir('prebuilt')

### DECOMPILED DATA DIRECTORIES ###
subdir('text') # must be listed first for GMM header targets

# Common generator for "scripting" files, i.e. field and battle scripts
relative_source_root = fs.relative_to(meson.project_source_root(), meson.project_build_root())

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

subdir('battle')
subdir('field')
subdir('items')
subdir('pokemon')
subdir('sound')
subdir('trainers')
