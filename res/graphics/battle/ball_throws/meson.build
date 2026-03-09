shared_cell = files('shared_cell.json')
mud_cell = files('mud_cell.json')
mud = files('mud.png')
balls = files(
  'poke_ball.png',
  'master_ball.png',
  'ultra_ball.png',
  'great_ball.png',
  'safari_ball.png',
  'net_ball.png',
  'dive_ball.png',
  'nest_ball.png',
  'repeat_ball.png',
  'timer_ball.png',
  'luxury_ball.png',
  'premier_ball.png',
  'quick_ball.png',
  'dusk_ball.png',
  'heal_ball.png',
  'cherish_ball.png',
  'park_ball.png',
  'bait.png',
  'unused_poke_ball.png',
)

battle_sprites += [
  nclr_gen.process(
    balls,
    mud,
    preserve_path_from: base_directory,
    extra_args: [ '-nopad', '-invertsize', '-pcmp', '-bitdepth', '4' ],
  ),

  ncgr_lz_gen.process(
    balls,
    preserve_path_from: base_directory,
    extra_args: [
      '-bitdepth', '4', '-clobbersize', '-mappingtype', '64',
      '-cell', shared_cell[0].full_path()
    ],
  ),

  ncgr_cell_lz_gen.process(
    mud,
    preserve_path_from: base_directory,
    extra_args: [ '-bitdepth', '4', '-clobbersize', '-mappingtype', '64' ],
  ),

  ncer_lz_gen.process(shared_cell, mud_cell, preserve_path_from: base_directory),

  nanr_lz_gen.process(
    files(
      'mud_anim.json',
      'quick_dusk_heal_anim.json',
      'bait_anim.json',
      'shared_anim.json',
      'unused_poke_ball_anim.json',
    ),
    preserve_path_from: base_directory,
  ),
]
