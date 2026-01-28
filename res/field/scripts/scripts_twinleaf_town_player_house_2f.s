#include "macros/scrcmd.inc"
#include "res/text/bank/twinleaf_town_player_house_2f.h"
#include "res/field/events/events_twinleaf_town_player_house_2f.h"


    ScriptEntry TwinleafTownPlayerHouse2F_Wii
    ScriptEntry TwinleafTownPlayerHouse2F_PC
    ScriptEntry TwinleafTownPlayerHouse2F_OnFrame_ConcludeSpecialProgram
    ScriptEntry TwinleafTownPlayerHouse2F_ScrollingSign
    ScriptEntry TwinleafTownPlayerHouse2F_OnTransition
    ScriptEntry TwinleafTownPlayerHouse2F_TV
    ScriptEntry TwinleafTownPlayerHouse2F_RivalTriggerNorth
    ScriptEntry TwinleafTownPlayerHouse2F_RivalTriggerWest
    ScriptEntry TwinleafTownPlayerHouse2F_RivalTriggerEast
    ScriptEntry TwinleafTownPlayerHouse2F_RivalTriggerSouth
    ScriptEntryEnd

TwinleafTownPlayerHouse2F_OnTransition:
    GoToIfEq VAR_PLAYER_HOUSE_SPECIAL_PROGRAM_STATE, 0, TwinleafTownPlayerHouse2F_SetVolumeForTV
    End

TwinleafTownPlayerHouse2F_SetVolumeForTV:
    SetInitialVolumeForSequence SEQ_TV_HOUSOU, 50
    End

TwinleafTownPlayerHouse2F_OnFrame_ConcludeSpecialProgram:
    LockAll
    SetVar VAR_PLAYER_HOUSE_SPECIAL_PROGRAM_STATE, 1
    Message TwinleafTownPlayerHouse2F_Text_ThatConcludesOurSpecialProgram
    PlaySound SEQ_TV_END
    Message TwinleafTownPlayerHouse2F_Text_SeeYouNextWeek
    WaitSound
    CloseMessage
    PlayDefaultMusic
    ReleaseAll
    End

TwinleafTownPlayerHouse2F_Wii:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message TwinleafTownPlayerHouse2F_Text_ItsAWii
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

TwinleafTownPlayerHouse2F_PC:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    BufferPlayerName 0
    Message TwinleafTownPlayerHouse2F_Text_PCPokemonBasics
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

TwinleafTownPlayerHouse2F_ScrollingSign:
    ShowScrollingSign TwinleafTownPlayerHouse2F_Text_TheXButtonOpensTheMenu
    End

TwinleafTownPlayerHouse2F_TV:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message TwinleafTownPlayerHouse2F_Text_MomBoughThisTVAsAGift
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

TwinleafTownPlayerHouse2F_RivalTriggerNorth:
    SetVar VAR_MAP_LOCAL_0, 0
    GoTo TwinleafTownPlayerHouse2F_Rival
    End

TwinleafTownPlayerHouse2F_RivalTriggerWest:
    SetVar VAR_MAP_LOCAL_0, 1
    GoTo TwinleafTownPlayerHouse2F_Rival
    End

TwinleafTownPlayerHouse2F_RivalTriggerEast:
    SetVar VAR_MAP_LOCAL_0, 2
    GoTo TwinleafTownPlayerHouse2F_Rival
    End

TwinleafTownPlayerHouse2F_RivalTriggerSouth:
    SetVar VAR_MAP_LOCAL_0, 3
    GoTo TwinleafTownPlayerHouse2F_Rival
    End

