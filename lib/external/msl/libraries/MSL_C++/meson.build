msl_cpp_srcs = files(
    'asm/ios.s',
    'asm/locale_cpp.s',
    'asm/msl_thread.s'
)

msl_cpp = static_library('MSL_CPP_NITRO_Ai_LE',
    name_prefix: '',
    sources: msl_cpp_srcs,
    c_args: c_args,
    nasm_args: asm_args,
    include_directories: public_includes,
    pic: false
)

msl_libs += msl_cpp
