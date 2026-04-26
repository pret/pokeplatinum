#include "macros/scrcmd.inc"
#include "res/text/bank/stark_mountain_room_3.h"
#include "res/field/events/events_stark_mountain_room_3.h"


    ScriptEntry StarkMountainRoom3_OnTransition
    ScriptEntry StarkMountainRoom3_OnLoad
    ScriptEntry StarkMountainRoom3_Unused
    ScriptEntry StarkMountainRoom3_Heatran
    ScriptEntry StarkMountainRoom3_OnFrameCharon
    ScriptEntryEnd

StarkMountainRoom3_OnTransition:
    SetVar VAR_MAP_LOCAL_0, VAR_STARK_MOUNTAIN_ROOM_3_STATE
    CallIfGe VAR_STARK_MOUNTAIN_ROOM_3_STATE, 1, StarkMountainRoom3_HideBuck
    Call StarkMountainRoom3_TryHideHeatran
    End

StarkMountainRoom3_HideBuck:
    SetFlag FLAG_HIDE_STARK_MOUNTAIN_ROOM_3_BUCK
    Return

StarkMountainRoom3_TryHideHeatran:
    GoToIfSet FLAG_CAUGHT_HEATRAN, StarkMountainRoom3_HideHeatran
    CheckGameCompleted VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, FALSE, StarkMountainRoom3_HideHeatran
    GetNationalDexEnabled VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, FALSE, StarkMountainRoom3_HideHeatran
    GoToIfUnset FLAG_CAUGHT_MESPRIT, StarkMountainRoom3_HideHeatran
    GoToIfNe VAR_STARK_MOUNTAIN_ROOM_3_STATE, 1, StarkMountainRoom3_HideHeatran
    ClearFlag FLAG_HIDE_STARK_MOUNTAIN_ROOM_3_HEATRAN
    Return

StarkMountainRoom3_HideHeatran:
    SetFlag FLAG_HIDE_STARK_MOUNTAIN_ROOM_3_HEATRAN
    Return

StarkMountainRoom3_OnLoad:
    GoToIfSet FLAG_MAP_LOCAL, StarkMountainRoom3_RemoveHeatran
    End

StarkMountainRoom3_RemoveHeatran:
    SetFlag FLAG_HIDE_STARK_MOUNTAIN_ROOM_3_HEATRAN
    RemoveObject LOCALID_HEATRAN
    ClearFlag FLAG_MAP_LOCAL
    End

StarkMountainRoom3_UnusedMovement:
    WalkNormalWest
    WalkOnSpotNormalEast
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
StarkMountainRoom3_Movement_BuckWalkOnSpotNorth:
    WalkOnSpotNormalNorth
    EndMovement

StarkMountainRoom3_UnusedMovement2:
    WalkOnSpotNormalNorth
    EndMovement

StarkMountainRoom3_UnusedMovement3:
    Delay8
    WalkNormalSouth 9
    EndMovement

StarkMountainRoom3_Unused:
    BufferPlayerName 1
    NPCMessage StarkMountainRoom3_Text_ThatWasWicked
    End

StarkMountainRoom3_Heatran:
    LockAll
    PlaySE SEQ_SE_CONFIRM
    WaitSE SEQ_SE_CONFIRM
    CallIfUnset FLAG_BATTLED_STARK_MOUNTAIN_ROOM_3_HEATRAN, StarkMountainRoom3_SetFlagBattledHeatran
    SetVar VAR_STARK_MOUNTAIN_ROOM_3_STATE, 2
    PlayCry SPECIES_HEATRAN
    Message StarkMountainRoom3_Text_HeatranCry
    CloseMessage
    SetFlag FLAG_MAP_LOCAL
    StartLegendaryBattle SPECIES_HEATRAN, 50
    ClearFlag FLAG_MAP_LOCAL
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, StarkMountainRoom3_LostBattle
    CheckLostBattle VAR_RESULT
    CallIfEq VAR_RESULT, FALSE, StarkMountainRoom3_UnlockVSSeekerLvl5
    CheckDidNotCapture VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, StarkMountainRoom3_HeatranDisappeared
    GoTo StarkMountainRoom3_CaughtHeatran
    End

StarkMountainRoom3_CaughtHeatran:
    SetFlag FLAG_CAUGHT_HEATRAN
    ReleaseAll
    End

