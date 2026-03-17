subdir('moves')

battle_sprites = []
base_directory = meson.current_source_dir()
base_build_directory = meson.current_build_dir()

subdir('ball_throws')
subdir('healthbox')
subdir('interface')
subdir('misc')
subdir('terrain')
subdir('trainer_backs')
subdir('type_icons')

battle_sprites_narc = custom_target(
  'sprites.narc',
  output: [ 'sprites.narc', 'sprites.naix' ],
  input: battle_sprites,

  command: [
    nitroarc_exe,
    '--create',
    '--index',
    '--files-from', files('sprites.order'),
    '--file', '@OUTPUT0@',
    '@PRIVATE_DIR@',
  ],
)

nitrofs_files += battle_sprites_narc
naix_headers += battle_sprites_narc[1]
