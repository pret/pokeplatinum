common_dep = declare_dependency(
    # common.h is one directory upward
    include_directories: include_directories('..'),

    link_with: static_library(
        'dataproc_common',

        sources: files(
            'cli.c',
            'driver.c',
            'entries.c',
            'lookups.c',
            'outputs.c',
            'strings.c',
        ),

        c_args: [
            dataproc_strict_cflags,
            f'-DREPO_INCLUDE="@repo_include@"',
            f'-DREPO_BUILD="@repo_build@"',
            f'-DTEMPLATES_DIR="@dataproc_templates_dir@"',
        ],

        dependencies: [
            dataproc_dep,
            nitroarc_dep,
            libenum_dep,
            libexpr_dep,
        ],

        native: true,
        include_directories: include_directories('..'),
    ),

    compile_args: [ '-Werror=incompatible-pointer-types', ],
    dependencies: [ dataproc_dep ],
)
