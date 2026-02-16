#include "macros/scrcmd.inc"
#include "res/text/bank/twinleaf_town.h"
#include "res/field/events/events_twinleaf_town.h"


    ScriptEntry TwinleafTown_OnTransition
    ScriptEntry TwinleafTown_RivalThudTrigger
    ScriptEntry TwinleafTown_Guitarist
    ScriptEntry TwinleafTown_RivalWasLookingForYouTrigger
    ScriptEntry TwinleafTown_Collector
    ScriptEntry TwinleafTown_BreederF
    ScriptEntry TwinleafTown_MapSign
    ScriptEntry TwinleafTown_LandmarkSignPlayerMailbox
    ScriptEntry TwinleafTown_LandmarkSignRivalMailbox
    ScriptEntryEnd

TwinleafTown_OnTransition:
    CallIfEq VAR_UNK_0x40F4, 1, _004F
    CallIfEq VAR_PLAYER_HOUSE_STATE, 4, TwinleafTown_SetPlayerHouseState5
    CallIfEq VAR_PLAYER_HOUSE_STATE, 6, TwinleafTown_SetPlayerHouseState7
    End

_004F:
    SetVar VAR_UNK_0x40F4, 2
    Return

TwinleafTown_SetPlayerHouseState7:
    SetVar VAR_PLAYER_HOUSE_STATE, 7
    Return

TwinleafTown_SetPlayerHouseState5:
    SetVar VAR_PLAYER_HOUSE_STATE, 5
    Return

TwinleafTown_Guitarist:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_HAS_POKEDEX, TwinleafTown_EveryoneGoesOnAdventures
    GoToIfGe VAR_VISITED_LAKE_VERITY_WITH_RIVAL, 1, TwinleafTown_RivalWentTearingOffOuch
    GoToIfSet FLAG_RIVAL_LEFT_HOME, TwinleafTown_RivalWentTearingOff
    BufferPlayerName 0
    BufferRivalName 1
    Message TwinleafTown_Text_RivalWasLookingForYou2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

TwinleafTown_EveryoneGoesOnAdventures:
    Message TwinleafTown_Text_EveryoneGoesOnAdventures
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

TwinleafTown_RivalWentTearingOffOuch:
    BufferRivalName 0
    Message TwinleafTown_Text_RivalWentTearingOffOuch
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

TwinleafTown_RivalWentTearingOff:
    BufferPlayerName 0
    BufferRivalName 1
    Message TwinleafTown_Text_RivalWentTearingOff
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

TwinleafTown_RivalWasLookingForYouTrigger:
    LockAll
    ApplyMovement LOCALID_GUITARIST, TwinleafTown_Movement_GuitaristNoticePlayer
    WaitMovement
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    GoToIfEq VAR_0x8004, 108, TwinleafTown_GuitaristStopPlayerX108
    GoToIfEq VAR_0x8004, 109, TwinleafTown_GuitaristStopPlayerX109
    GoToIfEq VAR_0x8004, 110, TwinleafTown_GuitaristStopPlayerX110
    GoToIfEq VAR_0x8004, 111, TwinleafTown_GuitaristStopPlayerX111
    GoToIfEq VAR_0x8004, 112, TwinleafTown_GuitaristStopPlayerX112
    GoToIfEq VAR_0x8004, 113, TwinleafTown_GuitaristStopPlayerX113
    GoToIfEq VAR_0x8004, 114, TwinleafTown_GuitaristStopPlayerX114
    GoTo TwinleafTown_GuitaristStopPlayerX115

TwinleafTown_GuitaristStopPlayerX108:
    ApplyMovement LOCALID_PLAYER, TwinleafTown_Movement_PlayerGetPushedBackX108
    ApplyMovement LOCALID_GUITARIST, TwinleafTown_Movement_GuitaristStopPlayerX108
    WaitMovement
    GoTo TwinleafTown_RivalWasLookingForYou

