subdir('common_anims')
subdir('effects')
subdir('moves')
subdir('subscripts')

relative_build_dir = fs.relative_to(meson.current_build_dir(), meson.project_build_root())

be_seq_target_name = 'be_seq.narc'
waza_seq_target_name = 'waza_seq.narc'

sub_seq_basename = 'sub_seq'
sub_seq_narc_name = sub_seq_basename + '.narc'
sub_seq_naix_name = sub_seq_basename + '.naix'

be_seq_private_dir = relative_build_dir / be_seq_target_name + '.p'
sub_seq_private_dir = relative_build_dir / sub_seq_narc_name + '.p'
waza_seq_private_dir = relative_build_dir / waza_seq_target_name + '.p'

be_seq_narc = custom_target(be_seq_target_name,
    output: be_seq_target_name,
    input: script_bin_gen.process(
        effect_script_files,
        extra_args: ['--out-dir', be_seq_private_dir]
    ),
    command: [
        nitroarc_exe,
        '--create',
        '--file', '@OUTPUT0@',
        '@PRIVATE_DIR@',
    ],
)

sub_seq_narc = custom_target(sub_seq_narc_name,
    output: [
        sub_seq_narc_name,
        sub_seq_naix_name,
    ],
    input: script_bin_gen.process(
        subscript_files,
        extra_args: ['--out-dir', sub_seq_private_dir]
    ),
    command: [
        nitroarc_exe,
        '--create',
        '--index',
        '--files-from', sub_seq_narc_order,
        '--file', '@OUTPUT0@',
        '@PRIVATE_DIR@',
    ],
)

waza_seq_narc = custom_target(waza_seq_target_name,
    output: waza_seq_target_name,
    input: script_bin_gen.process(
        move_script_files,
        extra_args: ['--out-dir', waza_seq_private_dir]
    ),
    command: [
        nitroarc_exe,
        '--create',
        '--file', '@OUTPUT0@',
        '@PRIVATE_DIR@',
    ],
)

nitrofs_files += be_seq_narc
nitrofs_files += sub_seq_narc
nitrofs_files += waza_seq_narc

naix_headers += sub_seq_narc[1]
