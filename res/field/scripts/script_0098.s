    .include "macros/scrcmd.inc"

    .data

    .long _0039-.-4
    .long _0158-.-4
    .long _0196-.-4
    .long _01A0-.-4
    .long _0248-.-4
    .long _001A-.-4
    .short 0xFD13

_001A:
    CheckFlag 142
    GoToIf 1, _0027
    End

_0027:
    SetFlag 0x29C
    ScrCmd_065 2
    ScrCmd_065 1
    ClearFlag 142
    End

_0039:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_1BD 0x800C
    CompareVarToValue 0x800C, 0
    GoToIf 1, _007B
    CompareVarToValue 0x800C, 1
    GoToIf 1, _008B
    CompareVarToValue 0x800C, 2
    GoToIf 1, _009B
    CompareVarToValue 0x800C, 3
    GoToIf 1, _00AB
    End

_007B:
    ApplyMovement 0, _01B8
    WaitMovement
    GoTo _00BB

_008B:
    ApplyMovement 0, _01DC
    WaitMovement
    GoTo _00BB

_009B:
    ApplyMovement 0, _0200
    WaitMovement
    GoTo _00BB

_00AB:
    ApplyMovement 0, _0224
    WaitMovement
    GoTo _00BB

_00BB:
    ScrCmd_15B 4, 0x800C
    CompareVarToValue 0x800C, 1
    GoToIf 1, _01A0
    ScrCmd_1CD 9, 91, 0, 0, 0
    ScrCmd_02C 0
    ScrCmd_034
    SetFlag 142
    ScrCmd_0E5 0x13E, 0
    ClearFlag 142
    ScrCmd_0EC 0x800C
    CompareVarToValue 0x800C, 0
    GoToIf 1, _0248
    ScrCmd_02C 1
    ScrCmd_0CD 0
    ScrCmd_02C 2
    ScrCmd_04E 0x489
    ScrCmd_04F
    ScrCmd_15C 4
    ScrCmd_260 23
    SetTrainerFlag 0x10A
    SetTrainerFlag 0x118
    SetTrainerFlag 0x11C
    SetTrainerFlag 0x145
    SetTrainerFlag 0x14A
    SetTrainerFlag 0x154
    SetTrainerFlag 0x157
    SetTrainerFlag 0x165
    ScrCmd_1CD 10, 91, 0x13E, 0, 0
    SetVar 0x407B, 1
    SetFlag 0x206
    ClearFlag 0x207
    ScrCmd_02C 3
    GoTo _0158

_0158:
    SetVar 0x8004, 0x188
    SetVar 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    CompareVarToValue 0x800C, 0
    GoToIf 1, _0196
    ScrCmd_014 0x7FC
    SetFlag 125
    ScrCmd_0D1 0, 0x8004
    ScrCmd_0D3 1, 0x8004
    ScrCmd_02C 4
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0196:
    ScrCmd_014 0x7E1
    ScrCmd_034
    ScrCmd_061
    End

_01A0:
    CheckFlag 125
    GoToIf 0, _0158
    ScrCmd_02C 5
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .balign 4, 0
_01B8:
    MoveAction_002 4
    MoveAction_000 4
    MoveAction_003 4
    MoveAction_001 4
    MoveAction_002 4
    MoveAction_000 4
    MoveAction_003 4
    MoveAction_001 4
    EndMovement

    .balign 4, 0
_01DC:
    MoveAction_003 4
    MoveAction_001 4
    MoveAction_002 4
    MoveAction_000 4
    MoveAction_003 4
    MoveAction_001 4
    MoveAction_002 4
    MoveAction_000 4
    EndMovement

    .balign 4, 0
_0200:
    MoveAction_000 4
    MoveAction_002 4
    MoveAction_001 4
    MoveAction_003 4
    MoveAction_000 4
    MoveAction_002 4
    MoveAction_001 4
    MoveAction_003 4
    EndMovement

    .balign 4, 0
_0224:
    MoveAction_000 4
    MoveAction_003 4
    MoveAction_001 4
    MoveAction_002 4
    MoveAction_000 4
    MoveAction_003 4
    MoveAction_001 4
    MoveAction_002 4
    EndMovement

_0248:
    ClearFlag 0x29C
    ScrCmd_0EB
    ScrCmd_061
    End

    .byte 0
    .byte 0
