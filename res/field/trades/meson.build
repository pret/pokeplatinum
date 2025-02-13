npc_trades_bin_gen = generator(
    npc_trades_py,
    arguments: [ '@INPUT@', '@OUTPUT@', ],
    output: '@BASENAME@'
)

npc_trades_files = files(
    'npc_trade_kazza_abra.json',
    'npc_trade_charap_chatot.json',
    'npc_trade_gaspar_haunter.json',
    'npc_trade_foopa_magikarp.json',
)

npc_trades_order = files('npc_trades.order')
npc_trades_narc = custom_target('fld_trade.narc',
    output: [
        'fld_trade.narc',
        'fld_trade.naix',
    ],
    input: npc_trades_bin_gen.process(npc_trades_files, env: json2bin_env),
    depends: [ py_consts_generators ],
    command: [
        narc_exe, 'create',
        '--naix',
        '--order', npc_trades_order,
        '--output', '@OUTPUT0@',
        '@PRIVATE_DIR@',
    ]
)

nitrofs_files += npc_trades_narc
naix_headers += npc_trades_narc[1]
