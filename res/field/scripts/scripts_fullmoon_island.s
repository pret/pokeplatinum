#include "macros/scrcmd.inc"
#include "generated/hidden_locations.h"
#include "res/text/bank/fullmoon_island.h"

    .data

    ScriptEntry _000A
    ScriptEntry _0015
    ScriptEntryEnd

_000A:
    SetFlag FLAG_UNK_0x09D0
    EnableHiddenLocation HIDDEN_LOCATION_FULLMOON_ISLAND
    End

_0015:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GetPlayerDir VAR_0x8004
    CheckItem ITEM_LUNAR_WING, 1, VAR_RESULT
    GoToIfEq VAR_RESULT, 1, _0052
    Message 1
    ShowYesNoMenu VAR_RESULT
    CloseMessage
    GoToIfEq VAR_RESULT, MENU_YES, _005D
    GoTo _0098

_0052:
    Message 0
    CloseMessage
    GoTo _005D

_005D:
    Call _00A3
    CallIfEq VAR_0x8004, 1, _00BD
    CallIfEq VAR_0x8004, 3, _00D7
    CallIfEq VAR_0x8004, 0, _00F1
    ScrCmd_23D 0, 2, 33, 44, 0x2EE
    ReleaseAll
    End

_0098:
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00A3:
    ApplyMovement 0, _010C
    WaitMovement
    PlayFanfare SEQ_SE_DP_KAIDAN2
    ApplyMovement 0, _0118
    WaitMovement
    Return

_00BD:
    ApplyMovement LOCALID_PLAYER, _0120
    WaitMovement
    PlayFanfare SEQ_SE_DP_KAIDAN2
    ApplyMovement LOCALID_PLAYER, _0118
    WaitMovement
    Return

_00D7:
    ApplyMovement LOCALID_PLAYER, _0130
    WaitMovement
    PlayFanfare SEQ_SE_DP_KAIDAN2
    ApplyMovement LOCALID_PLAYER, _0118
    WaitMovement
    Return

_00F1:
    ApplyMovement LOCALID_PLAYER, _013C
    WaitMovement
    PlayFanfare SEQ_SE_DP_KAIDAN2
    ApplyMovement LOCALID_PLAYER, _0118
    WaitMovement
    Return

    .balign 4, 0
_010C:
    MoveAction_WalkNormalEast
    MoveAction_Delay15
    EndMovement

    .balign 4, 0
_0118:
    MoveAction_SetInvisible
    EndMovement

    .balign 4, 0
_0120:
    MoveAction_WalkNormalSouth
    MoveAction_WalkNormalEast 2
    MoveAction_Delay15
    EndMovement

    .balign 4, 0
_0130:
    MoveAction_WalkNormalEast 2
    MoveAction_Delay15
    EndMovement

    .balign 4, 0
_013C:
    MoveAction_WalkNormalNorth
    MoveAction_WalkNormalEast 2
    MoveAction_Delay15
    EndMovement
