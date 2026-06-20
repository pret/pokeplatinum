word_bank_srcs = files(
    meson.global_source_root() / 'src/password_word_bank.c'
)

word_bank_c_args = [
    '-proc', 'arm946e',
    '-enum', 'int',
    '-Cpp_exceptions', 'off',
    '-gccext,on',
    '-msgstyle', 'gcc',
    '-ipa', 'file',
    '-interworking',
    '-inline', 'on,noauto',
    '-char', 'signed',
    '-nosyspath',
    '-stdinc',
    '-sym', 'on',
]

word_bank = static_library('word_bank',
    sources: word_bank_srcs,
    c_args: word_bank_c_args,
    include_directories: [
        public_includes,
        toplevel_includes,
    ],
    dependencies: [nitrosdk_dep],
    pic: false
).extract_objects(word_bank_srcs)

word_bank_object = custom_target(
    'word_bank.o',
    output: 'word_bank.o',
    input: word_bank,
    command: [
        arm_none_eabi_objcopy_exe,
        '@INPUT@',
        '@OUTPUT@',
        '-O', 'binary',
        '-j', '.rodata'
    ],
    build_subdir: 'word_bank.narc.p'
)
 
word_bank_narc = custom_target('word_bank.narc',
    output: [
        'word_bank.narc',
        'word_bank.naix',
    ],
    input: [
        word_bank_object
    ],
    command: [
        nitroarc_exe,
        '--create',
        '--index',
        '--file-from', 'word_bank.o',
        '--file', '@OUTPUT0@',
        '@PRIVATE_DIR@',
    ]
)

nitrofs_files += word_bank_narc
naix_headers += word_bank_narc[1]