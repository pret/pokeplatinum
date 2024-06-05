    .include "macros/scrcmd.inc"

    .data

    .long _0032-.-4
    .long _00B4-.-4
    .long _0047-.-4
    .long _0174-.-4
    .long _0187-.-4
    .long _019A-.-4
    .long _01AD-.-4
    .long _01C0-.-4
    .long _01EB-.-4
    .long _01FE-.-4
    .long _0215-.-4
    .long _022A-.-4
    .short 0xFD13

_0032:
    GoToIfGe 0x407F, 1, _0041
    End

_0041:
    SetFlag 0x1F3
    End

_0047:
    ScrCmd_060
    ApplyMovement 6, _009C
    WaitMovement
    ScrCmd_02C 0
    ScrCmd_034
    ScrCmd_22D 2, 0x800C
    GoToIfEq 0x800C, 1, _0088
    GoTo _0072
    End

_0072:
    ApplyMovement 6, _00A4
    ApplyMovement 0xFF, _00AC
    WaitMovement
    ScrCmd_061
    End

_0088:
    GoToIfUnset 0x964, _0072
    GoTo _0111

    .balign 4, 0
_009C:
    MoveAction_022
    EndMovement

    .balign 4, 0
_00A4:
    MoveAction_021
    EndMovement

    .balign 4, 0
_00AC:
    MoveAction_00D
    EndMovement

_00B4:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_22D 2, 0x800C
    GoToIfEq 0x800C, 1, _00DF
    GoTo _00D4

_00D4:
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00DF:
    GoToIfUnset 0x964, _00D4
    GoToIfEq 0x407F, 0, _0102
    ScrCmd_02C 2
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0102:
    ScrCmd_02C 0
    ScrCmd_034
    Call _011B
    ScrCmd_061
    End

_0111:
    Call _011B
    ScrCmd_061
    End

_011B:
    ScrCmd_003 30, 0x800C
    ClearFlag 0x1F3
    ScrCmd_064 7
    ApplyMovement 7, _016C
    WaitMovement
    ScrCmd_02C 3
    ScrCmd_034
    ApplyMovement 0xFF, _0164
    ApplyMovement 6, _015C
    WaitMovement
    SetVar 0x407F, 1
    ScrCmd_02C 4
    ScrCmd_031
    ScrCmd_034
    Return

    .balign 4, 0
_015C:
    MoveAction_001
    EndMovement

    .balign 4, 0
_0164:
    MoveAction_021
    EndMovement

    .balign 4, 0
_016C:
    MoveAction_00C 7
    EndMovement

_0174:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 4
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0187:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 5
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_019A:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 6
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_01AD:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 9
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_01C0:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    GoToIfGe 0x407F, 1, _01E0
    ScrCmd_02C 7
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_01E0:
    ScrCmd_02C 8
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_01EB:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 14
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_01FE:
    ScrCmd_036 18, 0, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    End

_0215:
    ScrCmd_037 3, 0
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03A 19, 0x800C
    ScrCmd_014 0x7D0
    End

_022A:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    GoToIfUnset 0x964, _0260
    ScrCmd_02C 10
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _0276
    GoToIfEq 0x800C, 1, _026B
    End

_0260:
    ScrCmd_02C 13
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_026B:
    ScrCmd_02C 12
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0276:
    CallIfUnset 0x157, _02A0
    ScrCmd_02C 11
    ScrCmd_034
    Call _035C
    Call _0376
    ScrCmd_23D 2, 3, 188, 0x26F, 0x1B2
    ScrCmd_061
    End

_02A0:
    ClearFlag 0x256
    ScrCmd_064 10
    ScrCmd_062 10
    ScrCmd_034
    ApplyMovement 10, _0320
    WaitMovement
    ScrCmd_02C 15
    ApplyMovement 0xFF, _030C
    WaitMovement
    ScrCmd_034
    ApplyMovement 10, _0334
    WaitMovement
    ScrCmd_003 15, 0x800C
    ScrCmd_02C 16
    ScrCmd_034
    ApplyMovement 10, _033C
    WaitMovement
    ScrCmd_02C 17
    ScrCmd_034
    ApplyMovement 10, _0348
    WaitMovement
    ScrCmd_065 10
    ApplyMovement 0xFF, _0318
    WaitMovement
    SetFlag 0x157
    Return

    .balign 4, 0
_030C:
    MoveAction_04B
    MoveAction_020
    EndMovement

    .balign 4, 0
_0318:
    MoveAction_021
    EndMovement

    .balign 4, 0
_0320:
    MoveAction_00E 4
    MoveAction_00D 2
    MoveAction_00E 6
    MoveAction_00D 2
    EndMovement

    .balign 4, 0
_0334:
    MoveAction_00F
    EndMovement

    .balign 4, 0
_033C:
    MoveAction_00E
    MoveAction_021
    EndMovement

    .balign 4, 0
_0348:
    MoveAction_00C 2
    MoveAction_00F 3
    MoveAction_00C 2
    MoveAction_00F 7
    EndMovement

_035C:
    ApplyMovement 8, _0390
    WaitMovement
    ScrCmd_049 0x603
    ApplyMovement 8, _039C
    WaitMovement
    Return

_0376:
    ApplyMovement 0xFF, _03A4
    WaitMovement
    ScrCmd_049 0x603
    ApplyMovement 0xFF, _039C
    WaitMovement
    Return

    .balign 4, 0
_0390:
    MoveAction_001
    MoveAction_040
    EndMovement

    .balign 4, 0
_039C:
    MoveAction_045
    EndMovement

    .balign 4, 0
_03A4:
    MoveAction_00D
    MoveAction_040
    EndMovement
