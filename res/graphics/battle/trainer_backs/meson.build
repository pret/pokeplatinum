shared_cell = files('shared_cell.json')

battle_sprites += [
  nclr_gen.process(
    files(
      'lucas_dp.png',
      'dawn_dp.png',
      'barry_dp.png',
      'cheryl.png',
      'riley.png',
      'marley.png',
      'buck.png',
      'mira.png',
    ),
    preserve_path_from: base_directory,
    extra_args: [ '-bitdepth', '4' ],
  ),

  ncgr_lz_gen.process(
    files(
      'lucas_dp.png',
      'dawn_dp.png',
      'barry_dp.png',
      'cheryl.png',
      'riley.png',
      'marley.png',
      'buck.png',
      'mira.png',
    ),
    preserve_path_from: base_directory,
    extra_args: [
      '-bitdepth', '4', '-clobbersize', '-mappingtype', '64',
      '-vram', '-cell', shared_cell[0].full_path(),
    ],
  ),

  ncer_lz_gen.process(shared_cell, preserve_path_from: base_directory),
  nanr_lz_gen.process(files('shared_anim.json'), preserve_path_from: base_directory),
]
