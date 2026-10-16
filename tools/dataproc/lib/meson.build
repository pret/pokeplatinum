dataproc_inc = include_directories('include')
dataproc_dep = declare_dependency(
  include_directories: dataproc_inc,
  link_with: static_library(
    'dataproc',

    sources: files(
      'dataproc.c',
      'json.c',
    ),

    c_args: dataproc_strict_cflags,
    implicit_include_directories: true,
    include_directories: dataproc_inc,
    dependencies: dependency('yyjson'),
    native: true,
  ),
)
