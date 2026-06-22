word_bank_object = custom_target(
    'word_bank.o',
    output: 'word_bank.o',
    input: files('word_bank.c'),
    command: [
        arm_none_eabi_gcc_exe,
        '-I', meson.global_source_root() / 'include',
        '-I', meson.global_build_root(),
        '-I', meson.global_source_root() / 'subprojects' / 'NitroSDK-4.2.30001' / 'include',
        '-c', '-o', '@OUTPUT@',
        '@INPUT@',
    ]
)

word_bank = custom_target(
    'word_bank.o',
    output: 'word_bank.o',
    input: word_bank_object,
    command: [
        arm_none_eabi_objcopy_exe,
        '@INPUT@',
        '@OUTPUT@',
        '-O', 'binary'
    ],
    build_subdir: 'word_bank.narc.p'
)
 
word_bank_narc = custom_target('word_bank.narc',
    output: [
        'word_bank.narc',
        'word_bank.naix',
    ],
    input: [
        word_bank
    ],
    command: [
        nitroarc_exe,
        '--create',
        '--index',
        '--single-file', 'word_bank.o',
        '--file', '@OUTPUT0@',
        '@PRIVATE_DIR@',
    ]
)

nitrofs_files += word_bank_narc
naix_headers += word_bank_narc[1]