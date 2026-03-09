battle_sprites += [
  nclr_gen.process(
    files('all.pal'),
    preserve_path_from: base_directory,
  ),
  ncgr_lz_gen.process(
    files('player.png'),
    preserve_path_from: base_directory,
    extra_args: [
      '-bitdepth', '4', '-clobbersize', '-mappingtype', '64',
      '-cell', player_cell.full_path(),
    ],
  ),
  ncgr_lz_gen.process(
    files('enemy.png'),
    preserve_path_from: base_directory,
    extra_args: [
      '-bitdepth', '4', '-clobbersize', '-mappingtype', '64',
      '-cell', enemy_cell.full_path(),
    ],
  ),
]
