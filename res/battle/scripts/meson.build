subdir('effects')
subdir('moves')
subdir('subscripts')

relative_source_root = fs.relative_to(meson.project_source_root(), meson.project_build_root())
relative_build_dir = fs.relative_to(meson.current_build_dir(), meson.project_build_root())

s_to_bin_gen = generator(make_script_bin_sh,
    arguments: [
        '--mwrap',
        '-i', relative_source_root / 'include',
        '-i', relative_source_root / 'asm',
        '-i', '.' / 'res' / 'text',
        '-i', '.' / 'res',
        '-i', '.',
        '--assembler', mwrap_exe.full_path(),
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

sub_seq_basename = 'sub_seq'

be_seq_target_name = 'be_seq.narc'
waza_seq_target_name = 'waza_seq.narc'

sub_seq_narc_name = sub_seq_basename + '.narc'
sub_seq_naix_name = sub_seq_basename + '.naix'

be_seq_private_dir = relative_build_dir / be_seq_target_name + '.p'
sub_seq_private_dir = relative_build_dir / sub_seq_narc_name + '.p'
waza_seq_private_dir = relative_build_dir / waza_seq_target_name + '.p'

be_seq_narc = custom_target(be_seq_target_name,
    output: be_seq_target_name,
    input: s_to_bin_gen.process(
        effect_script_files,
        extra_args: ['--out-dir', be_seq_private_dir]
    ),
    command: [
        knarc_exe,
        '-d', '@PRIVATE_DIR@',
        '-p', '@OUTPUT@'
    ]
)

sub_seq_narc = custom_target(sub_seq_narc_name,
    output: [
        sub_seq_narc_name,
        sub_seq_naix_name,
    ],
    input: s_to_bin_gen.process(
        subscript_files,
        extra_args: ['--out-dir', sub_seq_private_dir]
    ),
    command: [
        knarc_exe,
        '-d', '@PRIVATE_DIR@',
        '-p', '@OUTPUT0@',
        '-o', sub_seq_narc_order,
        '-n'
    ]
)

waza_seq_narc = custom_target(waza_seq_target_name,
    output: waza_seq_target_name,
    input: s_to_bin_gen.process(
        move_script_files,
        extra_args: ['--out-dir', waza_seq_private_dir]
    ),
    command: [
        knarc_exe,
        '-d', '@PRIVATE_DIR@',
        '-p', '@OUTPUT@'
    ]
)

nitrofs_files += be_seq_narc
nitrofs_files += sub_seq_narc[0]
nitrofs_files += waza_seq_narc

naix_headers += sub_seq_narc[1]
