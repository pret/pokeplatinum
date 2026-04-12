scroll_prompts_png = files('scroll_prompts.png')
scroll_prompts_ncgr = ncgr_cell_gen.process(scroll_prompts_png,
    extra_args: [ '-version101', '-clobbersize', ],
)
scroll_prompts_nclr = nclr_gen.process(scroll_prompts_png,
    extra_args: [ '-bitdepth', '4', '-pcmp', '-nopad', '-invertsize', ],
)

scroll_prompts_ncer = ncer_gen.process(files('scroll_prompts_cell.json'))
scroll_prompts_nanr = nanr_gen.process(files('scroll_prompts_anim.json'))

scroll_prompts_narc = custom_target('scroll_prompts.narc',
    output: [
        'scroll_prompts.narc',
        'scroll_prompts.naix',
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
        '--files-from', files('scroll_prompts.order'),
        '--file', '@OUTPUT0@',
        '@PRIVATE_DIR@',
    ],
)

nitrofs_files += scroll_prompts_narc
naix_headers += scroll_prompts_narc[1]
