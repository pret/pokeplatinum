#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0022
    ScriptEntry _0184
    ScriptEntry _01BA
    ScriptEntry _01CD
    ScriptEntry _01E0
    ScriptEntry _01F3
    ScriptEntry _0206
    ScriptEntry _0217
    .short 0xFD13

_0022:
    LockAll
    ClearFlag 0x2BA
    ScrCmd_064 1
    ScrCmd_1B2 1
    ScrCmd_186 0, 32, 34
    ScrCmd_189 0, 0
    ScrCmd_188 0, 14
    ClearFlag 0x1CD
    ScrCmd_064 0
    ScrCmd_066 30, 30
    ApplyMovement 241, _016C
    WaitMovement
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    SetVar 0x40C3, 2
    ApplyMovement 0, _0144
    WaitMovement
    Message 0
    CloseMessage
    ScrCmd_20D 4, 0x800C
    WaitTime 30, 0x800C
_0088:
    ScrCmd_20D 6, 0x800C
    GoToIfEq 0x800C, 0, _0088
    ScrCmd_065 1
    ApplyMovement 241, _0178
    WaitMovement
    ScrCmd_067
    ApplyMovement 0xFF, _013C
    ApplyMovement 0, _014C
    WaitMovement
    Message 4
    CloseMessage
    ApplyMovement 0, _0154
    WaitMovement
    Message 5
    SetFlag 0x29E
    GoTo _00DA
    End

_00DA:
    Message 6
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _00FD
    GoToIfEq 0x800C, 1, _0130
    End

_00FD:
    Message 7
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_320
    ScrCmd_0A1
    ScrCmd_328 1
    Warp MAP_HEADER_DISTORTION_WORLD_1F, 0, 55, 40, 1
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    End

_0130:
    Message 8
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
_013C:
    MoveAction_023
    EndMovement

    .balign 4, 0
_0144:
    MoveAction_00C 4
    EndMovement

    .balign 4, 0
_014C:
    MoveAction_022
    EndMovement

    .balign 4, 0
_0154:
    MoveAction_023
    MoveAction_03F 2
    MoveAction_021
    MoveAction_03F
    MoveAction_020
    EndMovement

    .balign 4, 0
_016C:
    MoveAction_00F
    MoveAction_00C 5
    EndMovement

    .balign 4, 0
_0178:
    MoveAction_00D 5
    MoveAction_00E
    EndMovement

_0184:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 6
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _00FD
    GoToIfEq 0x800C, 1, _01AF
    End

_01AF:
    Message 8
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01BA:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 10
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01CD:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 9
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01E0:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 11
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01F3:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 11
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0206:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 18
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0217:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 19
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End
