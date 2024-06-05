    .include "macros/scrcmd.inc"

    .data

    .long _000A-.-4
    .long _000E-.-4
    .short 0xFD13

_000A:
    ScrCmd_25B
    End

_000E:
    ApplyMovement 0xFF, _012C
    WaitMovement
    ScrCmd_0EA 0x10B
    CheckFlag 0x964
    CallIf 0, _00EB
    CheckFlag 0x964
    CallIf 1, _00F0
    ScrCmd_034
    SetFlag 0x98B
    CheckFlag 214
    CallIf 0, _00F5
    CheckFlag 214
    CallIf 1, _00FD
    ScrCmd_0EC 0x800C
    GoToIfEq 0x800C, 0, _0121
    ScrCmd_02C 1
    SetFlag 180
    CheckFlag 214
    CallIf 0, _0105
    CheckFlag 214
    CallIf 1, _0113
    ScrCmd_02C 2
    ScrCmd_034
    ApplyMovement 0, _0144
    WaitMovement
    ApplyMovement 0xFF, _0134
    WaitMovement
    ApplyMovement 0, _0150
    WaitMovement
    ScrCmd_003 30, 0x800C
    ScrCmd_25C
    ScrCmd_003 30, 0x800C
    SetFlag 0x23A
    SetFlag 0x23B
    ApplyMovement 0xFF, _013C
    WaitMovement
    ScrCmd_049 0x603
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_0BE 186, 0, 5, 23, 0
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_061
    End

_00EB:
    ScrCmd_02C 0
    Return

_00F0:
    ScrCmd_02C 3
    Return

_00F5:
    ScrCmd_0E5 0x10B, 0
    Return

_00FD:
    ScrCmd_0E5 0x366, 0
    Return

_0105:
    ScrCmd_1CD 12, 0x10B, 0, 0, 0
    Return

_0113:
    ScrCmd_1CD 12, 0x366, 0, 0, 0
    Return

_0121:
    ClearFlag 0x98B
    ScrCmd_0EB
    ScrCmd_061
    End

    .balign 4, 0
_012C:
    MoveAction_00C 4
    EndMovement

    .balign 4, 0
_0134:
    MoveAction_00C 6
    EndMovement

    .balign 4, 0
_013C:
    MoveAction_00C 6
    EndMovement

    .balign 4, 0
_0144:
    MoveAction_00E
    MoveAction_021
    EndMovement

    .balign 4, 0
_0150:
    MoveAction_020
    EndMovement