TwinleafTown_GuitaristStopPlayerX109:
    ApplyMovement LOCALID_PLAYER, TwinleafTown_Movement_PlayerGetPushedBackX109
    ApplyMovement LOCALID_GUITARIST, TwinleafTown_Movement_GuitaristStopPlayerX109
    WaitMovement
    GoTo TwinleafTown_RivalWasLookingForYou

TwinleafTown_GuitaristStopPlayerX110:
    ApplyMovement LOCALID_PLAYER, TwinleafTown_Movement_PlayerGetPushedBackX110
    ApplyMovement LOCALID_GUITARIST, TwinleafTown_Movement_GuitaristStopPlayerX110
    WaitMovement
    GoTo TwinleafTown_RivalWasLookingForYou

TwinleafTown_GuitaristStopPlayerX111:
    ApplyMovement LOCALID_PLAYER, TwinleafTown_Movement_PlayerGetPushedBackX111
    ApplyMovement LOCALID_GUITARIST, TwinleafTown_Movement_GuitaristStopPlayerX111
    WaitMovement
    GoTo TwinleafTown_RivalWasLookingForYou

TwinleafTown_GuitaristStopPlayerX112:
    ApplyMovement LOCALID_PLAYER, TwinleafTown_Movement_PlayerGetPushedBackX112
    ApplyMovement LOCALID_GUITARIST, TwinleafTown_Movement_GuitaristStopPlayerX112
    WaitMovement
    GoTo TwinleafTown_RivalWasLookingForYou

TwinleafTown_GuitaristStopPlayerX113:
    ApplyMovement LOCALID_PLAYER, TwinleafTown_Movement_PlayerGetPushedBackX113
    ApplyMovement LOCALID_GUITARIST, TwinleafTown_Movement_GuitaristStopPlayerX113
    WaitMovement
    GoTo TwinleafTown_RivalWasLookingForYou

TwinleafTown_GuitaristStopPlayerX114:
    ApplyMovement LOCALID_PLAYER, TwinleafTown_Movement_PlayerGetPushedBackX114
    ApplyMovement LOCALID_GUITARIST, TwinleafTown_Movement_GuitaristStopPlayerX114
    WaitMovement
    GoTo TwinleafTown_RivalWasLookingForYou

TwinleafTown_GuitaristStopPlayerX115:
    ApplyMovement LOCALID_PLAYER, TwinleafTown_Movement_PlayerGetPushedBackX115
    ApplyMovement LOCALID_GUITARIST, TwinleafTown_Movement_GuitaristStopPlayerX115
    WaitMovement
    GoTo TwinleafTown_RivalWasLookingForYou

TwinleafTown_RivalWasLookingForYou:
    BufferPlayerName 0
    BufferRivalName 1
    Message TwinleafTown_Text_RivalWasLookingForYou1
    CloseMessage
    GoToIfEq VAR_0x8004, 108, TwinleafTown_GuitaristWalkBackX108
    GoToIfEq VAR_0x8004, 109, TwinleafTown_GuitaristWalkBackX109
    GoToIfEq VAR_0x8004, 110, TwinleafTown_GuitaristWalkBackX110
    GoToIfEq VAR_0x8004, 111, TwinleafTown_GuitaristWalkBackX111
    GoToIfEq VAR_0x8004, 112, TwinleafTown_GuitaristWalkBackX112
    GoToIfEq VAR_0x8004, 113, TwinleafTown_GuitaristWalkBackX113
    GoToIfEq VAR_0x8004, 114, TwinleafTown_GuitaristWalkBackX114
    GoTo TwinleafTown_GuitaristWalkBackX115

TwinleafTown_GuitaristWalkBackX108:
    ApplyMovement LOCALID_GUITARIST, TwinleafTown_Movement_GuitaristWalkBackX108
    WaitMovement
    GoTo TwinleafTown_GuitaristRelease

