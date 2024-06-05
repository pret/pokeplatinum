    .include "macros/scrcmd.inc"

    .data

    .long _0016-.-4
    .long _0022-.-4
    .long _0035-.-4
    .long _005E-.-4
    .long _007D-.-4
    .short 0xFD13

_0016:
    SetVar 0x8007, 3
    ScrCmd_014 0x7D2
    End

_0022:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 0
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0035:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    CheckFlag 129
    GoToIf 1, _0053
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0053:
    ScrCmd_02C 2
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_005E:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_04B 0x5DC
    ScrCmd_04C 0x1AB, 0
    ScrCmd_02C 3
    ScrCmd_04D
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_007D:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    CompareVar 0x4002, 1
    GoToIf 1, _00F4
    ScrCmd_134 5, 0x800C
    CompareVar 0x800C, 0
    GoToIf 1, _00D9
    ScrCmd_247 0x8000
    ScrCmd_0D0 0, 0x8000
    ScrCmd_02C 6
    ScrCmd_1B9 0x800C, 0x8000
    CompareVar 0x800C, 120
    GoToIf 4, _00FF
    CompareVar 0x800C, 70
    GoToIf 4, _010A
    GoTo _0115
    End

_00D9:
    ScrCmd_02C 4
    SetVar 0x4002, 1
    SetVar 0x8004, 5
    ScrCmd_014 0x7D9
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00F4:
    ScrCmd_02C 5
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00FF:
    ScrCmd_02C 7
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_010A:
    ScrCmd_02C 8
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0115:
    ScrCmd_02C 9
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End
