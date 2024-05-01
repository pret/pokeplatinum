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
    ScrCmd_028 0x8004, 0x1BD
    ScrCmd_0D1 0, 0x8004
    CheckFlag 132
    GoToIf 1, _005E
    ScrCmd_02C 1
    ScrCmd_03E 0x800C
    CompareVarToValue 0x800C, 0
    GoToIf 1, _00A7
    CompareVarToValue 0x800C, 1
    GoToIf 1, _009C
    End

_005E:
    ScrCmd_0D1 0, 0x8004
    ScrCmd_02C 3
    ScrCmd_03E 0x800C
    CompareVarToValue 0x800C, 0
    GoToIf 1, _0086
    CompareVarToValue 0x800C, 1
    GoToIf 1, _0091
    End

_0086:
    ScrCmd_02C 5
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0091:
    ScrCmd_02C 6
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_009C:
    ScrCmd_02C 4
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00A7:
    ScrCmd_0D1 0, 0x8004
    ScrCmd_02C 2
    ScrCmd_028 0x8005, 1
    ScrCmd_014 0x7FC
    SetFlag 132
    GoTo _005E

    .byte 0
