scroll_prompts_png = files('scroll_prompts.png')
scroll_prompts_ncgr = ncgr_gen.process(scroll_prompts_png,
    extra_args: [ '-version101', '-clobbersize', ],
)
scroll_prompts_nclr = nclr_gen.process(scroll_prompts_png,
    extra_args: [ '-bitdepth', '4', '-pcmp', '-nopad', '-invertsize', ],
)

scroll_prompts_ncer = ncer_gen.process(files('scroll_prompts_cell.json'))
scroll_prompts_nanr = nanr_gen.process(files('scroll_prompts_anim.json'))

fld_comact_narc = custom_target('fld_comact.narc',
    output: [
        'fld_comact.narc',
        'fld_comact.naix',
    ],
    input: [
        scroll_prompts_ncgr,
        scroll_prompts_nclr,
        scroll_prompts_ncer,
        scroll_prompts_nanr,
    ],
    command: [
        nitroarc_exe,
        '--create',
        '--index',
        '--files-from', files('fld_comact.order'),
        '--file', '@OUTPUT0@',
        '@PRIVATE_DIR@',
    ],
)

nitrofs_files += fld_comact_narc
naix_headers += fld_comact_narc[1]
