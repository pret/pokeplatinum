#include "macros/scrcmd.inc"

    .data

    ScriptEntry _001A
    ScriptEntry _004D
    ScriptEntry _006A
    ScriptEntry _0087
    ScriptEntry _048A
    ScriptEntry _04C8
    .short 0xFD13

_001A:
    SetFlag 0x9EB
    SetFlag 0x257
    SetFlag 0x258
    GoToIfUnset 0xAB6, _0033
    End

_0033:
    ScrCmd_1B7 0x404C, 5
    AddVar 0x404C, 5
    SetFlag 0xAB6
    ClearTrainerFlag 0x37C
    ClearTrainerFlag 0x37D
    End

_004D:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    WaitABXPadPress
    CloseMessage
    ApplyMovement 0, _04A8
    WaitMovement
    ReleaseAll
    End

_006A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 1
    WaitABXPadPress
    CloseMessage
    ApplyMovement 1, _04B0
    WaitMovement
    ReleaseAll
    End

_0087:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfDefeated 0x37C, _0396
    GoToIfDefeated 0x37D, _0396
    ScrCmd_1BD 0x800C
    GoToIfEq 0x800C, 0, _00CB
    GoToIfEq 0x800C, 1, _00E5
    GoTo _00FF
    End

_00CB:
    ApplyMovement 2, _03EC
    ApplyMovement 0xFF, _042C
    WaitMovement
    GoTo _00FF
    End

_00E5:
    ApplyMovement 2, _03F4
    ApplyMovement 0xFF, _043C
    WaitMovement
    GoTo _00FF
    End

_00FF:
    CallIfUnset 0x166, _045A
    CallIfSet 0x166, _0467
    SetFlag 0x166
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _0471
    SetTrainerFlag 0x37C
    SetTrainerFlag 0x37D
    Message 5
    CloseMessage
    ApplyMovement 2, _03FC
    WaitMovement
    SetVar 0x404D, 0
    SetVar 0x8005, 0
    ClearFlag 0x257
    ScrCmd_064 5
    ApplyMovement 5, _0420
    WaitMovement
    Message 15
    CloseMessage
    ScrCmd_0E5 0x381, 0
    ScrCmd_0EC 0x800C
    GoToIfEq 0x800C, 0, _0484
    AddVar 0x8005, 0x404D
    Message 16
    CloseMessage
    ApplyMovement 5, _0414
    WaitMovement
    ApplyMovement 5, _0420
    WaitMovement
    Message 17
    CloseMessage
    ScrCmd_0E5 0x382, 0
    ScrCmd_0EC 0x800C
    GoToIfEq 0x800C, 0, _0484
    AddVar 0x8005, 0x404D
    Message 18
    CloseMessage
    ApplyMovement 5, _0414
    WaitMovement
    ApplyMovement 5, _0420
    WaitMovement
    Message 19
    CloseMessage
    ScrCmd_0E5 0x383, 0
    ScrCmd_0EC 0x800C
    GoToIfEq 0x800C, 0, _0484
    AddVar 0x8005, 0x404D
    Message 20
    CloseMessage
    ApplyMovement 5, _0414
    WaitMovement
    ApplyMovement 5, _0420
    WaitMovement
    Message 21
    CloseMessage
    ScrCmd_0E5 0x384, 0
    ScrCmd_0EC 0x800C
    GoToIfEq 0x800C, 0, _0484
    AddVar 0x8005, 0x404D
    Message 22
    CloseMessage
    ApplyMovement 5, _0414
    WaitMovement
    ApplyMovement 2, _0408
    WaitMovement
    BufferNumber 0, 0x404C
    BufferNumber 1, 0x8005
    Message 6
    CloseMessage
    ApplyMovement 2, _03FC
    WaitMovement
    ApplyMovement 5, _0420
    WaitMovement
    Message 23
    CloseMessage
    ScrCmd_0E5 0x385, 0
    ScrCmd_0EC 0x800C
    GoToIfEq 0x800C, 0, _0484
    AddVar 0x8005, 0x404D
    Message 24
    CloseMessage
    ApplyMovement 5, _0414
    WaitMovement
    ScrCmd_065 5
    ApplyMovement 2, _0408
    WaitMovement
    BufferNumber 0, 0x404C
    BufferNumber 1, 0x8005
    Message 7
    GoToIfNe 0x8005, 0x404C, _044C
    ScrCmd_1B7 0x8006, 2
    CallIfEq 0x8006, 0, _03A1
    CallIfEq 0x8006, 1, _03B7
    CloseMessage
    ApplyMovement 2, _03FC
    WaitMovement
    ClearFlag 0x258
    ScrCmd_064 4
    ApplyMovement 4, _0420
    WaitMovement
    CallIfEq 0x8006, 0, _03CD
    CallIfEq 0x8006, 1, _03D2
    CloseMessage
    ScrCmd_0E5 0x8007, 0
    ScrCmd_0EC 0x800C
    GoToIfEq 0x800C, 0, _0484
    SetTrainerFlag 0x37C
    SetTrainerFlag 0x37D
    CallIfEq 0x8006, 0, _03D7
    CallIfEq 0x8006, 1, _03DC
    CloseMessage
    ApplyMovement 4, _0414
    WaitMovement
    ScrCmd_065 4
    ApplyMovement 2, _0408
    WaitMovement
    CallIfEq 0x8006, 0, _03E1
    CallIfEq 0x8006, 1, _03E6
    GoTo _0396
    End

