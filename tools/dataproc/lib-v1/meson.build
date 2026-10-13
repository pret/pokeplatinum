dataproc_v1_inc = include_directories('include')
dataproc_v1_dep = declare_dependency(
  include_directories: dataproc_v1_inc,
  link_with: static_library(
    'dataproc',

    sources: files(
      'dataproc.c',
      'json.c',
    ),

    c_args: dataproc_cflags,
    implicit_include_directories: true,
    include_directories: dataproc_v1_inc,
    dependencies: dependency('yyjson'),
    native: true,
  ),
)
