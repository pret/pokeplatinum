#include "macros/scrcmd.inc"
#include "res/text/bank/stark_mountain_room_1.h"

    .data

    ScriptEntry _000A
    ScriptEntry _0014
    ScriptEntryEnd

_000A:
    SetFlag FLAG_UNK_0x09D2
    SetFlag FLAG_UNK_0x028E
    End

_0014:
    LockAll
    ApplyMovement 0, _0158
    WaitMovement
    Message 0
    CloseMessage
    ApplyMovement 0, _0160
    WaitMovement
    StartTrainerBattle TRAINER_COMMANDER_MARS_STARK_MOUNTAIN
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, _0150
    Message 1
    CloseMessage
    ApplyMovement 0, _0168
    WaitMovement
    ApplyMovement 4, _01BC
    WaitMovement
    Message 2
    CloseMessage
    ApplyMovement 4, _01CC
    WaitMovement
    StartTrainerBattle TRAINER_COMMANDER_JUPITER_STARK_MOUNTAIN
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, _0150
    Message 3
    CloseMessage
    WaitTime 15, VAR_RESULT
    ApplyMovement 0, _0174
    ApplyMovement 4, _01F4
    WaitMovement
    Message 4
    ApplyMovement 4, _01D4
    WaitMovement
    Message 5
    CloseMessage
    ApplyMovement 0, _017C
    WaitMovement
    Message 6
    CloseMessage
    ApplyMovement 0, _0190
    ApplyMovement LOCALID_PLAYER, _01A4
    WaitMovement
    PlayFanfare SEQ_SE_DP_KAIDAN2
    WaitFanfare SEQ_SE_DP_KAIDAN2
    ApplyMovement 4, _01DC
    WaitMovement
    Message 7
    CloseMessage
    ApplyMovement 4, _01E4
    WaitMovement
    PlayFanfare SEQ_SE_DP_KAIDAN2
    WaitFanfare SEQ_SE_DP_KAIDAN2
    ApplyMovement 14, _0200
    ApplyMovement LOCALID_PLAYER, _01B4
    WaitMovement
    Message 8
    Message 9
    CloseMessage
    ApplyMovement 14, _0208
    ApplyMovement 15, _0210
    ApplyMovement 16, _021C
    WaitMovement
    RemoveObject 14
    RemoveObject 0
    RemoveObject 4
    RemoveObject 15
    RemoveObject 16
    SetVar VAR_UNK_0x40AD, 1
    ReleaseAll
    End

_0150:
    BlackOutFromBattle
    ReleaseAll
    End

    .balign 4, 0
_0158:
    MoveAction_WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_0160:
    MoveAction_WalkNormalSouth
    EndMovement

    .balign 4, 0
_0168:
    MoveAction_WalkNormalNorth
    MoveAction_WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_0174:
    MoveAction_ExclamationPoint
    EndMovement

    .balign 4, 0
_017C:
    MoveAction_WalkOnSpotNormalNorth
    MoveAction_Delay8 2
    MoveAction_WalkOnSpotNormalSouth
    MoveAction_Delay8 2
    EndMovement

    .balign 4, 0
_0190:
    MoveAction_WalkNormalSouth 2
    MoveAction_Delay8
    MoveAction_WalkNormalSouth
    MoveAction_SetInvisible
    EndMovement

    .balign 4, 0
_01A4:
    MoveAction_Delay8 2
    MoveAction_WalkNormalWest
    MoveAction_WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_01B4:
    MoveAction_WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_01BC:
    MoveAction_WalkOnSpotNormalWest
    MoveAction_Delay8 2
    MoveAction_WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_01CC:
    MoveAction_WalkNormalSouth
    EndMovement

    .balign 4, 0
_01D4:
    MoveAction_WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_01DC:
    MoveAction_WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_01E4:
    MoveAction_WalkNormalWest
    MoveAction_WalkNormalSouth 2
    MoveAction_SetInvisible
    EndMovement

    .balign 4, 0
_01F4:
    MoveAction_Delay8
    MoveAction_WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_0200:
    MoveAction_WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_0208:
    MoveAction_WalkNormalNorth 7
    EndMovement

    .balign 4, 0
_0210:
    MoveAction_WalkNormalEast
    MoveAction_WalkNormalNorth 7
    EndMovement

    .balign 4, 0
_021C:
    MoveAction_Delay8
    MoveAction_WalkNormalWest
    MoveAction_WalkNormalNorth 7
    EndMovement
