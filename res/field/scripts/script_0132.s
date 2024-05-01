    .include "macros/scrcmd.inc"

    .data

    .long _000A-.-4
    .long _001D-.-4
    .short 0xFD13

_000A:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 0
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_001D:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_020 0x11C
    ScrCmd_01C 1, _00BD
    ScrCmd_020 120
    ScrCmd_01C 1, _004A
    ScrCmd_02C 1
    ScrCmd_01E 120
    ScrCmd_016 _00C8
    End

_004A:
    ScrCmd_264 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _009C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _00A7
    ScrCmd_02C 4
    ScrCmd_028 0x8004, 215
    ScrCmd_028 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _00B2
    ScrCmd_01E 0x11C
    ScrCmd_014 0x7FC
    ScrCmd_016 _00BD
    End

_009C:
    ScrCmd_02C 2
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00A7:
    ScrCmd_02C 3
    ScrCmd_016 _00C8
    End

_00B2:
    ScrCmd_02C 5
    ScrCmd_016 _00C8
    End

_00BD:
    ScrCmd_02C 6
    ScrCmd_016 _00C8
    End

_00C8:
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End
