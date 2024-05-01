    .include "macros/scrcmd.inc"

    .data

    .long _0006-.-4
    .short 0xFD13

_0006:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    CheckFlag 0x131
    ScrCmd_01C 1, _0105
    CheckFlag 0x97E
    ScrCmd_01C 1, _0033
    SetFlag 0x97E
    ScrCmd_02C 0
    GoTo _003E
    End

_0033:
    ScrCmd_02C 1
    GoTo _003E
    End

_003E:
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0057
    GoTo _00FA
    End

_0057:
    ScrCmd_177 0x800C
    ScrCmd_011 0x800C, 6
    ScrCmd_01C 1, _00EF
    ScrCmd_02C 2
    ScrCmd_04E 0x486
    ScrCmd_0CD 0
    ScrCmd_02C 3
    ScrCmd_04F
    ScrCmd_096 133, 20, 0, 0x800C
    SetFlag 0x131
    ScrCmd_02C 4
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _00A8
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _00E9
    End

_00A8:
    ScrCmd_034
    ScrCmd_177 0x4000
    ScrCmd_027 0x4000, 1
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_0BB 0x4000, 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01D 5, _00E3
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_061
    End

_00E3:
    ScrCmd_1E5 49
    Return

_00E9:
    ScrCmd_034
    ScrCmd_061
    End

_00EF:
    ScrCmd_02C 5
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00FA:
    ScrCmd_02C 6
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0105:
    ScrCmd_22D 2, 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0122
    ScrCmd_02C 7
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0122:
    ScrCmd_02C 8
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .byte 0
    .byte 0
    .byte 0
