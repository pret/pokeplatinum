libdwcenc_srcs = files('src/dwc_encsession.c')

libdwcenc = static_library('dwcenc',
    sources: libdwcenc_srcs,
    c_args: ppwlobby_c_args,
    include_directories: ppwlobby_public_includes,
    dependencies: [nitrosdk_dep, nitrodwc_dep, nitrowifi_dep],
    pic: false
)

libdwcenc_dep = declare_dependency(
    link_with: libdwcenc
)

meson.override_dependency('libdwcenc', libdwcenc_dep)

ppwlobby_libs += libdwcenc