TwinleafTown_GuitaristWalkBackX109:
    ApplyMovement LOCALID_GUITARIST, TwinleafTown_Movement_GuitaristWalkBackX109
    WaitMovement
    GoTo TwinleafTown_GuitaristRelease

TwinleafTown_GuitaristWalkBackX110:
    ApplyMovement LOCALID_GUITARIST, TwinleafTown_Movement_GuitaristWalkBackX110
    WaitMovement
    GoTo TwinleafTown_GuitaristRelease

TwinleafTown_GuitaristWalkBackX111:
    ApplyMovement LOCALID_GUITARIST, TwinleafTown_Movement_GuitaristWalkBackX111
    WaitMovement
    GoTo TwinleafTown_GuitaristRelease

TwinleafTown_GuitaristWalkBackX112:
    ApplyMovement LOCALID_GUITARIST, TwinleafTown_Movement_GuitaristWalkBackX112
    WaitMovement
    GoTo TwinleafTown_GuitaristRelease

TwinleafTown_GuitaristWalkBackX113:
    ApplyMovement LOCALID_GUITARIST, TwinleafTown_Movement_GuitaristWalkBackX113
    WaitMovement
    GoTo TwinleafTown_GuitaristRelease

TwinleafTown_GuitaristWalkBackX114:
    ApplyMovement LOCALID_GUITARIST, TwinleafTown_Movement_GuitaristWalkBackX114
    WaitMovement
    GoTo TwinleafTown_GuitaristRelease

TwinleafTown_GuitaristWalkBackX115:
    ApplyMovement LOCALID_GUITARIST, TwinleafTown_Movement_GuitaristWalkBackX115
    WaitMovement
    GoTo TwinleafTown_GuitaristRelease

TwinleafTown_GuitaristRelease:
    ReleaseAll
    End

    .balign 4, 0
TwinleafTown_Movement_PlayerGetPushedBackX108:
    Delay4 6
    LockDir
    WalkNormalSouth
    UnlockDir
    WalkOnSpotFastNorth
    EndMovement

    .balign 4, 0
TwinleafTown_Movement_PlayerGetPushedBackX109:
    Delay4 5
    LockDir
    WalkNormalSouth
    UnlockDir
    WalkOnSpotFastNorth
    EndMovement

    .balign 4, 0
TwinleafTown_Movement_PlayerGetPushedBackX110:
    Delay4 6
    LockDir
    WalkNormalSouth
    UnlockDir
    WalkOnSpotFastNorth
    EndMovement

    .balign 4, 0
TwinleafTown_Movement_PlayerGetPushedBackX111:
    Delay4 7
    LockDir
    WalkNormalSouth
    UnlockDir
    WalkOnSpotFastNorth
    EndMovement

    .balign 4, 0
TwinleafTown_Movement_PlayerGetPushedBackX112:
    Delay4 8
    LockDir
    WalkNormalSouth
    UnlockDir
    WalkOnSpotFastNorth
    EndMovement

    .balign 4, 0
TwinleafTown_Movement_PlayerGetPushedBackX113:
    Delay4 9
    LockDir
    WalkNormalSouth
    UnlockDir
    WalkOnSpotFastNorth
    EndMovement

    .balign 4, 0
TwinleafTown_Movement_PlayerGetPushedBackX114:
    Delay4 10
    LockDir
    WalkNormalSouth
    UnlockDir
    WalkOnSpotFastNorth
    EndMovement

    .balign 4, 0
TwinleafTown_Movement_PlayerGetPushedBackX115:
    Delay4 11
    LockDir
    WalkNormalSouth
    UnlockDir
    WalkOnSpotFastNorth
    EndMovement

    .balign 4, 0
TwinleafTown_Movement_GuitaristNoticePlayer:
    WalkOnSpotFastNorth
    EmoteExclamationMark
    Delay8
    Delay4
    EndMovement

    .balign 4, 0
