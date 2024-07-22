#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0022
    ScriptEntry _0026
    ScriptEntry _0041
    ScriptEntry _009E
    ScriptEntry _00C4
    ScriptEntry _020A
    ScriptEntry _021D
    ScriptEntry _0232
    .short 0xFD13

_0022:
    ScrCmd_2F2
    End

_0026:
    GoToIfSet 142, _0033
    End

_0033:
    ScrCmd_31F
    SetVar 0x4055, 14
    ScrCmd_065 128
    End

_0041:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 13
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _0061
    CloseMessage
    ReleaseAll
    End

_0061:
    BufferPlayerName 0
    Message 14
    CloseMessage
    ScrCmd_270 2, 1
    SetVar 0x40AA, 1
    PlayFanfare SEQ_SE_PL_SYUWA
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    Warp MAP_HEADER_SENDOFF_SPRING, 0, 32, 17, 1
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    End

_009E:
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    Warp MAP_HEADER_DISTORTION_WORLD_B7F, 0, 89, 57, 1
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    End

_00C4:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    ScrCmd_04C 0x1E7, 0
    Message 2
    ScrCmd_04D
    CloseMessage
    SetFlag 142
    ScrCmd_319 0x1E7, 47
    ClearFlag 142
    ScrCmd_0EC 0x800C
    ScrCmd_314 0x800C
    GoToIfEq 0x800C, 2, _0204
    GoToIfEq 0x800C, 3, _0204
    GoToIfEq 0x800C, 5, _014E
    GoToIfEq 0x800C, 6, _014E
    GoToIfEq 0x800C, 4, _016E
    ScrCmd_311 130
    ScrCmd_311 129
    ApplyMovement 129, _0250
    WaitMovement
    Message 3
    CloseMessage
    Message 4
    GoTo _0194

_014E:
    ScrCmd_311 130
    ScrCmd_311 129
    ApplyMovement 129, _0250
    WaitMovement
    Message 3
    CloseMessage
    Message 6
    GoTo _0194

_016E:
    SetFlag 0x121
    SetFlag 0x250
    ClearFlag 0x278
    ScrCmd_311 130
    ScrCmd_311 129
    ApplyMovement 129, _0250
    WaitMovement
    Message 3
    CloseMessage
    Message 5
_0194:
    CloseMessage
    GetPlayerMapPos 0x8004, 0x8005
    ScrCmd_066 0x8004, 0x8005
    ApplyMovement 241, _0280
    ApplyMovement 130, _026C
    ApplyMovement 129, _0258
    ApplyMovement 0xFF, _0244
    WaitMovement
    Message 7
    Message 8
    Message 9
    Message 10
    CloseMessage
    ApplyMovement 130, _0274
    WaitMovement
    ScrCmd_312 130
    ApplyMovement 241, _0288
    WaitMovement
    ScrCmd_067
    Message 11
    ApplyMovement 129, _0264
    WaitMovement
    Message 12
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0204:
    ScrCmd_0EB
    ReleaseAll
    End

_020A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 12
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_021D:
    LockAll
    ScrCmd_04C 0x1E7, 0
    Message 0
    ScrCmd_04D
    WaitABPadPress
    CloseMessage
    ReleaseAll
    End

_0232:
    LockAll
    BufferPlayerName 0
    Message 1
    WaitABPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
_0244:
    MoveAction_021
    MoveAction_04B
    EndMovement

    .balign 4, 0
_0250:
    MoveAction_075 2
    EndMovement

    .balign 4, 0
_0258:
    MoveAction_021
    MoveAction_04B
    EndMovement

    .balign 4, 0
_0264:
    MoveAction_020
    EndMovement

    .balign 4, 0
_026C:
    MoveAction_075
    EndMovement

    .balign 4, 0
_0274:
    MoveAction_076
    MoveAction_00D 5
    EndMovement

    .balign 4, 0
_0280:
    MoveAction_00D 5
    EndMovement

    .balign 4, 0
_0288:
    MoveAction_00C 5
    EndMovement