TwinleafTownPlayerHouse2F_Rival:
    LockAll
    ClearFlag FLAG_HIDE_TWINLEAF_TOWN_PLAYER_HOUSE_2F_RIVAL
    AddObject LOCALID_RIVAL
    ApplyMovement LOCALID_RIVAL, TwinleafTownPlayerHouse2F_Movement_RivalEnterRoom
    WaitMovement
    Common_SetRivalBGM
    BufferRivalName 0
    Message TwinleafTownPlayerHouse2F_Text_ThereYouAre
    CloseMessage
    CallIfEq VAR_MAP_LOCAL_0, 0, TwinleafTownPlayerHouse2F_RivalApproachPlayerNorth
    CallIfEq VAR_MAP_LOCAL_0, 1, TwinleafTownPlayerHouse2F_RivalApproachPlayerWest
    CallIfEq VAR_MAP_LOCAL_0, 2, TwinleafTownPlayerHouse2F_RivalApproachPlayerEast
    CallIfEq VAR_MAP_LOCAL_0, 3, TwinleafTownPlayerHouse2F_RivalApproachPlayerSouth
    BufferPlayerName 1
    Message TwinleafTownPlayerHouse2F_Text_ProfRowanWouldGiveUsPokemon
    CloseMessage
    ApplyMovement LOCALID_RIVAL, TwinleafTownPlayerHouse2F_Movement_RivalExclamationMark
    WaitMovement
    CallIfEq VAR_MAP_LOCAL_0, 0, TwinleafTownPlayerHouse2F_RivalApproachPCNorth
    CallIfEq VAR_MAP_LOCAL_0, 1, TwinleafTownPlayerHouse2F_RivalApproachPCWest
    CallIfEq VAR_MAP_LOCAL_0, 2, TwinleafTownPlayerHouse2F_RivalApproachPCEast
    CallIfEq VAR_MAP_LOCAL_0, 3, TwinleafTownPlayerHouse2F_RivalApproachPCSouth
    Message TwinleafTownPlayerHouse2F_Text_IsThisANewPC
    CloseMessage
    CallIfEq VAR_MAP_LOCAL_0, 0, TwinleafTownPlayerHouse2F_RivalTurnBackNorth
    CallIfEq VAR_MAP_LOCAL_0, 1, TwinleafTownPlayerHouse2F_RivalTurnBackWest
    CallIfEq VAR_MAP_LOCAL_0, 2, TwinleafTownPlayerHouse2F_RivalTurnBackEast
    CallIfEq VAR_MAP_LOCAL_0, 3, TwinleafTownPlayerHouse2F_RivalTurnBackSouth
    BufferRivalName 0
    Message TwinleafTownPlayerHouse2F_Text_WhereWasI
    CloseMessage
    CallIfEq VAR_MAP_LOCAL_0, 0, TwinleafTownPlayerHouse2F_RivalWalkBackToPlayerNorth
    CallIfEq VAR_MAP_LOCAL_0, 1, TwinleafTownPlayerHouse2F_RivalWalkBackToPlayerWest
    CallIfEq VAR_MAP_LOCAL_0, 2, TwinleafTownPlayerHouse2F_RivalWalkBackToPlayerEast
    CallIfEq VAR_MAP_LOCAL_0, 3, TwinleafTownPlayerHouse2F_RivalWalkBackToPlayerSouth
    BufferPlayerName 1
    Message TwinleafTownPlayerHouse2F_Text_WereGoingToSeeProfRowanAndGetPokemon
    CloseMessage
    CallIfEq VAR_MAP_LOCAL_0, 0, TwinleafTownPlayerHouse2F_RivalLeaveNorth
    CallIfEq VAR_MAP_LOCAL_0, 1, TwinleafTownPlayerHouse2F_RivalLeaveWest
    CallIfEq VAR_MAP_LOCAL_0, 2, TwinleafTownPlayerHouse2F_RivalLeaveEast
    CallIfEq VAR_MAP_LOCAL_0, 3, TwinleafTownPlayerHouse2F_RivalLeaveSouth
    PlayFanfare SEQ_SE_DP_KAIDAN2
    RemoveObject LOCALID_RIVAL
    Common_FadeToDefaultMusic2
    WaitFanfare SEQ_SE_DP_KAIDAN2
    SetFlag FLAG_HIDE_TWINLEAF_TOWN_PLAYER_HOUSE_2F_RIVAL
    SetVar VAR_PLAYER_HOUSE_RIVAL_TRIGGER_STATE, 1
    ReleaseAll
    End

