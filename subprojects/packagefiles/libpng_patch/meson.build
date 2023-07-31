project(
  'libpng',
  'c',
  version: '1.6.40', license: 'libpng',
  meson_version: '>=0.50.0',
)

png_versions = meson.project_version().split('.')
png_major_version = png_versions[0]
png_minor_version = png_versions[1]
png_micro_version = png_versions[2]
png_libname = 'png@0@@1@'.format(png_major_version, png_minor_version)
png_libversion = '@0@@1@.@2@.0'.format(png_major_version, png_minor_version, png_micro_version)

cc = meson.get_compiler('c', native: true)

include = include_directories('.')

c_args = []

if build_machine.system() == 'windows'
  add_project_arguments(
    '-D_CRT_NONSTDC_NO_DEPRECATE',
    '-D_CRT_SECURE_NO_DEPRECATE',
    language : 'c'
  )
  if get_option('default_library') != 'static'
    c_args += '-DPNG_BUILD_DLL'
  endif
endif

libpng_deps = [
  dependency('zlib', native: true),
  cc.find_library('m', required: false),
]

png_src = files(
  'png.c',
  'pngerror.c',
  'pngget.c',
  'pngmem.c',
  'pngpread.c',
  'pngread.c',
  'pngrio.c',
  'pngrtran.c',
  'pngrutil.c',
  'pngset.c',
  'pngtrans.c',
  'pngwio.c',
  'pngwrite.c',
  'pngwtran.c',
  'pngwutil.c',
)


if build_machine.cpu_family() == 'aarch64' or cc.get_define('__ARM_NEON').strip() != ''
  png_src += files(
    'arm/arm_init.c',
    'arm/filter_neon_intrinsics.c',
    'arm/palette_neon_intrinsics.c',
  )
  if cc.get_id() == 'msvc'
    cl = find_program('cl')
    msvc_preprocessed_asm_files = custom_target(
      'MSVC assembly preprocessing',
      output: '@BASENAME@.i',
      input: 'arm/filter_neon.S',
      command: [cl, '/Fi@OUTPUT@', '/P', '@INPUT@', '-I@OUTDIR@', c_args],
    )
    msvc_armasm = find_program('armasm64')
    png_src += custom_target(
      'MSVC assembly compilation',
      output: '@BASENAME@.obj',
      input: msvc_preprocessed_asm_files,
      command: [msvc_armasm, '@INPUT@', '/Fo@OUTPUT@', '-I@OUTDIR@'],
    )
  else
    png_src += files('arm/filter_neon.S')
  endif

  c_args += '-DPNG_ARM_NEON_OPT=2'
elif build_machine.cpu_family() in ['x86', 'x86_64']
  png_src += files(
    'intel/filter_sse2_intrinsics.c',
    'intel/intel_init.c',
  )
  c_args += '-DPNG_INTEL_SSE_OPT=1'
endif

libpng = library(
  png_libname,
  png_src,
  version: png_libversion,
  dependencies: libpng_deps,
  c_args: c_args,
  native: true,
  install: false,
)

pngincsubdir = 'lib' + png_libname
pngincludedir = get_option('includedir') / pngincsubdir

pkglibconf = configure_file(
  input: 'scripts/pnglibconf.h.prebuilt',
  output: 'pnglibconf.h',
  copy: true,
)

install_headers(
  'png.h',
  'pngconf.h',
  pkglibconf,
  subdir: pngincsubdir,
)

cdata = configuration_data()
cdata.set('prefix', get_option('prefix'))
cdata.set('exec_prefix', get_option('prefix'))
cdata.set('libdir', '${prefix}/' + get_option('libdir'))
cdata.set('includedir', '${prefix}/' + get_option('includedir'))
cdata.set('PNGLIB_MAJOR', png_major_version)
cdata.set('PNGLIB_MINOR', png_minor_version)
cdata.set('PNGLIB_VERSION', meson.project_version())
# FIXME: should auto-generate pkg-config file to get this right
cdata.set('LIBS', '-lz')

configure_file(
  input: 'libpng.pc.in',
  output: 'libpng16.pc',
  configuration: cdata,
  install_dir: get_option('libdir') / 'pkgconfig',
  install: true,
)

# FIXME: this should be a symlink to libpng16.pc
configure_file(
  input: 'libpng.pc.in',
  output: 'libpng.pc',
  configuration: cdata,
  install_dir: get_option('libdir') / 'pkgconfig',
  install: true,
)

libpng_dep = declare_dependency(
  include_directories: include,
  link_with: libpng,
  dependencies: libpng_deps,
)
# Keep the older dependency name for backwards-compat with old-style
# dependency(..., fallback ['libpng': 'png_dep'])
png_dep = libpng_dep
