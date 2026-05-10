subdir('icons')

item_icon_narc = custom_target('item_icon.narc',
    output: [
        'item_icon.narc',
        'item_icon.naix',
    ],
    input: [
        item_icon_ncgrs,
        item_icon_nclrs,
        copy_gen.process(item_icon_unused_ncgrs),
        copy_gen.process(item_icon_unused_nclrs),
        item_icon_nanrs,
        item_icon_ncers,
    ],
    command: [
        nitroarc_exe,
        '--create',
        '--index',
        '--files-from', files('item_icon.order'),
        '--file', '@OUTPUT0@',
        '@PRIVATE_DIR@',
    ],
)

nitrofs_files += item_icon_narc
naix_headers += item_icon_narc[1]

item_data = custom_target('item_data',
    output: [
        'pl_item_data.narc',
        'nuts_data.narc',
        'item_id_map.h',
        'item_tm_move_map.h',
        'item_berry_list.h',
        'item_mail_list.h',
        'item_names.json',
        'item_names_plural.json',
        'item_names_with_articles.json',
        'item_descriptions.json',
    ],

    command: [
        itemproc_exe,
        '-M', '@DEPFILE@',
        '-o', meson.current_build_dir(),
        meson.global_build_root() / 'generated' / 'items.h', # TODO: replace with proper file() reference
        meson.current_source_dir() / 'data',
    ],

    depends: item_icon_narc[1],
    depfile: 'item_data.d',
)

item_data_outputs = item_data.to_list()
h_headers += item_data_outputs.slice(2, 6)
item_text_banks = item_data_outputs.slice(6, item_data_outputs.length())
nitrofs_files += item_data