TwinleafTownPlayerHouse2F_RivalApproachPlayerNorth:
    ApplyMovement LOCALID_PLAYER, TwinleafTownPlayerHouse2F_Movement_PlayerFaceRivalLongDelay
    ApplyMovement LOCALID_RIVAL, TwinleafTownPlayerHouse2F_Movement_RivalApproachPlayerNorth
    WaitMovement
    Return

TwinleafTownPlayerHouse2F_RivalApproachPlayerWest:
    ApplyMovement LOCALID_PLAYER, TwinleafTownPlayerHouse2F_Movement_PlayerFaceRivalShortDelay
    ApplyMovement LOCALID_RIVAL, TwinleafTownPlayerHouse2F_Movement_RivalApproachPlayerWest
    WaitMovement
    Return

TwinleafTownPlayerHouse2F_RivalApproachPlayerEast:
    ApplyMovement LOCALID_RIVAL, TwinleafTownPlayerHouse2F_Movement_RivalApproachPlayerEast
    WaitMovement
    Return

TwinleafTownPlayerHouse2F_RivalApproachPlayerSouth:
    ApplyMovement LOCALID_PLAYER, TwinleafTownPlayerHouse2F_Movement_PlayerFaceRivalShortDelay
    ApplyMovement LOCALID_RIVAL, TwinleafTownPlayerHouse2F_Movement_RivalApproachPlayerSouth
    WaitMovement
    Return

TwinleafTownPlayerHouse2F_RivalApproachPCNorth:
    ApplyMovement LOCALID_PLAYER, TwinleafTownPlayerHouse2F_Movement_PlayerWatchRivalApproachPCNorth
    ApplyMovement LOCALID_RIVAL, TwinleafTownPlayerHouse2F_Movement_RivalApproachPCNorth
    WaitMovement
    Return

TwinleafTownPlayerHouse2F_RivalApproachPCWest:
    ApplyMovement LOCALID_PLAYER, TwinleafTownPlayerHouse2F_Movement_PlayerWatchRivalApproachPCWest
    ApplyMovement LOCALID_RIVAL, TwinleafTownPlayerHouse2F_Movement_RivalApproachPCWest
    WaitMovement
    Return

TwinleafTownPlayerHouse2F_RivalApproachPCEast:
    ApplyMovement LOCALID_PLAYER, TwinleafTownPlayerHouse2F_Movement_PlayerWatchRivalApproachPCEast
    ApplyMovement LOCALID_RIVAL, TwinleafTownPlayerHouse2F_Movement_RivalApproachPCEast
    WaitMovement
    Return

TwinleafTownPlayerHouse2F_RivalApproachPCSouth:
    ApplyMovement LOCALID_PLAYER, TwinleafTownPlayerHouse2F_Movement_PlayerWatchRivalApproachPCSouth
    ApplyMovement LOCALID_RIVAL, TwinleafTownPlayerHouse2F_Movement_RivalApproachPCSouth
    WaitMovement
    Return

TwinleafTownPlayerHouse2F_RivalTurnBackNorth:
    ApplyMovement LOCALID_RIVAL, TwinleafTownPlayerHouse2F_Movement_RivalTurnBackNorth
    WaitMovement
    Return

TwinleafTownPlayerHouse2F_RivalTurnBackWest:
    ApplyMovement LOCALID_RIVAL, TwinleafTownPlayerHouse2F_Movement_RivalTurnBackWest
    WaitMovement
    Return

TwinleafTownPlayerHouse2F_RivalTurnBackEast:
    ApplyMovement LOCALID_RIVAL, TwinleafTownPlayerHouse2F_Movement_RivalTurnBackEast
    WaitMovement
    Return

