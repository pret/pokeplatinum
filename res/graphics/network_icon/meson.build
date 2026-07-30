local_connection_ncgr = custom_target('local_connection_ncgr',
    input: ['local_connection.png'],
    output: ['local_connection.NCGR'],
    command: [
        nitrogfx_exe,
        '@INPUT@',
        '@OUTPUT@',
        '-version101',
        '-sopc',
        '-width', '16',
    ]
)

wifi_connection_ncgr = custom_target('wifi_connection_ncgr',
    input: ['wifi_connection.png'],
    output: ['wifi_connection.NCGR'],
    command: [
        nitrogfx_exe,
        '@INPUT@',
        '@OUTPUT@',
        '-version101',
        '-sopc',
        '-width', '16',
    ]
)

network_icon_nclr = custom_target('network_icon_nclr',
    input: ['local_connection.png'],
    output: ['network_icon.NCLR'],
    command: [
        nitrogfx_exe,
        '@INPUT@',
        '@OUTPUT@',
    ]
)

nitrofs_files += local_connection_ncgr
nitrofs_files += wifi_connection_ncgr
nitrofs_files += network_icon_nclr
