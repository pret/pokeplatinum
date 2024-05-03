    .include "macros/scrcmd.inc"

    .data

    .long _0032-.-4
    .long _026C-.-4
    .long _022C-.-4
    .long _0038-.-4
    .long _0294-.-4
    .long _0304-.-4
    .long _0317-.-4
    .long _032A-.-4
    .long _033D-.-4
    .long _0350-.-4
    .long _0367-.-4
    .long _0378-.-4
    .short 0xFD13

_0032:
    SetFlag 0x980
    End

_0038:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 1
    ScrCmd_03E 0x800C
    CompareVarToValue 0x800C, 0
    GoToIf 1, _006E
    CompareVarToValue 0x800C, 1
    GoToIf 1, _0063
    End

_0063:
    ScrCmd_02C 3
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_006E:
    ScrCmd_02C 2
    ScrCmd_034
    ScrCmd_0E5 0x1A0, 0
    ScrCmd_0EC 0x800C
    CompareVarToValue 0x800C, 0
    GoToIf 1, _0191
    ScrCmd_02C 4
    ScrCmd_034
    ScrCmd_1BD 0x800C
    CompareVarToValue 0x800C, 0
    GoToIf 1, _00BC
    CompareVarToValue 0x800C, 2
    GoToIf 1, _00EC
    CompareVarToValue 0x800C, 3
    GoToIf 1, _0114
    End

_00BC:
    ApplyMovement 2, _0198
    ApplyMovement 0xFF, _01E0
    WaitMovement
    Call _013C
    ApplyMovement 3, _01B4
    ApplyMovement 0xFF, _0204
    WaitMovement
    GoTo _0166

_00EC:
    ApplyMovement 2, _0198
    ApplyMovement 0xFF, _01F0
    WaitMovement
    Call _013C
    ApplyMovement 3, _01C0
    WaitMovement
    GoTo _0166

_0114:
    ApplyMovement 2, _01A4
    ApplyMovement 0xFF, _01FC
    WaitMovement
    Call _013C
    ApplyMovement 3, _01D0
    WaitMovement
    GoTo _0166

_013C:
    ScrCmd_065 2
    ScrCmd_065 3
    ScrCmd_186 3, 0x1D2, 0x213
    ScrCmd_189 3, 0
    ScrCmd_188 3, 14
    ClearFlag 0x1AC
    ScrCmd_064 3
    ScrCmd_062 3
    Return

_0166:
    ScrCmd_02C 5
    ScrCmd_0CD 0
    ScrCmd_0D1 1, 0x1B7
    ScrCmd_04E 0x486
    ScrCmd_02C 6
    ScrCmd_04F
    ScrCmd_07C 0x1B7, 1, 0x800C
    SetFlag 166
    ScrCmd_02C 7
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0191:
    ScrCmd_0EB
    ScrCmd_061
    End

    .balign 4, 0
_0198:
    MoveAction_012 3
    MoveAction_011 9
    EndMovement

    .balign 4, 0
_01A4:
    MoveAction_011 2
    MoveAction_012 3
    MoveAction_011 7
    EndMovement

    .balign 4, 0
_01B4:
    MoveAction_00C 8
    MoveAction_00E 2
    EndMovement

    .balign 4, 0
_01C0:
    MoveAction_00C 8
    MoveAction_00E 2
    MoveAction_020
    EndMovement

    .balign 4, 0
_01D0:
    MoveAction_00C 8
    MoveAction_00E 4
    MoveAction_020
    EndMovement

    .balign 4, 0
_01E0:
    MoveAction_022
    MoveAction_03F
    MoveAction_021
    EndMovement

    .balign 4, 0
_01F0:
    MoveAction_03F 3
    MoveAction_021
    EndMovement

    .balign 4, 0
_01FC:
    MoveAction_021
    EndMovement

    .balign 4, 0
_0204:
    MoveAction_03F 8
    MoveAction_03E
    MoveAction_023
    EndMovement

    .byte 63
    .byte 0
    .byte 8
    .byte 0
    .byte 33
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 63
    .byte 0
    .byte 9
    .byte 0
    .byte 33
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

_022C:
    ScrCmd_060
    ApplyMovement 0xFF, _0264
    ApplyMovement 3, _025C
    WaitMovement
    Call _024A
    ScrCmd_061
    End

_024A:
    SetVar 0x40F1, 1
    ScrCmd_02C 0
    ScrCmd_031
    ScrCmd_034
    Return

    .balign 4, 0
_025C:
    MoveAction_023
    EndMovement

    .balign 4, 0
_0264:
    MoveAction_002
    EndMovement

_026C:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    CheckFlag 166
    GoToIf 1, _0289
    Call _024A
    ScrCmd_061
    End

_0289:
    ScrCmd_02C 8
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0294:
    ScrCmd_060
    ApplyMovement 0xFF, _02E0
    ApplyMovement 4, _02E8
    WaitMovement
    ScrCmd_02C 9
    ApplyMovement 4, _02F4
    WaitMovement
    ScrCmd_02C 10
    ScrCmd_034
    ApplyMovement 4, _02FC
    WaitMovement
    SetVar 0x4074, 2
    SetFlag 0x299
    ScrCmd_003 12, 0x800C
    ScrCmd_02C 11
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .balign 4, 0
_02E0:
    MoveAction_023
    EndMovement

    .balign 4, 0
_02E8:
    MoveAction_04B
    MoveAction_00E 2
    EndMovement

    .balign 4, 0
_02F4:
    MoveAction_020
    EndMovement

    .balign 4, 0
_02FC:
    MoveAction_022
    EndMovement

_0304:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 11
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0317:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 12
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_032A:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 14
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_033D:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 13
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0350:
    ScrCmd_036 15, 0, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    End

_0367:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 16
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0378:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 17
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .byte 0
    .byte 0
    .byte 0
