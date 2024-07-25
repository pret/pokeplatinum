#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0016
    ScriptEntry _00FC
    ScriptEntry _011B
    ScriptEntry _013A
    ScriptEntry _0159
    .short 0xFD13

_0016:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoTo _0034

    .byte 94
    .byte 0
    .byte 0
    .byte 0
    .byte 156
    .byte 0
    .byte 0
    .byte 0
    .byte 95
    .byte 0
    .byte 22
    .byte 0
    .byte 16
    .byte 0
    .byte 0
    .byte 0

_0034:
    ApplyMovement 0, _00D8
    WaitMovement
    GoTo _0044

_0044:
    Message 0
    CloseMessage
    ScrCmd_29E 2, 0x8005
    WaitTime 10, 0x800C
    ScrCmd_065 1
_0059:
    WaitTime 1, 0x800C
    GoToIfEq 0x8005, 0, _0059
    FacePlayer
    Message 1
    CloseMessage
    GoTo _0091

    .byte 94
    .byte 0
    .byte 0
    .byte 0
    .byte 51
    .byte 0
    .byte 0
    .byte 0
    .byte 94
    .byte 0
    .byte 0xFF
    .byte 0
    .byte 95
    .byte 0
    .byte 0
    .byte 0
    .byte 95
    .byte 0
    .byte 22
    .byte 0
    .byte 16
    .byte 0
    .byte 0
    .byte 0

_0091:
    ApplyMovement 0, _00C0
    WaitMovement
    GoTo _00A1

_00A1:
    ScrCmd_065 0
    SetFlag 122
    SetFlag 0x17C
    ReleaseAll
    End

    .byte 0
    .byte 0
    .byte 0
    .byte 12
    .byte 0
    .byte 1
    .byte 0
    .byte 15
    .byte 0
    .byte 10
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_00C0:
    MoveAction_00F 10
    EndMovement

    .byte 63
    .byte 0
    .byte 2
    .byte 0
    .byte 32
    .byte 0
    .byte 1
    .byte 0
    .byte 63
    .byte 0
    .byte 4
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_00D8:
    MoveAction_03F 2
    MoveAction_023
    MoveAction_03F 4
    EndMovement

    .byte 63
    .byte 0
    .byte 1
    .byte 0
    .byte 32
    .byte 0
    .byte 1
    .byte 0
    .byte 63
    .byte 0
    .byte 2
    .byte 0
    .byte 35
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

_00FC:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    WaitFanfare SEQ_SE_CONFIRM
    ScrCmd_04C 66, 0
    Message 2
    ScrCmd_04D
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_011B:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    WaitFanfare SEQ_SE_CONFIRM
    ScrCmd_04C 66, 0
    Message 3
    ScrCmd_04D
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_013A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    WaitFanfare SEQ_SE_CONFIRM
    ScrCmd_04C 66, 0
    Message 4
    ScrCmd_04D
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0159:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End
