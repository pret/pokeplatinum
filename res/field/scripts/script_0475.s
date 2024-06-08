    .include "macros/scrcmd.inc"

    .data

    ScriptEntry _000A
    ScriptEntry _001D
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
    SetVar 0x8004, 0x1BD
    ScrCmd_0D1 0, 0x8004
    GoToIfSet 132, _005E
    ScrCmd_02C 1
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _00A7
    GoToIfEq 0x800C, 1, _009C
    End

_005E:
    ScrCmd_0D1 0, 0x8004
    ScrCmd_02C 3
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _0086
    GoToIfEq 0x800C, 1, _0091
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
    SetVar 0x8005, 1
    ScrCmd_014 0x7FC
    SetFlag 132
    GoTo _005E

    .byte 0
