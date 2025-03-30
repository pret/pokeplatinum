#include "macros/scrcmd.inc"
#include "res/text/bank/spear_pillar_distorted.h"

    .data

    ScriptEntry _0022
    ScriptEntry _0184
    ScriptEntry _01BA
    ScriptEntry _01CD
    ScriptEntry _01E0
    ScriptEntry _01F3
    ScriptEntry _0206
    ScriptEntry _0217
    ScriptEntryEnd

_0022:
    LockAll
    ClearFlag FLAG_UNK_0x02BA
    AddObject 1
    ScrCmd_1B2 1
    SetObjectEventPos 0, 32, 34
    ScrCmd_189 0, 0
    ScrCmd_188 0, 14
    ClearFlag FLAG_UNK_0x01CD
    AddObject 0
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
    RemoveObject 1
    ApplyMovement 241, _0178
    WaitMovement
    ScrCmd_067
    ApplyMovement LOCALID_PLAYER, _013C
    ApplyMovement 0, _014C
    WaitMovement
    Message 4
    CloseMessage
    ApplyMovement 0, _0154
    WaitMovement
    Message 5
    SetFlag FLAG_UNK_0x029E
    GoTo _00DA
    End

_00DA:
    Message 6
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_YES, _00FD
    GoToIfEq 0x800C, MENU_NO, _0130
    End

_00FD:
    Message 7
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_320
    ReturnToField
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
    MoveAction_035
    EndMovement

    .balign 4, 0
_0144:
    MoveAction_012 4
    EndMovement

    .balign 4, 0
_014C:
    MoveAction_034
    EndMovement

    .balign 4, 0
_0154:
    MoveAction_035
    MoveAction_063 2
    MoveAction_033
    MoveAction_063
    MoveAction_032
    EndMovement

    .balign 4, 0
_016C:
    MoveAction_015
    MoveAction_012 5
    EndMovement

    .balign 4, 0
_0178:
    MoveAction_013 5
    MoveAction_014
    EndMovement

_0184:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 6
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_YES, _00FD
    GoToIfEq 0x800C, MENU_NO, _01AF
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
