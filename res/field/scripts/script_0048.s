    .include "macros/scrcmd.inc"

    .data

    .long _000E-.-4
    .long _010B-.-4
    .long _00A5-.-4
    .short 0xFD13

_000E:
    GoToIfEq 0x4106, 0, _0037
    CompareVar 0x4106, 3
    CallIf 1, _0073
    CompareVar 0x4106, 1
    CallIf 4, _007B
_0035:
    End

_0037:
    GoToIfSet 0x12C, _0035
    ScrCmd_166 0x4000
    GoToIfEq 0x4000, 0, _0035
    ScrCmd_22D 2, 0x4000
    GoToIfEq 0x4000, 0, _0035
    SetVar 0x4106, 1
    Call _007B
    End

_0073:
    SetVar 0x4106, 0
    Return

_007B:
    ScrCmd_186 0, 8, 6
    ScrCmd_189 0, 1
    ScrCmd_188 0, 0
    ScrCmd_186 1, 9, 6
    ScrCmd_189 1, 2
    Return

    .byte 30
    .byte 0
    .byte 91
    .byte 2
    .byte 27
    .byte 0

_00A5:
    SetVar 0x8008, 0x4106
    GoToIfEq 0x8008, 1, _00E5
    GoToIfEq 0x8008, 2, _00E5
    GoToIfEq 0x8008, 3, _00F8
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 8
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00E5:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 9
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00F8:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 10
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_010B:
    GoToIfEq 0x4106, 1, _0158
    GoToIfEq 0x4106, 2, _0158
    GoToIfEq 0x4106, 3, _0145
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 0
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0145:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 4
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0158:
    GoToIfUnset 0x133, _01EA
    GoToIfUnset 0x11F, _01D9
    ScrCmd_07E 0x1C5, 1, 0x800C
    GoToIfEq 0x800C, 0, _01D9
    ScrCmd_049 0x5DC
    ScrCmd_060
    SetFlag 0x12C
    SetVar 0x4106, 3
    ScrCmd_07C 0x1C5, 1, 0x800C
    ScrCmd_0CD 0
    ScrCmd_02C 2
    ScrCmd_02C 3
    ScrCmd_04E 0x48E
    ScrCmd_04F
    ScrCmd_034
    ScrCmd_003 15, 0x800C
    Call _01FC
    ScrCmd_02C 5
    Call _0256
    ScrCmd_02C 6
    Call _0262
    ScrCmd_02C 7
    ScrCmd_034
    Call _026E
    ScrCmd_061
    End

_01D9:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_01EA:
    SetFlag 0x133
    SetVar 0x4106, 2
    GoTo _01D9
    End

_01FC:
    ScrCmd_049 0x603
    ScrCmd_04B 0x603
    ClearFlag 0x25B
    ScrCmd_064 2
    ScrCmd_003 5, 0x800C
    ApplyMovement 1, _0294
    ApplyMovement 0, _0294
    ApplyMovement 0xFF, _0294
    WaitMovement
    ApplyMovement 2, _02B4
    WaitMovement
    ApplyMovement 0xFF, _02C0
    WaitMovement
    ApplyMovement 2, _02D4
    WaitMovement
    ApplyMovement 0xFF, _029C
    WaitMovement
    Return

_0256:
    ApplyMovement 2, _02A4
    WaitMovement
    Return

_0262:
    ApplyMovement 2, _02AC
    WaitMovement
    Return

_026E:
    ApplyMovement 0xFF, _0294
    ApplyMovement 2, _02DC
    WaitMovement
    SetFlag 0x25B
    ScrCmd_065 2
    ScrCmd_049 0x603
    ScrCmd_04B 0x603
    Return

    .balign 4, 0
_0294:
    MoveAction_002
    EndMovement

    .balign 4, 0
_029C:
    MoveAction_000
    EndMovement

    .balign 4, 0
_02A4:
    MoveAction_001
    EndMovement

    .balign 4, 0
_02AC:
    MoveAction_003
    EndMovement

    .balign 4, 0
_02B4:
    MoveAction_00C 2
    MoveAction_00F 2
    EndMovement

    .balign 4, 0
_02C0:
    MoveAction_000
    MoveAction_047
    MoveAction_00D
    MoveAction_048
    EndMovement

    .balign 4, 0
_02D4:
    MoveAction_00F
    EndMovement

    .balign 4, 0
_02DC:
    MoveAction_00E 3
    MoveAction_00D 2
    EndMovement
