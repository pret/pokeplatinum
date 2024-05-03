    .include "macros/scrcmd.inc"

    .data

    .long _001E-.-4
    .long _00C7-.-4
    .long _00CB-.-4
    .long _013B-.-4
    .long _01D0-.-4
    .long _0230-.-4
    .long _030C-.-4
    .short 0xFD13

_001E:
    CheckFlag 186
    CallIf 1, _009D
    CheckFlag 186
    CallIf 0, _0087
    CompareVarToValue 0x4097, 0
    CallIf 1, _0071
    ScrCmd_14D 0x4000
    CompareVarToValue 0x4000, 0
    GoToIf 1, _0061
    CompareVarToValue 0x4000, 1
    GoToIf 1, _0069
    End

_0061:
    SetVar 0x4020, 97
    End

_0069:
    SetVar 0x4020, 0
    End

_0071:
    ScrCmd_186 5, 46, 50
    ScrCmd_188 5, 14
    ScrCmd_189 5, 0
    Return

_0087:
    ScrCmd_186 5, 46, 51
    ScrCmd_188 5, 15
    ScrCmd_189 5, 1
    Return

_009D:
    ScrCmd_186 5, 50, 37
    ScrCmd_188 5, 16
    ScrCmd_189 5, 2
    ScrCmd_186 6, 50, 39
    ScrCmd_188 6, 16
    ScrCmd_189 6, 2
    Return

_00C7:
    End
    End

_00CB:
    ScrCmd_049 0x5DC
    ScrCmd_060
    CheckFlag 186
    GoToIf 1, _0128
    ApplyMovement 5, _01C8
    WaitMovement
    ScrCmd_02C 2
    ScrCmd_068
    ScrCmd_14D 0x800C
    CompareVarToValue 0x800C, 0
    GoToIf 1, _0104
    GoTo _0112
    End

_0104:
    ScrCmd_0CD 0
    ScrCmd_02C 3
    GoTo _0120
    End

_0112:
    ScrCmd_0CD 0
    ScrCmd_02C 5
    GoTo _0120
    End

_0120:
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0128:
    ScrCmd_068
    ScrCmd_0CD 0
    ScrCmd_0CE 1
    ScrCmd_02C 14
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_013B:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    CheckFlag 186
    GoToIf 1, _018B
    ScrCmd_14D 0x800C
    CompareVarToValue 0x800C, 0
    GoToIf 1, _0167
    GoTo _0175
    End

_0167:
    ScrCmd_0CD 0
    ScrCmd_02C 7
    GoTo _0183
    End

_0175:
    ScrCmd_0CD 0
    ScrCmd_02C 8
    GoTo _0183
    End

_0183:
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_018B:
    ScrCmd_14D 0x800C
    CompareVarToValue 0x800C, 0
    GoToIf 1, _01A4
    GoTo _01B2
    End

_01A4:
    ScrCmd_0CD 0
    ScrCmd_02C 15
    GoTo _01C0
    End

_01B2:
    ScrCmd_0CD 0
    ScrCmd_02C 16
    GoTo _01C0
    End

_01C0:
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .balign 4, 0
_01C8:
    MoveAction_023
    EndMovement

_01D0:
    ScrCmd_060
    ApplyMovement 5, _0220
    WaitMovement
    ScrCmd_14D 0x800C
    CompareVarToValue 0x800C, 0
    GoToIf 1, _01F5
    GoTo _0203
    End

_01F5:
    ScrCmd_0CD 0
    ScrCmd_02C 0
    GoTo _0211
    End

_0203:
    ScrCmd_0CD 0
    ScrCmd_02C 1
    GoTo _0211
    End

_0211:
    SetVar 0x4097, 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .balign 4, 0
_0220:
    MoveAction_021
    MoveAction_04B
    MoveAction_00D
    EndMovement

_0230:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ApplyMovement 6, _02F4
    WaitMovement
    ScrCmd_02C 9
    ScrCmd_034
    ScrCmd_0E5 0x195, 0
    ScrCmd_0EC 0x800C
    CompareVarToValue 0x800C, 0
    GoToIf 1, _02DB
    ScrCmd_02C 10
    ScrCmd_02C 11
    ScrCmd_02C 12
    ScrCmd_034
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_065 7
    ScrCmd_065 8
    ScrCmd_065 0
    ScrCmd_065 1
    ScrCmd_065 2
    ScrCmd_065 3
    SetFlag 0x98E
    ApplyMovement 6, _02FC
    ApplyMovement 0xFF, _0304
    WaitMovement
    ScrCmd_187 5, 53, 1, 39, 3
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    SetFlag 0x29A
    SetFlag 186
    ClearFlag 0x1BA
    SetVar 0x40D3, 1
    ScrCmd_0CE 0
    ScrCmd_02C 13
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_02DB:
    ScrCmd_0EB
    ScrCmd_061
    End

    .byte 0
    .byte 0
    .byte 0
    .byte 32
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 12
    .byte 0
    .byte 3
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_02F4:
    MoveAction_023
    EndMovement

    .balign 4, 0
_02FC:
    MoveAction_021
    EndMovement

    .balign 4, 0
_0304:
    MoveAction_022
    EndMovement

_030C:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 6
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .byte 0
    .byte 0
    .byte 0
