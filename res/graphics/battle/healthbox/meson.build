healthbox_nclr = custom_target(
  'primary.NCLR',
  output: 'primary.NCLR',
  input: files('player_singles.png'),
  command: [
    nitrogfx_exe, '@INPUT@', '@OUTPUT@',
    '-bitdepth', '4',
    '-nopad',
    '-invertsize',
    '-pcmp',
  ],
)

healthbox_safari_nclr = custom_target(
  'safari.NCLR',
  output: 'safari.NCLR',
  input: files('safari.png'),
  command: [
    nitrogfx_exe, '@INPUT@', '@OUTPUT@',
    '-bitdepth', '4',
    '-nopad',
    '-invertsize',
    '-pcmp',
  ],
)

short_cell = files('short_cell.json')
tall_cell = files('tall_cell.json')

battle_sprites += [
  copy_gen.process(
    healthbox_nclr,
    healthbox_safari_nclr,
    preserve_path_from: base_build_directory,
  ),

  ncgr_lz_gen.process(
    files('arrows_thin.png'),
    preserve_path_from: base_directory,
    extra_args: [ '-bitdepth', '4', '-clobbersize', '-mappingtype', '64' ],
  ),

  ncgr_cell_lz_gen.process(
    files('arrows_wide.png'),
    preserve_path_from: base_directory,
    extra_args: [ '-bitdepth', '4', '-clobbersize', '-mappingtype', '64' ],
  ),

  ncgr_lz_gen.process(
    files('player_doubles.png', 'enemy.png'),
    preserve_path_from: base_directory,
    extra_args: [
      '-bitdepth', '4', '-clobbersize', '-mappingtype', '64',
      '-version101', '-cell', short_cell[0].full_path(),
    ],
  ),

  ncgr_lz_gen.process(
    files('player_singles.png'),
    preserve_path_from: base_directory,
    extra_args: [
      '-bitdepth', '4', '-clobbersize', '-mappingtype', '64',
      '-version101', '-cell', tall_cell[0].full_path(),
    ],
  ),

  ncgr_cell_lz_gen.process(
    files('safari.png'),
    preserve_path_from: base_directory,
    extra_args: [ '-bitdepth', '4', '-clobbersize', '-mappingtype', '64' ],
  ),

  ncer_lz_gen.process(
    files(
      'short_cell.json',
      'tall_cell.json',
      'safari_cell.json',
      'arrows_thin_cell.json',
      'arrows_wide_cell.json',
    ),
    preserve_path_from: base_directory,
  ),

  nanr_lz_gen.process(
    files(
      'arrows_thin_anim.json',
      'arrows_wide_anim.json',
    ),
    preserve_path_from: base_directory,
  )
]

healthbar_parts_embed = custom_target(
  'healthbar_parts.4bpp.h',
  output: [
    'healthbar_parts.4bpp',
    'healthbar_parts.4bpp.h',
  ],
  input: files('healthbar_parts.png'),
  command: [ nitrogfx_exe, '@INPUT@', '@OUTPUT0@', '-embed', 'sHealthbarPartsBitmap' ],
)

embed_headers += healthbar_parts_embed[1]
