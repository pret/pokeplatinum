#include "macros/scrcmd.inc"
#include "res/text/bank/mt_coronet_1f_south.h"
#include "res/field/events/events_mt_coronet_1f_south.h"


    ScriptEntry MtCoronet1FSouth_TriggerCyrus
    ScriptEntryEnd

MtCoronet1FSouth_TriggerCyrus:
    LockAll
    ApplyMovement LOCALID_PLAYER, MtCoronet1FSouth_Movement_PlayerWatchCyrusWalkToPlayer
    ApplyMovement LOCALID_CYRUS, MtCoronet1FSouth_Movement_CyrusWalkToPlayer
    WaitMovement
    Message MtCoronet1FSouth_Text_AccordingToOneTheoryMtCoronetIsWhereTheSinnohRegionBegan
    CloseMessage
    ApplyMovement LOCALID_CYRUS, MtCoronet1FSouth_Movement_CyrusWalkOnSpotNorth
    ApplyMovement LOCALID_PLAYER, MtCoronet1FSouth_Movement_PlayerWalkOnSpotNorthEast
    WaitMovement
    Message MtCoronet1FSouth_Text_InANewlyCreatedWorld
    ApplyMovement LOCALID_CYRUS, MtCoronet1FSouth_Movement_CyrusWalkOnSpotWest
    WaitMovement
    Message MtCoronet1FSouth_Text_ButWhatBecameOfThatWorld
    CloseMessage
    ApplyMovement LOCALID_PLAYER, MtCoronet1FSouth_Movement_PlayerMoveAsideAndWatchCyrusLeave
    ApplyMovement LOCALID_CYRUS, MtCoronet1FSouth_Movement_CyrusLeave
    WaitMovement
    RemoveObject LOCALID_CYRUS
    SetVar VAR_MT_CORONET_1F_SOUTH_STATE, 1
    ReleaseAll
    End

    .balign 4, 0
MtCoronet1FSouth_Movement_CyrusWalkToPlayer:
    WalkNormalSouth 6
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
MtCoronet1FSouth_Movement_CyrusWalkOnSpotNorth:
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
MtCoronet1FSouth_Movement_CyrusWalkOnSpotWest:
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
MtCoronet1FSouth_Movement_CyrusLeave:
    Delay8 3
    WalkNormalWest 10
    EndMovement

    .balign 4, 0
MtCoronet1FSouth_Movement_PlayerWatchCyrusWalkToPlayer:
    WalkOnSpotNormalNorth
    Delay8 4
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
MtCoronet1FSouth_Movement_PlayerWalkOnSpotNorthEast:
    Delay8 3
    WalkOnSpotNormalNorth
    Delay8
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
MtCoronet1FSouth_Movement_PlayerMoveAsideAndWatchCyrusLeave:
    WalkNormalSouth
    WalkOnSpotNormalNorth
    Delay8 2
    WalkOnSpotNormalWest
    EndMovement