TwinleafTownPlayerHouse2F_RivalTurnBackSouth:
    ApplyMovement LOCALID_RIVAL, TwinleafTownPlayerHouse2F_Movement_RivalTurnBackSouth
    WaitMovement
    Return

TwinleafTownPlayerHouse2F_RivalWalkBackToPlayerNorth:
    ApplyMovement LOCALID_RIVAL, TwinleafTownPlayerHouse2F_Movement_RivalWalkBackToPlayerNorth
    WaitMovement
    Return

TwinleafTownPlayerHouse2F_RivalWalkBackToPlayerWest:
    ApplyMovement LOCALID_RIVAL, TwinleafTownPlayerHouse2F_Movement_RivalWalkBackToPlayerWest
    WaitMovement
    Return

TwinleafTownPlayerHouse2F_RivalWalkBackToPlayerEast:
    ApplyMovement LOCALID_RIVAL, TwinleafTownPlayerHouse2F_Movement_RivalWalkBackToPlayerEast
    WaitMovement
    Return

TwinleafTownPlayerHouse2F_RivalWalkBackToPlayerSouth:
    ApplyMovement LOCALID_RIVAL, TwinleafTownPlayerHouse2F_Movement_RivalWalkBackToPlayerSouth
    WaitMovement
    Return

TwinleafTownPlayerHouse2F_RivalLeaveNorth:
    ApplyMovement LOCALID_PLAYER, TwinleafTownPlayerHouse2F_Movement_PlayerWatchRivalLeave
    ApplyMovement LOCALID_RIVAL, TwinleafTownPlayerHouse2F_Movement_RivalLeaveNorth
    WaitMovement
    Return

TwinleafTownPlayerHouse2F_RivalLeaveWest:
    ApplyMovement LOCALID_PLAYER, TwinleafTownPlayerHouse2F_Movement_PlayerWatchRivalLeave
    ApplyMovement LOCALID_RIVAL, TwinleafTownPlayerHouse2F_Movement_RivalLeaveWest
    WaitMovement
    Return

TwinleafTownPlayerHouse2F_RivalLeaveEast:
    ApplyMovement LOCALID_PLAYER, TwinleafTownPlayerHouse2F_Movement_PlayerWatchRivalLeave
    ApplyMovement LOCALID_RIVAL, TwinleafTownPlayerHouse2F_Movement_RivalLeaveEast
    WaitMovement
    Return

TwinleafTownPlayerHouse2F_RivalLeaveSouth:
    ApplyMovement LOCALID_PLAYER, TwinleafTownPlayerHouse2F_Movement_PlayerWatchRivalLeave
    ApplyMovement LOCALID_RIVAL, TwinleafTownPlayerHouse2F_Movement_RivalLeaveSouth
    WaitMovement
    Return

    .balign 4, 0
TwinleafTownPlayerHouse2F_Movement_RivalEnterRoom:
    WalkFastWest 2
    EmoteExclamationMark
    Delay8
    EndMovement

    .balign 4, 0
TwinleafTownPlayerHouse2F_Movement_RivalApproachPlayerNorth:
    WalkFastWest
    WalkFastSouth
    WalkFastWest 2
    EndMovement

    .balign 4, 0
TwinleafTownPlayerHouse2F_Movement_RivalApproachPlayerWest:
    WalkFastWest
    WalkFastSouth 2
    WalkFastWest 3
    EndMovement

    .balign 4, 0
TwinleafTownPlayerHouse2F_Movement_RivalApproachPlayerEast:
    WalkFastSouth 2
    WalkFastWest 2
    EndMovement

    .balign 4, 0
TwinleafTownPlayerHouse2F_Movement_RivalApproachPlayerSouth:
    WalkFastWest
    WalkFastSouth 3
    WalkFastWest 2
    EndMovement

    .balign 4, 0
TwinleafTownPlayerHouse2F_Movement_RivalExclamationMark:
    EmoteExclamationMark
    Delay8
    EndMovement

    .balign 4, 0