StarkMountainRoom3_HeatranDisappeared:
    Message StarkMountainRoom3_Text_HeatranDisappeared
    WaitButton
    CloseMessage
    ReleaseAll
    End

StarkMountainRoom3_LostBattle:
    SetVar VAR_STARK_MOUNTAIN_ROOM_3_STATE, 1
    BlackOutFromBattle
    ReleaseAll
    End

StarkMountainRoom3_SetFlagBattledHeatran:
    SetFlag FLAG_BATTLED_STARK_MOUNTAIN_ROOM_3_HEATRAN
    Return

StarkMountainRoom3_UnlockVSSeekerLvl5:
    SetFlag FLAG_UNLOCKED_VS_SEEKER_LVL_5
    Return

StarkMountainRoom3_UnusedMovement4:
    WalkNormalNorth 6
    EndMovement

StarkMountainRoom3_UnusedMovement5:
    WalkNormalSouth 6
    EndMovement

StarkMountainRoom3_UnusedMovement6:
    Delay8 4
    WalkOnSpotNormalSouth
    EndMovement

StarkMountainRoom3_OnFrameCharon:
    LockAll
    Message StarkMountainRoom3_Text_MagmaStoneWillBeMine
    CloseMessage
    WaitSE SEQ_SE_CONFIRM
    PlaySE SEQ_SE_DP_FW089
    ScrCmd_29F 0
    StopSE SEQ_SE_DP_FW089
    ApplyMovement LOCALID_BUCK, StarkMountainRoom3_Movement_BuckWalkNorth
    ApplyMovement LOCALID_PLAYER, StarkMountainRoom3_Movement_PlayerWalkNorth
    WaitMovement
    ApplyMovement LOCALID_BUCK, StarkMountainRoom3_Movement_BuckWalkOnSpotNorth
    WaitMovement
    Message StarkMountainRoom3_Text_WhatsGoingOnHere
    CloseMessage
    ApplyMovement LOCALID_CHARON, StarkMountainRoom3_Movement_CharonGrabMagmaStone
    WaitMovement
    RemoveObject LOCALID_MAGMA_STONE
    Message StarkMountainRoom3_Text_BossOfRebornGalactic
    Message StarkMountainRoom3_Text_GoGoGo
    PlayCry SPECIES_CROAGUNK
    WaitCry
    CloseMessage
    ClearFlag FLAG_HIDE_STARK_MOUNTAIN_ROOM_3_CROAGUNK
    AddObject LOCALID_CROAGUNK
    ApplyMovement LOCALID_CROAGUNK, StarkMountainRoom3_Movement_CroagunkStealMagmaStone
    WaitMovement
    ApplyMovement LOCALID_CHARON, StarkMountainRoom3_Movement_CharonLookAround
    ApplyMovement LOCALID_GRUNT_M_1, StarkMountainRoom3_Movement_GruntM1WalkOnSpotEast
    ApplyMovement LOCALID_GRUNT_M_2, StarkMountainRoom3_Movement_GruntM2WalkOnSpotEast
    WaitMovement
    Message StarkMountainRoom3_Text_NoTheMagmaStone
    CloseMessage
    WaitTime 15, VAR_RESULT
    Message StarkMountainRoom3_Text_ExcellentWorkCroagunk
    CloseMessage
    RemoveObject LOCALID_CROAGUNK
    RemoveObject LOCALID_ROCK_SMASH_LOOKER
    ClearFlag FLAG_HIDE_STARK_MOUNTAIN_ROOM_3_LOOKER
    AddObject LOCALID_LOOKER
    Common_SetLookerBGM
    Message StarkMountainRoom3_Text_DisguisingWasNotEasy
    CloseMessage
    ApplyMovement LOCALID_LOOKER, StarkMountainRoom3_Movement_LookerWalkToCharon
    ApplyMovement LOCALID_GRUNT_M_1, StarkMountainRoom3_Movement_GruntM1WatchLookerWalkToCharon
    ApplyMovement LOCALID_GRUNT_M_2, StarkMountainRoom3_Movement_GruntM2WatchLookerWalkToCharon
    WaitMovement
    Message StarkMountainRoom3_Text_RequestCooperation
    CloseMessage
    ApplyMovement LOCALID_GRUNT_M_1, StarkMountainRoom3_Movement_GruntM1FaceGruntM2
    WaitMovement
    Message StarkMountainRoom3_Text_ItsThePolice
    ApplyMovement LOCALID_GRUNT_M_2, StarkMountainRoom3_Movement_GruntM2FaceGruntM1
    WaitMovement
    Message StarkMountainRoom3_Text_OneThingToBeDone
    CloseMessage
    WaitTime 15, VAR_RESULT
    ApplyMovement LOCALID_GRUNT_M_1, StarkMountainRoom3_Movement_GruntM1WalkOnSpotFastEast
    ApplyMovement LOCALID_GRUNT_M_2, StarkMountainRoom3_Movement_GruntM2WalkOnSpotFastWest
    WaitMovement
    Message StarkMountainRoom3_Text_RunAway
    CloseMessage
    ApplyMovement LOCALID_GRUNT_M_1, StarkMountainRoom3_Movement_GruntM1Leave
    ApplyMovement LOCALID_GRUNT_M_2, StarkMountainRoom3_Movement_GruntM2Leave
    ApplyMovement LOCALID_PLAYER, StarkMountainRoom3_Movement_PlayerWatchGruntsLeave
    WaitMovement
    ApplyMovement LOCALID_CHARON, StarkMountainRoom3_Movement_CharonWalkOnSpotSouth
    WaitMovement
    Message StarkMountainRoom3_Text_IKnowNothing
    Message StarkMountainRoom3_Text_NoResistingArrest
    CloseMessage
    ClearFlag FLAG_HIDE_STARK_MOUNTAIN_ROOM_3_POLICEMEN
    AddObject LOCALID_POLICEMAN_1
    ApplyMovement LOCALID_POLICEMAN_1, StarkMountainRoom3_Movement_Policeman1Enter
    WaitMovement
    AddObject LOCALID_POLICEMAN_2
    ApplyMovement LOCALID_POLICEMAN_2, StarkMountainRoom3_Movement_Policeman2Enter
    WaitMovement
    Message StarkMountainRoom3_Text_TakeHimSomewhereCool
    CloseMessage
    ApplyMovement LOCALID_CHARON, StarkMountainRoom3_Movement_CharonWalkSouth
    ApplyMovement LOCALID_LOOKER, StarkMountainRoom3_Movement_LookerPushCharonSouth
    WaitMovement
    ApplyMovement LOCALID_CHARON, StarkMountainRoom3_Movement_CharonLeave
    ApplyMovement LOCALID_POLICEMAN_1, StarkMountainRoom3_Movement_Policeman1LeaveWithCharon
    ApplyMovement LOCALID_POLICEMAN_2, StarkMountainRoom3_Movement_Policeman2LeaveWithCharon
    WaitMovement
    RemoveObject LOCALID_CHARON
    RemoveObject LOCALID_POLICEMAN_1
    RemoveObject LOCALID_POLICEMAN_2
    BufferPlayerName 0
    Message StarkMountainRoom3_Text_ExitThisEnvironment
    CloseMessage
    SetVar VAR_STARK_MOUNTAIN_OUTSIDE_STATE, 2
    SetFlag FLAG_HIDE_STARK_MOUNTAIN_ROOM_3_BUCK
    SetFlag FLAG_HIDE_STARK_MOUNTAIN_ROOM_3_LOOKER
    SetVar VAR_STARK_MOUNTAIN_ROOM_3_STATE, 1
    SetFlag FLAG_ARRESTED_CHARON_STARK_MOUNTAIN
    ClearFlag FLAG_HIDE_GAME_CORNER_LOOKER
    ClearFlag FLAG_HIDE_SURVIVAL_AREA_RIVAL
    ClearFlag FLAG_HIDE_BATTLEGROUND_BUCK
    ClearFlag FLAG_HIDE_SURVIVAL_AREA_BUCK
    ClearFlag FLAG_HIDE_STARK_MOUNTAIN_OUTSIDE_BUCK
    ClearFlag FLAG_HIDE_STARK_MOUNTAIN_OUTSIDE_LOOKER
    FadeScreenOut
    WaitFadeScreen
    Warp MAP_HEADER_STARK_MOUNTAIN_OUTSIDE, 0, 751, 233, DIR_NORTH
    FadeScreenIn
    WaitFadeScreen
    End

    .balign 4, 0
