c_srcs = []

if build_machine.system() == 'windows'
    c_srcs += 'fnmatch.c'
endif

cpp_scrs = [
    'Source.cpp',
    'Narc.cpp',
    'util.cpp'
]

knarc_exe = executable('knarc',
    cpp_args: '-std=c++17',
    sources: [
        c_srcs,
        cpp_scrs
    ],
    native: true
)