TwinleafTownPlayerHouse2F_Movement_RivalApproachPCNorth:
    WalkFastSouth
    WalkFastWest 4
    WalkFastNorth
    EndMovement

    .balign 4, 0
TwinleafTownPlayerHouse2F_Movement_RivalApproachPCWest:
    WalkFastNorth
    WalkFastWest 3
    WalkOnSpotFastNorth
    EndMovement

    .balign 4, 0
TwinleafTownPlayerHouse2F_Movement_RivalApproachPCEast:
    WalkFastNorth
    WalkFastWest 5
    WalkOnSpotFastNorth
    EndMovement

    .balign 4, 0
TwinleafTownPlayerHouse2F_Movement_RivalApproachPCSouth:
    WalkFastNorth
    WalkFastWest 4
    WalkFastNorth
    EndMovement

    .balign 4, 0
TwinleafTownPlayerHouse2F_Movement_RivalTurnBackNorth:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
TwinleafTownPlayerHouse2F_Movement_RivalTurnBackWest:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
TwinleafTownPlayerHouse2F_Movement_RivalTurnBackEast:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
TwinleafTownPlayerHouse2F_Movement_RivalTurnBackSouth:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
TwinleafTownPlayerHouse2F_Movement_RivalWalkBackToPlayerNorth:
    WalkFastEast 2
    EndMovement

    .balign 4, 0
TwinleafTownPlayerHouse2F_Movement_RivalWalkBackToPlayerWest:
    WalkFastEast
    WalkFastSouth
    WalkOnSpotFastEast
    EndMovement

    .balign 4, 0
TwinleafTownPlayerHouse2F_Movement_RivalWalkBackToPlayerEast:
    WalkFastEast
    WalkFastSouth
    WalkFastEast 2
    EndMovement

    .balign 4, 0
TwinleafTownPlayerHouse2F_Movement_RivalWalkBackToPlayerSouth:
    WalkFastEast
    WalkFastSouth 2
    WalkFastEast
    EndMovement

    .balign 4, 0
TwinleafTownPlayerHouse2F_Movement_RivalLeaveNorth:
    WalkFastSouth
    WalkFastEast 3
    WalkFastNorth 2
    WalkFastEast 4
    EndMovement

    .balign 4, 0
TwinleafTownPlayerHouse2F_Movement_RivalLeaveWest:
    WalkFastNorth
    WalkFastEast 4
    WalkFastNorth
    WalkFastEast 3
    EndMovement

    .balign 4, 0
TwinleafTownPlayerHouse2F_Movement_RivalLeaveEast:
    WalkFastNorth
    WalkFastEast 2
    WalkFastNorth
    WalkFastEast 3
    EndMovement

    .balign 4, 0
TwinleafTownPlayerHouse2F_Movement_RivalLeaveSouth:
    WalkFastNorth
    WalkFastEast 3
    WalkFastNorth 2
    WalkFastEast 3
    EndMovement

    .balign 4, 0
TwinleafTownPlayerHouse2F_Movement_PlayerFaceRivalLongDelay:
    Delay8
    Delay4
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
TwinleafTownPlayerHouse2F_Movement_PlayerFaceRivalShortDelay:
    Delay8 2
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
TwinleafTownPlayerHouse2F_Movement_PlayerWatchRivalApproachPCNorth:
    Delay8 2
    WalkOnSpotFastWest
    EndMovement

    .balign 4, 0
TwinleafTownPlayerHouse2F_Movement_PlayerWatchRivalApproachPCWest:
    Delay8
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
TwinleafTownPlayerHouse2F_Movement_PlayerWatchRivalApproachPCEast:
    Delay8
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
TwinleafTownPlayerHouse2F_Movement_PlayerWatchRivalApproachPCSouth:
    Delay8
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
TwinleafTownPlayerHouse2F_Movement_PlayerWatchRivalLeave:
    Delay8 2
    WalkOnSpotNormalEast
    EndMovement