_0396:
    Message 13
    GoTo _047C
    End

_03A1:
    SetVar 0x8007, 0x37C
    SetVar 0x4020, 62
    ScrCmd_2F3 2, 0x8007
    Message 8
    Return

_03B7:
    SetVar 0x8007, 0x37D
    SetVar 0x4020, 63
    ScrCmd_2F3 2, 0x8007
    Message 9
    Return

_03CD:
    Message 25
    Return

_03D2:
    Message 27
    Return

_03D7:
    Message 26
    Return

_03DC:
    Message 28
    Return

_03E1:
    Message 10
    Return

_03E6:
    Message 11
    Return

    .balign 4, 0
_03EC:
    MoveAction_023
    EndMovement

    .balign 4, 0
_03F4:
    MoveAction_023
    EndMovement

    .balign 4, 0
_03FC:
    MoveAction_00C
    MoveAction_021
    EndMovement

    .balign 4, 0
_0408:
    MoveAction_00D
    MoveAction_023
    EndMovement

    .balign 4, 0
_0414:
    MoveAction_022
    MoveAction_045
    EndMovement

    .balign 4, 0
_0420:
    MoveAction_046
    MoveAction_023
    EndMovement

    .balign 4, 0
_042C:
    MoveAction_00F
    MoveAction_00C
    MoveAction_022
    EndMovement

    .balign 4, 0
_043C:
    MoveAction_00F
    MoveAction_00D
    MoveAction_022
    EndMovement

_044C:
    Message 12
    Message 13
    GoTo _047C
    End

_045A:
    Message 2
    BufferNumber 0, 0x404C
    Message 3
    Return

_0467:
    BufferNumber 0, 0x404C
    Message 3
    Return

_0471:
    Message 4
    GoTo _047C
    End

_047C:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0484:
    ScrCmd_0EB
    ReleaseAll
    End

_048A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 14
    WaitABXPadPress
    CloseMessage
    ApplyMovement 3, _04C0
    WaitMovement
    ReleaseAll
    End

    .balign 4, 0
_04A8:
    MoveAction_001
    EndMovement

    .balign 4, 0
_04B0:
    MoveAction_001
    EndMovement

    .byte 3
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_04C0:
    MoveAction_002
    EndMovement

_04C8:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 29
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
