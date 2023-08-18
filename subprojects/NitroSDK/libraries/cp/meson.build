libcp_srcs = files('src/cp_context.c')

libcp = static_library('cp',
    sources: [libcp_srcs, fx_const_h],
    c_args: [c_args, sdk_args],
    include_directories: public_includes,
    c_pch: nitro_pch,
    pic: false
)

nitrosdk_libs += libcp
