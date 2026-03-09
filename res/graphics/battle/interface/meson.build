battle_sprites += [
  nclr_gen.process(
    files('shared.pal'),
    preserve_path_from: base_directory,
    extra_args: [
      '-nopad', '-invertsize', '-pcmp', '-bitdepth', '4',
      '-num_colors', '112',
    ],
  ),

  nclr_gen.process(
    files(
      'cursor.png',
      'level_up.pal',
      'top_stock.png',
    ),
    preserve_path_from: base_directory,
    extra_args: [ '-nopad', '-invertsize', '-pcmp', '-bitdepth', '4' ],
  ),

  ncgr_cell_lz_gen.process(
    files(
      'stock_enemy.png',
      'stock_player.png',
      'cursor.png',
    ),
    preserve_path_from: base_directory,
    extra_args: [ '-bitdepth', '4', '-clobbersize' ],
  ),

  ncgr_cell_lz_gen.process(
    files('level_up.png', 'top_stock.png'),
    preserve_path_from: base_directory,
    extra_args: [ '-bitdepth', '4', '-clobbersize', '-mappingtype', '64' ],
  ),

  ncer_lz_gen.process(
    files(
      'stock_enemy_cell.json',
      'stock_player_cell.json',
      'cursor_cell.json',
      'level_up_cell.json',
      'top_stock_cell.json',
    ),
    preserve_path_from: base_directory,
  ),

  nanr_lz_gen.process(
    files(
      'stock_anim.json',
      'cursor_anim.json',
      'top_stock_anim.json',
    ),
    preserve_path_from: base_directory,
  ),
]
