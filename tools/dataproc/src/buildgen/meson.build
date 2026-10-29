buildgen_dep = declare_dependency(
    # buildgen.h is one directory upward
    include_directories: include_directories('..'),

    link_with: static_library(
        'dataproc_buildgen',
        sources: files('buildgen.c'),
        c_args: dataproc_strict_cflags,
        native: true,
        include_directories: include_directories('..'),
    ),
)
