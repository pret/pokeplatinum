libdwcenc_srcs = files('src/dwc_encsession.c')

# TODO: NX build does not work because switch.h required c++>=11
if(build_target != 'nx')
libdwcenc = static_library('dwcenc',
    sources: libdwcenc_srcs,
    c_args: ppwlobby_c_args,
    include_directories: ppwlobby_public_includes,
    dependencies: [nitrosdk_dep, nitrodwc_dep, nitrowifi_dep],
    pic: (build_target == 'nx'),
    native: (build_target == 'linux' or build_target == 'win64')
)

libdwcenc_dep = declare_dependency(
    link_with: libdwcenc
)

ppwlobby_libs += libdwcenc
endif
