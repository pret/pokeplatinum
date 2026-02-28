player_cell = files('player_cell.json')[0]
enemy_cell = files('enemy_cell.json')[0]

battle_sprites += [
  ncer_lz_gen.process(
    player_cell, enemy_cell,
    preserve_path_from: base_directory,
  ),

  nanr_lz_gen.process(
    files('player_anim.json', 'enemy_anim.json'),
    preserve_path_from: base_directory,
  ),
]

subdir('battle_arcade')
subdir('battle_castle')
subdir('battle_factory')
subdir('battle_hall')
subdir('battle_tower')
subdir('cave')
subdir('distortion_world')
subdir('giratina')
subdir('grass')
subdir('ice')
subdir('indoors')
subdir('league_aaron')
subdir('league_bertha')
subdir('league_cynthia')
subdir('league_flint')
subdir('league_lucian')
subdir('mud')
subdir('path')
subdir('path_puddles')
subdir('rocky')
subdir('sand')
subdir('snow')
subdir('water')
