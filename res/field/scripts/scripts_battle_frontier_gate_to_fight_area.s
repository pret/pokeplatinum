#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0038
    ScriptEntry _007C
    ScriptEntry _0154
    ScriptEntry _019D
    ScriptEntry _01E6
    ScriptEntry _022F
    ScriptEntry _0278
    ScriptEntry _0358
    ScriptEntry _036B
    ScriptEntry _037E
    ScriptEntry _0391
    ScriptEntry _0032
    .short 0xFD13

_0032:
    SetFlag 0x9E5
    End

_0038:
    LockAll
    SetVar 0x4113, 1
    SetFlag 0x290
    SetFlag 0x291
    Call _02C1
    Message 0
    CloseMessage
    Call _02F5
    Message 1
    BufferPlayerName 0
    PlaySound SEQ_FANFA4
    Message 2
    WaitSound
    Message 3
    Call _0095
    Message 10
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_007C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 4
    Call _0095
    GoTo _0103
    End

_0095:
    ScrCmd_041 31, 5, 0, 1, 0x800C
    ScrCmd_33A 1
    ScrCmd_042 11, 0
    ScrCmd_042 16, 1
    ScrCmd_042 12, 2
    ScrCmd_042 13, 3
    ScrCmd_042 14, 4
    ScrCmd_042 15, 5
    ScrCmd_043
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, 0, _010E
    GoToIfEq 0x8008, 1, _0146
    GoToIfEq 0x8008, 2, _011C
    GoToIfEq 0x8008, 3, _012A
    GoToIfEq 0x8008, 4, _0138
    Return

_0103:
    Message 10
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_010E:
    Message 5
    Message 4
    GoTo _0095
    End

_011C:
    Message 7
    Message 4
    GoTo _0095
    End

_012A:
    Message 8
    Message 4
    GoTo _0095
    End

_0138:
    Message 9
    Message 4
    GoTo _0095
    End

_0146:
    Message 6
    Message 4
    GoTo _0095
    End

_0154:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 17
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _017F
    GoToIfEq 0x800C, 1, _018A
    End

_017F:
    Message 18
    GoTo _018A
    End

_018A:
    Message 19
    GoTo _0195
    End

_0195:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_019D:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 20
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _01C8
    GoToIfEq 0x800C, 1, _01D3
    End

_01C8:
    Message 21
    GoTo _01D3
    End

_01D3:
    Message 22
    GoTo _01DE
    End

_01DE:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01E6:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 23
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _0211
    GoToIfEq 0x800C, 1, _021C
    End

_0211:
    Message 24
    GoTo _021C
    End

_021C:
    Message 25
    GoTo _0227
    End

_0227:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_022F:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 26
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _025A
    GoToIfEq 0x800C, 1, _0265
    End

_025A:
    Message 27
    GoTo _0265
    End

_0265:
    Message 28
    GoTo _0270
    End

_0270:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0278:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 29
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _02A3
    GoToIfEq 0x800C, 1, _02AE
    End

_02A3:
    Message 30
    GoTo _02AE
    End

_02AE:
    Message 31
    GoTo _02B9
    End

_02B9:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_02C1:
    ApplyMovement 3, _0334
    ApplyMovement 4, _0334
    ApplyMovement 5, _0334
    ApplyMovement 6, _0334
    ApplyMovement 7, _0334
    ApplyMovement 8, _0334
    WaitMovement
    Return

_02F5:
    ApplyMovement 3, _033C
    ApplyMovement 4, _033C
    ApplyMovement 5, _033C
    ApplyMovement 6, _0344
    ApplyMovement 7, _0344
    ApplyMovement 8, _0344
    ApplyMovement 0xFF, _034C
    WaitMovement
    Return

    .balign 4, 0
_0334:
    MoveAction_001
    EndMovement

    .balign 4, 0
_033C:
    MoveAction_003
    EndMovement

    .balign 4, 0
_0344:
    MoveAction_002
    EndMovement

    .balign 4, 0
_034C:
    MoveAction_00C 3
    MoveAction_022
    EndMovement

_0358:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 32
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_036B:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 33
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_037E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 34
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0391:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 35
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End