StarkMountainRoom3_Movement_PlayerWalkNorth:
    WalkNormalNorth 3
    EndMovement

    .balign 4, 0
StarkMountainRoom3_Movement_PlayerWatchGruntsLeave:
    Delay8 2
    WalkOnSpotNormalEast
    Delay8 2
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
StarkMountainRoom3_Movement_BuckWalkNorth:
    Delay8
    WalkNormalNorth 2
    EndMovement

    .balign 4, 0
StarkMountainRoom3_Movement_CharonGrabMagmaStone:
    WalkNormalNorth 2
    Delay8 2
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
StarkMountainRoom3_Movement_CharonLookAround:
    WalkOnSpotFastWest
    Delay8
    WalkOnSpotFastEast
    Delay8
    WalkOnSpotFastSouth
    EndMovement

    .balign 4, 0
StarkMountainRoom3_Movement_CharonWalkOnSpotSouth:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
StarkMountainRoom3_Movement_CharonWalkSouth:
    Delay8 2
    WalkNormalSouth 3
    EndMovement

    .balign 4, 0
StarkMountainRoom3_Movement_CharonLeave:
    WalkNormalSouth
    WalkNormalEast
    WalkNormalSouth 3
    WalkNormalWest
    WalkNormalSouth
    SetInvisible
    EndMovement

    .balign 4, 0
