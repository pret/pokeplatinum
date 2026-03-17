npc_trades_bin_gen = generator(
    npc_trades_py,
    arguments: [ '@INPUT@', '@OUTPUT@', ],
    output: '@BASENAME@',
    depends: [ py_consts_generators ],
)

npc_trades_consts = fs.read(npc_trades_txt).splitlines()
npc_trades_files = []
foreach npc_trade: npc_trades_consts
    if npc_trade.startswith('MAX_')
        continue
    endif
    npc_trades_files += files(npc_trade.to_lower() + '.json')
endforeach

npc_trades_narc = custom_target('fld_trade.narc',
    output: 'fld_trade.narc',
    input: npc_trades_bin_gen.process(npc_trades_files, env: jsoncnv_env),
    command: [
        nitroarc_exe,
        '--create',
        '--files-from', files('npc_trades.order'),
        '--file', '@OUTPUT0@',
        '@PRIVATE_DIR@',
    ],
)

nitrofs_files += npc_trades_narc
