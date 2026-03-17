battle_sprites += [
  nclr_gen.process(
    files('debug.pal', 'unk_179.png'),
    extra_args: [ '-bitdepth', '4' ],
    preserve_path_from: base_directory,
  ),

  nclr_gen.process(
    files('debug_frame.pal', 'pokesprite_1.png', 'pokesprite_2.pal'),
    preserve_path_from: base_directory,
    extra_args: [ '-nopad', '-invertsize', '-pcmp', '-bitdepth', '4' ],
  ),

  ncgr_lz_gen.process(
    files('unk_117.png'),
    preserve_path_from: base_directory,
    extra_args: [ '-bitdepth', '4', '-clobbersize', '-mappingtype', '64' ],
  ),

  ncgr_cell_gen.process(
    files('pokesprite_1.png'),
    preserve_path_from: base_directory,
    extra_args: [ '-bitdepth', '4', '-clobbersize', '-mappingtype', '64' ],
  ),

  ncgr_cell_lz_gen.process(
    files('unk_120.png', 'unk_121_124.png'),
    preserve_path_from: base_directory,
    extra_args: [ '-bitdepth', '4', '-clobbersize', '-mappingtype', '64' ],
  ),

  ncgr_cell_gen.process(
    files('pokesprite_2.png'),
    preserve_path_from: base_directory,
    extra_args: [ '-convertTo4Bpp', '-clobbersize', '-mappingtype', '128' ],
  ),

  ncgr_cell_lz_gen.process(
    files(
      'unk_179.png',
      'debug_frame_1.png',
      'debug_frame_2.png',
      'debug_frame_3.png',
    ),
    preserve_path_from: base_directory,
    extra_args: [ '-bitdepth', '4', '-clobbersize' ],
  ),

  ncer_gen.process(
    files('pokesprite_1_cell.json', 'pokesprite_2_cell.json'),
    preserve_path_from: base_directory,
  ),

  ncer_lz_gen.process(
    files(
      'unk_117_cell.json',
      'unk_120_cell.json',
      'unk_121_124_cell.json',
      'unk_179_cell.json',
      'debug_frame_1_cell.json',
      'debug_frame_2_cell.json',
      'debug_frame_3_cell.json',
    ),
    preserve_path_from: base_directory,
  ),

  nanr_gen.process(files('single_frame_anim.json'), preserve_path_from: base_directory),
  nanr_lz_gen.process(files('single_frame_anim.json'), preserve_path_from: base_directory),
]
