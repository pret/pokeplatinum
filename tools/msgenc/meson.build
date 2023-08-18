charmap_txt = files('charmap.txt')

msgenc_exe = executable('msgenc',
    sources: [
        'msgenc.cpp',
        'Options.cpp',
        'MessagesConverter.cpp',
        'MessagesDecoder.cpp',
        'MessagesEncoder.cpp',
        'Gmm.cpp',
        'pugixml.cpp'
    ],
    cpp_args: '-DNDEBUG',
    native: true
)