TwinleafTown_Movement_GuitaristStopPlayerX108:
    WalkFastNorth
    WalkFastEast
    WalkFastNorth 2
    WalkFastWest
    WalkOnSpotFastSouth
    WalkNormalSouth
    EndMovement

    .balign 4, 0
TwinleafTown_Movement_GuitaristStopPlayerX109:
    WalkFastNorth 3
    WalkFastEast
    WalkOnSpotFastSouth
    WalkNormalSouth
    EndMovement

    .balign 4, 0
TwinleafTown_Movement_GuitaristStopPlayerX110:
    WalkFastNorth 3
    WalkFastEast 2
    WalkOnSpotFastSouth
    WalkNormalSouth
    EndMovement

    .balign 4, 0
TwinleafTown_Movement_GuitaristStopPlayerX111:
    WalkFastNorth 3
    WalkFastEast 3
    WalkOnSpotFastSouth
    WalkNormalSouth
    EndMovement

    .balign 4, 0
TwinleafTown_Movement_GuitaristStopPlayerX112:
    WalkFastNorth 3
    WalkFastEast 4
    WalkOnSpotFastSouth
    WalkNormalSouth
    EndMovement

    .balign 4, 0
TwinleafTown_Movement_GuitaristStopPlayerX113:
    WalkFastNorth 3
    WalkFastEast 5
    WalkOnSpotFastSouth
    WalkNormalSouth
    EndMovement

    .balign 4, 0
TwinleafTown_Movement_GuitaristStopPlayerX114:
    WalkFastNorth 3
    WalkFastEast 6
    WalkOnSpotFastSouth
    WalkNormalSouth
    EndMovement

    .balign 4, 0
TwinleafTown_Movement_GuitaristStopPlayerX115:
    WalkFastNorth 3
    WalkFastEast 7
    WalkOnSpotFastSouth
    WalkNormalSouth
    EndMovement

    .balign 4, 0
TwinleafTown_Movement_GuitaristWalkBackX108:
    WalkNormalEast
    WalkNormalSouth 2
    WalkNormalWest
    EndMovement

    .balign 4, 0
TwinleafTown_Movement_GuitaristWalkBackX109:
    WalkNormalWest
    WalkNormalSouth 2
    EndMovement

    .balign 4, 0
TwinleafTown_Movement_GuitaristWalkBackX110:
    WalkNormalWest 2
    WalkNormalSouth 2
    EndMovement

    .balign 4, 0
TwinleafTown_Movement_GuitaristWalkBackX111:
    WalkNormalWest 3
    WalkNormalSouth 2
    EndMovement

    .balign 4, 0
TwinleafTown_Movement_GuitaristWalkBackX112:
    WalkNormalWest 4
    WalkNormalSouth 2
    EndMovement

    .balign 4, 0
TwinleafTown_Movement_GuitaristWalkBackX113:
    WalkNormalWest 5
    WalkNormalSouth 2
    EndMovement

    .balign 4, 0
TwinleafTown_Movement_GuitaristWalkBackX114:
    WalkNormalWest 6
    WalkNormalSouth 2
    EndMovement

    .balign 4, 0
TwinleafTown_Movement_GuitaristWalkBackX115:
    WalkNormalWest 7
    WalkNormalSouth 2
    EndMovement

