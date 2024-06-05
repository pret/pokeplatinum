    .include "macros/scrcmd.inc"

    .data

    .long _0022-.-4
    .long _0035-.-4
    .long _0048-.-4
    .long _005B-.-4
    .long _0071-.-4
    .long _0087-.-4
    .long _0098-.-4
    .long _00A9-.-4
    .short 0xFD13

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
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0048:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 2
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_005B:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_014 0x7E3
    ScrCmd_035
    ScrCmd_148 8
    ScrCmd_061
    End

_0071:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_014 0x7E3
    ScrCmd_035
    ScrCmd_148 9
    ScrCmd_061
    End

_0087:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 5
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0098:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 6
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00A9:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    CheckFlag 0x129
    GoToIf 1, _0109
    ScrCmd_0DE 0x800C
    CompareVar 0x800C, 0x183
    CallIf 1, _0119
    CompareVar 0x800C, 0x186
    CallIf 1, _0121
    CompareVar 0x800C, 0x189
    CallIf 1, _0129
    SetVar 0x4107, 0x8004
    ScrCmd_343 0, 0x8004
    ScrCmd_02C 3
    SetVar 0x8005, 1
    ScrCmd_014 0x7DF
    SetFlag 0x129
    ScrCmd_034
    ScrCmd_061
    End

_0109:
    ScrCmd_261 0, 0x4107
    ScrCmd_02C 4
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0119:
    SetVar 0x8004, 94
    Return

_0121:
    SetVar 0x8004, 92
    Return

_0129:
    SetVar 0x8004, 93
    Return

    .byte 0
    .byte 0
    .byte 0