StarkMountainRoom3_Movement_GruntM1WatchLookerWalkToCharon:
    Delay8 3
    Delay4
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
StarkMountainRoom3_Movement_GruntM2WatchLookerWalkToCharon:
    Delay8
    WalkOnSpotNormalSouth
    Delay8
    WalkOnSpotNormalWest
    Delay4
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
StarkMountainRoom3_Movement_GruntM1WalkOnSpotEast:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
StarkMountainRoom3_Movement_GruntM2WalkOnSpotEast:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
StarkMountainRoom3_Movement_GruntM1FaceGruntM2:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
StarkMountainRoom3_Movement_GruntM2FaceGruntM1:
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
StarkMountainRoom3_Movement_GruntM1WalkOnSpotFastEast:
    WalkOnSpotFastEast 3
    EndMovement

    .balign 4, 0
StarkMountainRoom3_Movement_GruntM2WalkOnSpotFastWest:
    WalkOnSpotFastWest 3
    EndMovement

    .balign 4, 0
StarkMountainRoom3_Movement_GruntM1Leave:
    WalkFastEast 2
    WalkFastSouth 5
    WalkFastWest
    WalkFastSouth
    SetInvisible
    EndMovement

    .balign 4, 0
StarkMountainRoom3_Movement_GruntM2Leave:
    WalkFastSouth 5
    WalkFastWest
    WalkFastSouth
    SetInvisible
    EndMovement

    .balign 4, 0
StarkMountainRoom3_Movement_CroagunkStealMagmaStone:
    WalkFastWest 2
    WalkFastNorth 3
    WalkOnSpotNormalNorth
    WalkFastSouth 3
    WalkFastEast 2
    EndMovement

    .balign 4, 0
StarkMountainRoom3_Movement_LookerWalkToCharon:
    WalkNormalWest 3
    WalkNormalNorth 3
    EndMovement

    .balign 4, 0
StarkMountainRoom3_Movement_LookerPushCharonSouth:
    WalkNormalWest
    WalkNormalNorth
    WalkNormalEast
    WalkNormalSouth 2
    EndMovement

    .balign 4, 0
StarkMountainRoom3_Movement_Policeman1Enter:
    WalkNormalNorth 2
    WalkNormalEast
    WalkNormalNorth 3
    WalkNormalWest 2
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
StarkMountainRoom3_Movement_Policeman1LeaveWithCharon:
    WalkNormalEast
    WalkNormalSouth
    WalkNormalEast
    WalkNormalSouth 3
    WalkNormalWest
    WalkNormalSouth 2
    EndMovement

    .balign 4, 0
StarkMountainRoom3_Movement_Policeman2Enter:
    WalkNormalEast
    WalkNormalNorth 4
    WalkNormalWest
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
StarkMountainRoom3_Movement_Policeman2LeaveWithCharon:
    WalkNormalEast
    WalkNormalSouth 3
    WalkNormalWest
    WalkNormalSouth 2
    SetInvisible
    EndMovement
