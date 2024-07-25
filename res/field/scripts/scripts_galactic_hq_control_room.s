#include "macros/scrcmd.inc"

    .data

    ScriptEntry _003E
    ScriptEntry _0055
    ScriptEntry _0059
    ScriptEntry _014C
    ScriptEntry _0173
    ScriptEntry _019A
    ScriptEntry _01C1
    ScriptEntry _01C3
    ScriptEntry _01C5
    ScriptEntry _01C7
    ScriptEntry _03C4
    ScriptEntry _03D7
    ScriptEntry _03EA
    ScriptEntry _0394
    ScriptEntry _03FD
    .short 0xFD13

_003E:
    GoToIfSet 0x97D, _004B
    End

_004B:
    ScrCmd_186 0, 9, 6
    End

_0055:
    ScrCmd_25E
    End

_0059:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet 0x97D, _0109
    GoToIfSet 173, _0114
    Message 0
    CloseMessage
    ScrCmd_0E5 0x199, 0
    ScrCmd_0EC 0x800C
    GoToIfEq 0x800C, 0, _011F
    SetFlag 173
    SetVar 0x410D, 1
    Message 1
    CloseMessage
    ScrCmd_1BD 0x8004
    SetVar 0x4002, 0x8004
    GoToIfEq 0x8004, 0, _00D5
    GoToIfEq 0x8004, 2, _00E5
    GoToIfEq 0x8004, 3, _00F5
    End

_00D5:
    ApplyMovement 0, _0128
    WaitMovement
    GoTo _0105

_00E5:
    ApplyMovement 0, _0134
    WaitMovement
    GoTo _0105

_00F5:
    ApplyMovement 0, _0140
    WaitMovement
    GoTo _0105

_0105:
    ReleaseAll
    End

_0109:
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0114:
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_011F:
    ScrCmd_0EB
    ReleaseAll
    End

    .balign 4, 0
_0128:
    MoveAction_00F
    MoveAction_021
    EndMovement

    .balign 4, 0
_0134:
    MoveAction_00D
    MoveAction_020
    EndMovement

    .balign 4, 0
_0140:
    MoveAction_00F
    MoveAction_022
    EndMovement

_014C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    GoToIfSet 0x97D, _0168
    Message 13
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0168:
    Message 16
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0173:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    GoToIfSet 0x97D, _018F
    Message 14
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_018F:
    Message 17
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_019A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    GoToIfSet 0x97D, _01B6
    Message 15
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01B6:
    Message 18
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01C1:
    End

_01C3:
    End

_01C5:
    End

_01C7:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    GoToIfSet 0x97D, _0347
    Message 10
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _01FB
    GoToIfEq 0x800C, 1, _0341
    End

_01FB:
    SetVar 0x410D, 0
    PlayFanfare SEQ_SE_DP_BUTTON3
    BufferPlayerName 0
    Message 11
    CloseMessage
    ClearFlag 0x295
    SetFlag 0x97D
    ScrCmd_25F
    WaitTime 30, 0x800C
    ApplyMovement 2, _036C
    ApplyMovement 1, _0374
    ApplyMovement 3, _037C
    WaitMovement
    ScrCmd_186 2, 2, 6
    ScrCmd_186 1, 14, 6
    ScrCmd_186 3, 8, 12
    Call _0296
    Call _0296
    Call _0296
    ScrCmd_065 2
    ScrCmd_065 1
    ScrCmd_065 3
    GoToIfEq 0x4002, 0, _02C0
    GoToIfEq 0x4002, 2, _02DA
    GoToIfEq 0x4002, 3, _02F4
    End

_0296:
    ScrCmd_065 2
    ScrCmd_065 1
    ScrCmd_065 3
    WaitTime 2, 0x800C
    ClearFlag 0x236
    ScrCmd_064 2
    ScrCmd_064 1
    ScrCmd_064 3
    WaitTime 2, 0x800C
    Return

_02C0:
    ApplyMovement 0, _0354
    ApplyMovement 0xFF, _0384
    WaitMovement
    GoTo _030E
    End

_02DA:
    ApplyMovement 0, _0360
    ApplyMovement 0xFF, _038C
    WaitMovement
    GoTo _030E
    End

_02F4:
    ApplyMovement 0, _0354
    ApplyMovement 0xFF, _0384
    WaitMovement
    GoTo _030E
    End

_030E:
    Message 3
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_065 0
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    SetFlag 0x235
    ClearFlag 0x182
    SetVar 0x40A9, 1
    ReleaseAll
    End

_0341:
    CloseMessage
    ReleaseAll
    End

_0347:
    Message 12
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
_0354:
    MoveAction_03F
    MoveAction_022
    EndMovement

    .balign 4, 0
_0360:
    MoveAction_03F
    MoveAction_020
    EndMovement

    .balign 4, 0
_036C:
    MoveAction_00D 2
    EndMovement

    .balign 4, 0
_0374:
    MoveAction_00D 2
    EndMovement

    .balign 4, 0
_037C:
    MoveAction_00D 2
    EndMovement

    .balign 4, 0
_0384:
    MoveAction_023
    EndMovement

    .balign 4, 0
_038C:
    MoveAction_021
    EndMovement

_0394:
    LockAll
    ApplyMovement 0, _03BC
    WaitMovement
    Message 4
    CloseMessage
    ApplyMovement 0xFF, _03B4
    WaitMovement
    ReleaseAll
    End

    .balign 4, 0
_03B4:
    MoveAction_00C
    EndMovement

    .balign 4, 0
_03BC:
    MoveAction_021
    EndMovement

_03C4:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 13
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_03D7:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 14
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_03EA:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 15
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_03FD:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    GoToIfSet 173, _0450
    ApplyMovement 4, _0470
    WaitMovement
    Message 5
    CloseMessage
    ApplyMovement 0, _0460
    WaitMovement
    WaitTime 20, 0x800C
    Message 6
    Message 7
    CloseMessage
    WaitTime 20, 0x800C
    ApplyMovement 0, _0468
    WaitMovement
    Message 8
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0450:
    FacePlayer
    Message 9
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
_0460:
    MoveAction_022
    EndMovement

    .balign 4, 0
_0468:
    MoveAction_020
    EndMovement

    .balign 4, 0
_0470:
    MoveAction_020
    EndMovement
