#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0016
    ScriptEntry _001A
    ScriptEntry _0070
    ScriptEntry _011D
    ScriptEntry _012A
    .short 0xFD13

_0016:
    ScrCmd_2F2
    End

_001A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 7
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _003A
    CloseMessage
    ReleaseAll
    End

_003A:
    BufferPlayerName 0
    Message 8
    CloseMessage
    PlayFanfare SEQ_SE_PL_SYUWA
    ScrCmd_328 0
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    Warp MAP_HEADER_SPEAR_PILLAR_DISTORTED, 0, 31, 33, 1
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    End

_0070:
    LockAll
    ApplyMovement 0xFF, _0140
    WaitMovement
    ApplyMovement 0xFF, _014C
    WaitMovement
    ScrCmd_311 128
    ApplyMovement 128, _017C
    WaitMovement
    Message 0
    ScrCmd_035
    ApplyMovement 128, _0198
    WaitMovement
    Message 1
    ScrCmd_035
    ApplyMovement 128, _01A4
    WaitMovement
    Message 2
    CloseMessage
    ApplyMovement 0xFF, _0154
    ApplyMovement 128, _01AC
    WaitMovement
    ScrCmd_321 0
    ApplyMovement 0xFF, _0160
    ApplyMovement 128, _01B4
    WaitMovement
    WaitTime 30, 0x800C
    ScrCmd_322
    Message 3
    WaitABXPadPress
    CloseMessage
    ApplyMovement 0xFF, _0174
    ApplyMovement 128, _01C4
    WaitMovement
    Message 4
    CloseMessage
    ApplyMovement 128, _01CC
    WaitMovement
    ScrCmd_312 128
    SetVar 0x4055, 1
    ReleaseAll
    End

_011D:
    LockAll
    Message 5
    WaitABPadPress
    CloseMessage
    ReleaseAll
    End

_012A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 6
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
_0140:
    MoveAction_00E
    MoveAction_03F
    EndMovement

    .balign 4, 0
_014C:
    MoveAction_023
    EndMovement

    .balign 4, 0
_0154:
    MoveAction_03F
    MoveAction_021
    EndMovement

    .balign 4, 0
_0160:
    MoveAction_03E
    MoveAction_002
    MoveAction_04B
    MoveAction_003
    EndMovement

    .balign 4, 0
_0174:
    MoveAction_021
    EndMovement

    .balign 4, 0
_017C:
    MoveAction_021
    MoveAction_041 2
    MoveAction_023
    MoveAction_03F
    MoveAction_020
    MoveAction_03F
    EndMovement

    .balign 4, 0
_0198:
    MoveAction_021
    MoveAction_03F
    EndMovement

    .balign 4, 0
_01A4:
    MoveAction_022
    EndMovement

    .balign 4, 0
_01AC:
    MoveAction_00D 2
    EndMovement

    .balign 4, 0
_01B4:
    MoveAction_002
    MoveAction_04B
    MoveAction_003
    EndMovement

    .balign 4, 0
_01C4:
    MoveAction_020
    EndMovement

    .balign 4, 0
_01CC:
    MoveAction_00E 3
    MoveAction_00D 3
    MoveAction_00E 2
    MoveAction_00D
    MoveAction_00E 6
    EndMovement
