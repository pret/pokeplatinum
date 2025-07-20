nuts_data_format_txt     = files('nuts_data_format.txt')
nuts_data_csv            = files('nuts_data.csv')

nuts_data_narc = custom_target('nuts_data.narc',
    output: 'nuts_data.narc',
    input: [
        nuts_data_format_txt,
        nuts_data_csv
    ], 
    command: [
        csv2bin_exe,
        'compile',
        '@INPUT1@',
        '@OUTPUT0@',
        '@INPUT0@',
        '--narc',
        '-i', '@SOURCE_ROOT@/include',
        '-i', '@SOURCE_ROOT@/build',
    ]
)

pl_item_data_format_txt     = files('pl_item_data_format.txt')
pl_item_data_csv            = files('pl_item_data.csv')

pl_item_data_narc = custom_target('pl_item_data.narc',
    output: 'pl_item_data.narc',
    input: [
        pl_item_data_format_txt,
        pl_item_data_csv
    ], 
    command: [
        csv2bin_exe,
        'compile',
        '@INPUT1@',
        '@OUTPUT0@',
        '@INPUT0@',
        '--narc',
        '--pad', '0xFF',
        '-i', '@SOURCE_ROOT@/include',
        '-i', '@SOURCE_ROOT@/build',
    ],
    depends: [ c_consts_generators, ],
)

nitrofs_files += nuts_data_narc
nitrofs_files += pl_item_data_narc

items_data_root = meson.current_source_dir()
items_consts = fs.read(items_txt).splitlines()

other_consts = [
	'347',
  	'348',
	'351',
	'352',
	'365',
	'366',
	'367',
	'368',
	'369',
	'370',
	'371',
	'372',
	'376',
	'377',
	'378',
	'379',
	'380',
	'381',
	'382',
	'383',
	'384',
	'385',
	'386',
	'387',
	'388',
	'389',
	'390',
	'391',
	'395',
	'396',
	'423',
	'424',
	'427',
	'428',
	'434',
	'435',
	'436',
	'443',
	'444',
	'445',
	'446',
	'447',
	'448',
	'449',
	'450',
	'451',
	'452',
	'453',
	'454',
	'455',
	'456',
	'457',
	'458',
	'459',
	'460',
	'461',
	'462',
	'463',
	'464',
	'465',
	'468',
	'709',
	'710',
	'bag_cancel',
	'battle_item',
  	'bone',
	'flute',
	'herb',
	'hm',
	'mushroom',
	'plate',
	'powder',
	'scarf',
	'shard',
	'status_heal',
	'tm',
	'tm_hm_bug',
	'tm_hm_dark',
	'tm_hm_dragon',
	'tm_hm_electric',
	'tm_hm_fighting',
	'tm_hm_fire',
	'tm_hm_flying',
	'tm_hm_ghost',
	'tm_hm_grass',
	'tm_hm_ground',
	'tm_hm_ice',
	'tm_hm_normal',
	'tm_hm_poison',
	'tm_hm_psychic',
	'tm_hm_rock',
	'tm_hm_steel',
	'tm_hm_water',
	'unused',
	'vitamin',
]

items_consts += other_consts

items_dirnames = []
foreach item_const : items_consts
  items_dirnames += item_const.replace('ITEM_', '').to_lower()
endforeach

icon_ncgrs = []
palette_nclrs = []

foreach item : items_dirnames
  root_icon_path = join_paths(items_data_root, item + '.png')
  root_pal_path = join_paths(items_data_root, item + '.pal')
  sub_icon_rel = item + '/icon.png'
  sub_icon_path = join_paths(items_data_root, sub_icon_rel)

  # Case 1: Subfolder icon.png → generate BOTH NCGR and NCLR
  if fs.exists(sub_icon_path)
    icon_input = files(sub_icon_rel)

    # Rename subfolder icon.png to item.png (temp)
    renamed_icon = custom_target('subicon_cp_' + item,
      input: icon_input,
      output: item + '.png',
      command: ['cp', '@INPUT@', '@OUTPUT@']
    )

    # Generate NCGR
    ncgr = ncgr_gen.process(renamed_icon,
	      extra_args: ['-version101', '-clobbersize']
    )
    ncgr_renamed = custom_target('icon_' + item,
      input: ncgr,
      output: 'icon_' + item + '.NCGR',
      command: ['cp', '@INPUT@', '@OUTPUT@']
    )
    icon_ncgrs += [ncgr_renamed]

    # Generate NCLR
    nclr = nclr_gen.process(renamed_icon,
      extra_args: ['-bitdepth', '4']
    )
    nclr_renamed = custom_target('pltt_' + item,
      input: nclr,
      output: 'pltt_' + item + '.NCLR',
      command: ['cp', '@INPUT@', '@OUTPUT@']
    )
    palette_nclrs += [nclr_renamed]

  # Case 2: Only root PNG → NCGR only
  elif fs.exists(root_icon_path)
    icon_input = files(item + '.png')
    ncgr = ncgr_gen.process(icon_input,
      extra_args: ['-version101', '-clobbersize']
    )
    ncgr_renamed = custom_target('icon_' + item,
      input: ncgr,
      output: 'icon_' + item + '.NCGR',
      command: ['cp', '@INPUT@', '@OUTPUT@']
    )
    icon_ncgrs += [ncgr_renamed]

  # Case 3: Only root PAL → NCLR only
  elif fs.exists(root_pal_path)
    pal_input = files(item + '.pal')
    nclr = nclr_gen.process(pal_input,
      extra_args: ['-bitdepth', '4']
    )
    nclr_renamed = custom_target('pltt_' + item,
      input: nclr,
      output: 'pltt_' + item + '.NCLR',
      command: ['cp', '@INPUT@', '@OUTPUT@']
    )
    palette_nclrs += [nclr_renamed]
  endif
endforeach

# Replace the generator outputs
icon_cell_json = files('icon_cell.json')
icon_anim_json = files('icon_anim.json')

item_ncer = ncer_gen.process(icon_cell_json)
item_nanr = nanr_gen.process(icon_anim_json)

item_icon_order = files('item_icon.order')

item_icon_assets = custom_target('item_icon_assets',
  output: 'icon_narc_inputs.staged',
  input: icon_ncgrs + palette_nclrs + item_nanr + item_ncer,
  command: [
    'mkdir', '-p', '@OUTPUT@',
    '&&',
    'mv', '-t', '@OUTPUT@', '@INPUT@'
  ],
  build_by_default: false
)

item_icon_narc = custom_target('item_icon.narc',
  output: ['item_icon.narc', 'item_icon.naix'],
  input: item_icon_assets,
  depends: [item_icon_assets],
  command: [
    narc_exe, 'create',
    '--naix',
    '--order', item_icon_order,
    '--output', '@OUTPUT0@',
    '@INPUT@'
  ]
)

nitrofs_files += item_icon_narc
naix_headers += item_icon_narc[1]