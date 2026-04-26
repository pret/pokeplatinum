#include "macros/scrcmd.inc"
#include "res/text/bank/stark_mountain_outside.h"
#include "res/field/events/events_stark_mountain_outside.h"


    ScriptEntry StarkMountainOutside_OnTransition
    ScriptEntry StarkMountainOutside_SignStarkMountain
    ScriptEntry StarkMountainOutside_TriggerGrunts
    ScriptEntry StarkMountainOutside_OnFrameLookerBuck
    ScriptEntryEnd

StarkMountainOutside_OnTransition:
    SetFlag FLAG_FIRST_ARRIVAL_STARK_MOUNTAIN_EXTERIOR
    End

StarkMountainOutside_SignStarkMountain:
    ShowLandmarkSign StarkMountainOutside_Text_SignStarkMountain
    End

StarkMountainOutside_TriggerGrunts:
    LockAll
    ApplyMovement LOCALID_GRUNT_M_1, StarkMountainOutside_Movement_GruntM1Enter
    ApplyMovement LOCALID_GRUNT_M_2, StarkMountainOutside_Movement_GruntM2Enter
    WaitMovement
    Message StarkMountainOutside_Text_LetsDoThis
    CloseMessage
    ApplyMovement LOCALID_GRUNT_M_1, StarkMountainOutside_Movement_GruntM1WalkToEntrance
    ApplyMovement LOCALID_GRUNT_M_2, StarkMountainOutside_Movement_GruntM2WalkToEntrance
    WaitMovement
    ApplyMovement LOCALID_GRUNT_M_2, StarkMountainOutside_Movement_GruntM2WalkOnSpotEast
    WaitMovement
    Message StarkMountainOutside_Text_CanHeReplaceCyrus
    CloseMessage
    ApplyMovement LOCALID_GRUNT_M_1, StarkMountainOutside_Movement_GruntM1WalkOnSpotWestNorth
    WaitMovement
    Message StarkMountainOutside_Text_GoodTimeToBeDone
    CloseMessage
    ApplyMovement LOCALID_GRUNT_M_1, StarkMountainOutside_Movement_GruntM1EnterStarkMountain
    ApplyMovement LOCALID_GRUNT_M_2, StarkMountainOutside_Movement_GruntM2EnterStarkMountain
    WaitMovement
    PlaySE SEQ_SE_DP_KAIDAN2
    RemoveObject LOCALID_GRUNT_M_1
    RemoveObject LOCALID_GRUNT_M_2
    WaitSE SEQ_SE_DP_KAIDAN2
    SetVar VAR_STARK_MOUNTAIN_OUTSIDE_STATE, 1
    ReleaseAll
    End

    .balign 4, 0
StarkMountainOutside_Movement_GruntM1Enter:
    WalkNormalEast 4
    EndMovement

    .balign 4, 0
StarkMountainOutside_Movement_GruntM1WalkToEntrance:
    WalkNormalSouth 2
    WalkNormalEast 4
    WalkNormalNorth
    EndMovement

StarkMountainOutside_UnusedMovement:
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
StarkMountainOutside_Movement_GruntM1WalkOnSpotWestNorth:
    WalkOnSpotNormalWest
    Delay8 2
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
StarkMountainOutside_Movement_GruntM1EnterStarkMountain:
    WalkNormalNorth 2
    SetInvisible
    EndMovement

    .balign 4, 0
StarkMountainOutside_Movement_GruntM2Enter:
    WalkNormalNorth
    WalkNormalEast 3
    EndMovement

    .balign 4, 0
StarkMountainOutside_Movement_GruntM2WalkToEntrance:
    WalkNormalEast
    WalkNormalSouth 2
    WalkNormalEast 3
    WalkNormalNorth
    EndMovement

    .balign 4, 0
StarkMountainOutside_Movement_GruntM2WalkOnSpotEast:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
StarkMountainOutside_Movement_GruntM2EnterStarkMountain:
    WalkNormalEast
    WalkNormalNorth 2
    SetInvisible
    EndMovement

StarkMountainOutside_OnFrameLookerBuck:
    LockAll
    Message StarkMountainOutside_Text_InhaledVolcanicAsh
    CloseMessage
    WaitTime 15, VAR_RESULT
    Message StarkMountainOutside_Text_MagmaStone
    ApplyMovement LOCALID_BUCK, StarkMountainOutside_Movement_BuckWalkOnSpotEast
    WaitMovement
    Message StarkMountainOutside_Text_IllPutItBack
    CloseMessage
    ApplyMovement LOCALID_BUCK, StarkMountainOutside_Movement_BuckEnterStarkMountain
    WaitMovement
    ApplyMovement LOCALID_LOOKER, StarkMountainOutside_Movement_LookerWalkOnSpotWestSouth
    WaitMovement
    BufferPlayerName 0
    Message StarkMountainOutside_Text_WorkIsFinished
    CloseMessage
    WaitTime 15, VAR_RESULT
    ApplyMovement LOCALID_BUCK, StarkMountainOutside_Movement_BuckExitStarkMountain
    ApplyMovement LOCALID_LOOKER, StarkMountainOutside_Movement_LookerWalkOnSpotWest
    WaitMovement
    BufferPlayerName 0
    Message StarkMountainOutside_Text_SwingByMyPlace
    CloseMessage
    ApplyMovement LOCALID_BUCK, StarkMountainOutside_Movement_BuckLeave
    ApplyMovement LOCALID_PLAYER, StarkMountainOutside_Movement_PlayerWalkOnSpotWest
    WaitMovement
    RemoveObject LOCALID_BUCK
    ApplyMovement LOCALID_LOOKER, StarkMountainOutside_Movement_LookerWalkOnSpotSouth
    ApplyMovement LOCALID_PLAYER, StarkMountainOutside_Movement_PlayerWalkOnSpotNorth
    WaitMovement
    BufferPlayerName 0
    Message StarkMountainOutside_Text_FarewellMyFriend
    CloseMessage
    FadeScreenOut
    WaitFadeScreen
    RemoveObject LOCALID_LOOKER
    FadeScreenIn
    WaitFadeScreen
    SetVar VAR_STARK_MOUNTAIN_OUTSIDE_STATE, 3
    ReleaseAll
    End

    .balign 4, 0
StarkMountainOutside_Movement_LookerWalkOnSpotWestSouth:
    WalkOnSpotNormalWest
    Delay8 2
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
StarkMountainOutside_Movement_LookerWalkOnSpotWest:
    Delay8
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
StarkMountainOutside_Movement_LookerWalkOnSpotSouth:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
StarkMountainOutside_Movement_BuckWalkOnSpotEast:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
StarkMountainOutside_Movement_BuckEnterStarkMountain:
    WalkNormalNorth 2
    SetInvisible
    EndMovement

    .balign 4, 0
StarkMountainOutside_Movement_BuckExitStarkMountain:
    SetVisible
    WalkNormalSouth
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
StarkMountainOutside_Movement_BuckLeave:
    WalkNormalSouth 2
    WalkNormalWest 5
    WalkNormalNorth 2
    WalkNormalWest 3
    WalkFasterSouth 9
    WalkFasterEast 10
    WalkNormalNorth 6
    WalkNormalEast 8
    EndMovement

    .balign 4, 0
StarkMountainOutside_Movement_PlayerWalkOnSpotWest:
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
StarkMountainOutside_Movement_PlayerWalkOnSpotNorth:
    WalkOnSpotNormalNorth
    EndMovement
