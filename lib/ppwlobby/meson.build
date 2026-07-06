# Public includes
ppwlobby_public_includes = include_directories('include')

ppwlobby_c_args = []

if(build_target == 'arm')
    ppwlobby_c_args = [
        '-wrap:sdk', '2.0/sp2p3',
        '-nothumb'
    ]
else
    ppwlobby_c_args = [
        '-fpermissive',
        '-std=c++03'
    ]
endif

# Libraries
ppwlobby_libs = []
subdir('libraries')
