battle_sprites += [
  nclr_gen.process(
    files('shared.pal'),
    preserve_path_from: base_directory,
    extra_args: [ '-nopad', '-invertsize', '-pcmp', '-bitdepth', '4' ],
  ),

  ncgr_lz_gen.process(
    files(
      'beauty.png',
      'cute.png',
      'dragon.png',
      'electric.png',
      'psychic.png',
      'dark.png',
      'fighting.png',
      'fire.png',
      'flying.png',
      'ghost.png',
      'ground.png',
      'ice.png',
      'bug.png',
      'smart.png',
      'grass.png',
      'normal.png',
      'poison.png',
      'mystery.png',
      'rock.png',
      'steel.png',
      'tough.png',
      'cool.png',
      'water.png',
    ),
    extra_args: [ '-bitdepth', '4', '-version101', '-clobbersize' ],
    preserve_path_from: base_directory,
  ),

  ncgr_lz_gen.process(
    files(
      'physical.png',
      'status.png',
      'special.png',
    ),
    extra_args: [ '-bitdepth', '4', '-clobbersize' ],
    preserve_path_from: base_directory,
  ),

  ncer_lz_gen.process(files('cell.json'), preserve_path_from: base_directory),
]