TwinleafTown_RivalThudTrigger:
    LockAll
    LoadDoorAnimation 3, 27, 9, 11, ANIMATION_TAG_DOOR_1
    PlayDoorOpenAnimation ANIMATION_TAG_DOOR_1
    WaitForAnimation ANIMATION_TAG_DOOR_1
    ClearFlag FLAG_HIDE_TWINLEAF_TOWN_RIVAL
    AddObject LOCALID_RIVAL
    ApplyMovement LOCALID_RIVAL, TwinleafTown_Movement_RivalExitHouse
    ApplyMovement LOCALID_PLAYER, TwinleafTown_Movement_PlayerGetPushedBackByRival
    WaitMovement
    PlayFanfare SEQ_SE_DP_WALL_HIT2
    Message TwinleafTown_Text_BigThud
    WaitTime 30, VAR_RESULT
    Common_SetRivalBGM
    ApplyMovement LOCALID_RIVAL, TwinleafTown_Movement_RivalNoticePlayer
    WaitMovement
    BufferRivalName 0
    BufferPlayerName 1
    Message TwinleafTown_Text_GoingToSeeProfRowan
    CloseMessage
    ApplyMovement LOCALID_PLAYER, TwinleafTown_Movement_PlayerWatchRival
    ApplyMovement LOCALID_RIVAL, TwinleafTown_Movement_RivalWalkAwayAndWalkBack
    WaitMovement
    WaitTime 15, VAR_RESULT
    BufferRivalName 0
    Message TwinleafTown_Text_OhJeezForgotSomething
    CloseMessage
    ApplyMovement LOCALID_RIVAL, TwinleafTown_Movement_RivalEnterHouse
    WaitMovement
    PlayDoorCloseAnimation ANIMATION_TAG_DOOR_1
    WaitForAnimation ANIMATION_TAG_DOOR_1
    UnloadAnimation ANIMATION_TAG_DOOR_1
    RemoveObject LOCALID_RIVAL
    Common_FadeToDefaultMusic2
    SetVar VAR_TWINLEAF_TOWN_GUITARIST_TRIGGER_STATE, 1
    SetVar VAR_TWINLEAF_TOWN_RIVAL_TRIGGER_STATE, 1
    ReleaseAll
    End

    .balign 4, 0
TwinleafTown_Movement_PlayerWatchRival:
    Delay8
    Delay4
    WalkOnSpotNormalEast
    Delay8 5
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
TwinleafTown_Movement_PlayerGetPushedBackByRival:
    FaceNorth
    LockDir
    WalkNormalSouth
    UnlockDir
    EndMovement

    .balign 4, 0
TwinleafTown_Movement_RivalNoticePlayer:
    EmoteExclamationMark
    EndMovement

    .balign 4, 0
TwinleafTown_Movement_RivalExitHouse:
    WalkFastSouth
    WalkOnSpotFastNorth
    EndMovement

    .balign 4, 0
TwinleafTown_Movement_RivalWalkAwayAndWalkBack:
    WalkFastEast 4
    EmoteExclamationMark
    Delay8
    WalkFastWest 4
    WalkOnSpotFastSouth
    EndMovement

    .balign 4, 0
TwinleafTown_Movement_RivalEnterHouse:
    WalkNormalNorth
    SetInvisible
    EndMovement

TwinleafTown_Collector:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message TwinleafTown_Text_TechnologyBlowsMeAway
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

TwinleafTown_BreederF:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_HAS_POKEDEX, TwinleafTown_HelpingPutTogetherPokedex
    GoToIfGe VAR_VISITED_LAKE_VERITY_WITH_RIVAL, 1, TwinleafTown_PokemonYouLookGoodTogether
    Message TwinleafTown_Text_WildPokemonAttack
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

TwinleafTown_HelpingPutTogetherPokedex:
    Message TwinleafTown_Text_HelpingPutTogetherPokedex
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

TwinleafTown_PokemonYouLookGoodTogether:
    Message TwinleafTown_Text_PokemonYouLookGoodTogether
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

TwinleafTown_MapSign:
    ShowMapSign TwinleafTown_Text_MapSign
    End

TwinleafTown_LandmarkSignPlayerMailbox:
    BufferPlayerName 0
    ShowLandmarkSign TwinleafTown_Text_PlayerMailbox
    End

TwinleafTown_LandmarkSignRivalMailbox:
    BufferRivalName 0
    ShowLandmarkSign TwinleafTown_Text_RivalMailbox
    End

    .balign 4, 0
