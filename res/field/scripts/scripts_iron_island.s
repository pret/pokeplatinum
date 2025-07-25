#include "macros/scrcmd.inc"
#include "res/text/bank/iron_island.h"


    ScriptEntry _000E
    ScriptEntry _0014
    ScriptEntry _00FC
    ScriptEntryEnd

_000E:
    SetFlag FLAG_UNK_0x09DA
    End

_0014:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GetPlayerDir VAR_0x8004
    FacePlayer
    Message 3
    ShowYesNoMenu VAR_RESULT
    CloseMessage
    GoToIfEq VAR_RESULT, MENU_YES, _003E
    GoTo _0071

_003E:
    Message 4
    CloseMessage
    Call _007C
    CallIfEq VAR_0x8004, 1, _0096
    CallIfEq VAR_0x8004, 2, _00B0
    ScrCmd_23D 0, 2, 33, 44, 0x2EE
    ReleaseAll
    End

_0071:
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_007C:
    ApplyMovement 0, _00CC
    WaitMovement
    PlayFanfare SEQ_SE_DP_KAIDAN2
    ApplyMovement 0, _00D8
    WaitMovement
    Return

_0096:
    ApplyMovement LOCALID_PLAYER, _00E0
    WaitMovement
    PlayFanfare SEQ_SE_DP_KAIDAN2
    ApplyMovement LOCALID_PLAYER, _00D8
    WaitMovement
    Return

_00B0:
    ApplyMovement LOCALID_PLAYER, _00F0
    WaitMovement
    PlayFanfare SEQ_SE_DP_KAIDAN2
    ApplyMovement LOCALID_PLAYER, _00D8
    WaitMovement
    Return

    .balign 4, 0
_00CC:
    FaceWest
    Delay15
    EndMovement

    .balign 4, 0
_00D8:
    SetInvisible
    EndMovement

    .balign 4, 0
_00E0:
    WalkNormalSouth
    FaceWest
    Delay15
    EndMovement

    .balign 4, 0
_00F0:
    WalkNormalWest
    Delay15
    EndMovement

_00FC:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    BufferPlayerName 0
    Message 0
    SetVar VAR_0x8004, 0x1A7
    SetVar VAR_0x8005, 1
    CallCommonScript 0x7FC
    CheckBadgeAcquired BADGE_ID_MINE, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _0140
    GoTo _0135
    End

_0135:
    Message 1
    GoTo _014B
    End

_0140:
    Message 2
    GoTo _014B
    End

_014B:
    CloseMessage
    ApplyMovement 1, _0168
    WaitMovement
    PlayFanfare SEQ_SE_DP_KAIDAN2
    RemoveObject 1
    WaitFanfare SEQ_SE_DP_KAIDAN2
    ReleaseAll
    End

    .balign 4, 0
_0168:
    WalkOnSpotNormalNorth
    EndMovement
