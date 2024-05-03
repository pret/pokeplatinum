    .include "macros/scrcmd.inc"

    .data

    .long _005C-.-4
    .long _006F-.-4
    .long _0082-.-4
    .long _0095-.-4
    .long _00BE-.-4
    .long _00D5-.-4
    .long _0130-.-4
    .long _002A-.-4
    .long _0045-.-4
    .long _0141-.-4
    .short 0xFD13

_002A:
    GoTo _0032
    End

_0032:
    ScrCmd_1B7 0x40C2, 3
    CheckFlag 214
    GoToIf 0, _0052
    End

_0045:
    CheckFlag 214
    GoToIf 0, _0052
    End

_0052:
    ScrCmd_18A 0, 0x28C, 0x150
    End

_005C:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 7
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_006F:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 8
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0082:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 9
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0095:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    CheckFlag 215
    GoToIf 1, _00B3
    ScrCmd_02C 10
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00B3:
    ScrCmd_02C 11
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00BE:
    ScrCmd_036 13, 0, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    End

_00D5:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_0CD 0
    ScrCmd_02C 0
    ScrCmd_034
    ApplyMovement 8, _011C
    WaitMovement
    ScrCmd_168 20, 10, 12, 18, 77
    ScrCmd_16B 77
    ScrCmd_169 77
    ApplyMovement 8, _0124
    WaitMovement
    ScrCmd_16C 77
    ScrCmd_169 77
    ScrCmd_16A 77
    ScrCmd_065 8
    ScrCmd_061
    End

    .balign 4, 0
_011C:
    MoveAction_020
    EndMovement

    .balign 4, 0
_0124:
    MoveAction_00C
    MoveAction_045
    EndMovement

_0130:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0141:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_234 0x4000
    CompareVarToValue 0x4000, 0
    GoToIf 1, _01BE
    CompareVarToValue 0x4000, 6
    GoToIf 1, _01BE
    ScrCmd_0CE 0
    ScrCmd_0CD 1
    SetVar 0x8008, 0x40C2
    CompareVarToValue 0x8008, 0
    GoToIf 1, _0195
    CompareVarToValue 0x8008, 1
    GoToIf 1, _01A0
    GoTo _01AB
    End

_0195:
    ScrCmd_02C 4
    GoTo _01B6
    End

_01A0:
    ScrCmd_02C 5
    GoTo _01B6
    End

_01AB:
    ScrCmd_02C 6
    GoTo _01B6
    End

_01B6:
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_01BE:
    CheckFlag 0xAB2
    GoToIf 1, _02CB
    ScrCmd_0CE 0
    ScrCmd_0CD 1
    ScrCmd_02C 2
    ScrCmd_034
    ScrCmd_0DE 0x800C
    CompareVarToValue 0x800C, 0x183
    GoToIf 1, _0236
    CompareVarToValue 0x800C, 0x186
    GoToIf 1, _0272
    GoTo _01FA
    End

_01FA:
    ScrCmd_28F 0x800C
    CompareVarToValue 0x800C, 20
    GoToIf 0, _021A
    CompareVarToValue 0x800C, 20
    GoToIf 4, _0228
    End

_021A:
    ScrCmd_0E5 0x345, 0
    GoTo _02AE
    End

_0228:
    ScrCmd_0E5 0x367, 0
    GoTo _02AE
    End

_0236:
    ScrCmd_28F 0x800C
    CompareVarToValue 0x800C, 20
    GoToIf 0, _0256
    CompareVarToValue 0x800C, 20
    GoToIf 4, _0264
    End

_0256:
    ScrCmd_0E5 0x346, 0
    GoTo _02AE
    End

_0264:
    ScrCmd_0E5 0x368, 0
    GoTo _02AE
    End

_0272:
    ScrCmd_28F 0x800C
    CompareVarToValue 0x800C, 20
    GoToIf 0, _0292
    CompareVarToValue 0x800C, 20
    GoToIf 4, _02A0
    End

_0292:
    ScrCmd_0E5 0x347, 0
    GoTo _02AE
    End

_02A0:
    ScrCmd_0E5 0x369, 0
    GoTo _02AE
    End

_02AE:
    ScrCmd_0EC 0x800C
    CompareVarToValue 0x800C, 0
    GoToIf 1, _02DC
    SetFlag 0xAB2
    GoTo _02CB
    End

_02CB:
    ScrCmd_0CE 0
    ScrCmd_0CD 1
    ScrCmd_02C 3
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_02DC:
    ScrCmd_0EB
    ScrCmd_061
    End

    .byte 0
    .byte 0
