#include "macros/scrcmd.inc"
#include "res/text/bank/lake_verity.h"
#include "res/field/events/events_lake_verity.h"


    ScriptEntry LakeVerity_OnTransition
    ScriptEntry LakeVerity_OnLoad
    ScriptEntry LakeVerity_ProfRowan
    ScriptEntry LakeVerity_Counterpart
    ScriptEntry LakeVerity_OnFrameProfRowanNoticePlayer
    ScriptEntry LakeVerity_Mars
    ScriptEntry LakeVerity_GruntM
    ScriptEntryEnd

LakeVerity_OnTransition:
    CallIfSet FLAG_TEAM_GALACTIC_LEFT_LAKE_VERITY, LakeVerity_SetPositionsAfterTeamGalactic
    CallIfUnset FLAG_TEAM_GALACTIC_LEFT_LAKE_VERITY, LakeVerity_SetPositionsDuringTeamGalactic
    CallIfEq VAR_LAKE_VERITY_PROF_ROWAN_STATE, 0, LakeVerity_SetProfRowanStartPosition
    GetPlayerGender VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, GENDER_MALE, LakeVerity_SetCounterpartGraphicsDawn
    GoToIfEq VAR_MAP_LOCAL_0, GENDER_FEMALE, LakeVerity_SetCounterpartGraphicsLucas
    End

LakeVerity_SetCounterpartGraphicsDawn:
    SetVar VAR_OBJ_GFX_ID_0, OBJ_EVENT_GFX_PLAYER_F
    End

LakeVerity_SetCounterpartGraphicsLucas:
    SetVar VAR_OBJ_GFX_ID_0, OBJ_EVENT_GFX_PLAYER_M
    End

LakeVerity_SetProfRowanStartPosition:
    SetObjectEventPos LOCALID_PROF_ROWAN, 46, 50
    SetObjectEventMovementType LOCALID_PROF_ROWAN, MOVEMENT_TYPE_LOOK_NORTH
    SetObjectEventDir LOCALID_PROF_ROWAN, DIR_NORTH
    Return

LakeVerity_SetPositionsDuringTeamGalactic:
    SetObjectEventPos LOCALID_PROF_ROWAN, 46, 51
    SetObjectEventMovementType LOCALID_PROF_ROWAN, MOVEMENT_TYPE_LOOK_SOUTH
    SetObjectEventDir LOCALID_PROF_ROWAN, DIR_SOUTH
    Return

LakeVerity_SetPositionsAfterTeamGalactic:
    SetObjectEventPos LOCALID_PROF_ROWAN, 50, 37
    SetObjectEventMovementType LOCALID_PROF_ROWAN, MOVEMENT_TYPE_LOOK_WEST
    SetObjectEventDir LOCALID_PROF_ROWAN, DIR_WEST
    SetObjectEventPos LOCALID_COUNTERPART, 50, 39
    SetObjectEventMovementType LOCALID_COUNTERPART, MOVEMENT_TYPE_LOOK_WEST
    SetObjectEventDir LOCALID_COUNTERPART, DIR_WEST
    Return

LakeVerity_OnLoad:
    End

LakeVerity_Unused:
    End

LakeVerity_ProfRowan:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    GoToIfSet FLAG_TEAM_GALACTIC_LEFT_LAKE_VERITY, LakeVerity_INeedYouToGoToLakeAcuity
    ApplyMovement LOCALID_PROF_ROWAN, LakeVerity_Movement_RowanWalkOnSpotEast
    WaitMovement
    Message LakeVerity_Text_HowDareYouMisguidedThugs
    FacePlayer
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_MALE, LakeVerity_DawnNeedsYourHelp
    GoTo LakeVerity_LucasNeedsYourHelp
    End

LakeVerity_DawnNeedsYourHelp:
    BufferPlayerName 0
    Message LakeVerity_Text_DawnNeedsYourHelp
    GoTo LakeVerity_CloseMessageCounterpartNeedsYourHelp
    End

LakeVerity_LucasNeedsYourHelp:
    BufferPlayerName 0
    Message LakeVerity_Text_LucasNeedsYourHelp
    GoTo LakeVerity_CloseMessageCounterpartNeedsYourHelp
    End

LakeVerity_CloseMessageCounterpartNeedsYourHelp:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

LakeVerity_INeedYouToGoToLakeAcuity:
    FacePlayer
    BufferPlayerName 0
    BufferRivalName 1
    Message LakeVerity_Text_INeedYouToGoToLakeAcuity
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

LakeVerity_Counterpart:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_TEAM_GALACTIC_LEFT_LAKE_VERITY, LakeVerity_CounterpartWhatsTeamGalacticUpTo
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_MALE, LakeVerity_DawnICouldntBeatThisPerson
    GoTo LakeVerity_LucasILostToHerButJustBarely
    End

LakeVerity_DawnICouldntBeatThisPerson:
    BufferPlayerName 0
    Message LakeVerity_Text_DawnICouldntBeatThisPerson
    GoTo LakeVerity_CloseMessageCounterpartLostToMars
    End

LakeVerity_LucasILostToHerButJustBarely:
    BufferPlayerName 0
    Message LakeVerity_Text_LucasILostToHerButJustBarely
    GoTo LakeVerity_CloseMessageCounterpartLostToMars
    End

LakeVerity_CloseMessageCounterpartLostToMars:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

LakeVerity_CounterpartWhatsTeamGalacticUpTo:
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_MALE, LakeVerity_DawnWhatIsTeamGalacticUpTo
    GoTo LakeVerity_LucasWhatsTeamGalacticUpTo
    End

LakeVerity_DawnWhatIsTeamGalacticUpTo:
    BufferPlayerName 0
    Message LakeVerity_Text_DawnWhatIsTeamGalacticUpTo
    GoTo LakeVerity_CloseMessageWhatsTeamGalacticUpTo
    End

LakeVerity_LucasWhatsTeamGalacticUpTo:
    BufferPlayerName 0
    Message LakeVerity_Text_LucasWhatsTeamGalacticUpTo
    GoTo LakeVerity_CloseMessageWhatsTeamGalacticUpTo
    End

LakeVerity_CloseMessageWhatsTeamGalacticUpTo:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
LakeVerity_Movement_RowanWalkOnSpotEast:
    WalkOnSpotNormalEast
    EndMovement

LakeVerity_OnFrameProfRowanNoticePlayer:
    LockAll
    ApplyMovement LOCALID_PROF_ROWAN, LakeVerity_Movement_RowanNoticePlayer
    WaitMovement
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_MALE, LakeVerity_WhatTimingYouveGotToHelpDawn
    GoTo LakeVerity_WhatTimingYouveGotToHelpLucas
    End

LakeVerity_WhatTimingYouveGotToHelpDawn:
    BufferPlayerName 0
    Message LakeVerity_Text_WhatTimingYouveGotToHelpDawn
    GoTo LakeVerity_CloseMessageYouveGotToHelpCounterpart
    End

LakeVerity_WhatTimingYouveGotToHelpLucas:
    BufferPlayerName 0
    Message LakeVerity_Text_WhatTimingYouveGotToHelpLucas
    GoTo LakeVerity_CloseMessageYouveGotToHelpCounterpart
    End

LakeVerity_CloseMessageYouveGotToHelpCounterpart:
    SetVar VAR_LAKE_VERITY_PROF_ROWAN_STATE, 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
LakeVerity_Movement_RowanNoticePlayer:
    WalkOnSpotNormalSouth
    EmoteExclamationMark
    WalkNormalSouth
    EndMovement

LakeVerity_Mars:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ApplyMovement LOCALID_COUNTERPART, LakeVerity_Movement_CounterpartWalkOnSpotEast
    WaitMovement
    Message LakeVerity_Text_MarsIntro
    CloseMessage
    StartTrainerBattle TRAINER_COMMANDER_MARS_LAKE_VERITY
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, LakeVerity_BlackOut
    Message LakeVerity_Text_MarsDefeat
    Message LakeVerity_Text_WerePullingOut
    Message LakeVerity_Text_NowWeveGotAllLakePokemon
    CloseMessage
    FadeScreenOut
    WaitFadeScreen
    RemoveObject LOCALID_MARS
    RemoveObject LOCALID_GRUNT_M
    RemoveObject LOCALID_GALACTIC_GRUNT_1
    RemoveObject LOCALID_GALACTIC_GRUNT_3
    RemoveObject LOCALID_GALACTIC_GRUNT_2
    RemoveObject LOCALID_GALACTIC_GRUNT_4
    SetFlag FLAG_ALT_MUSIC_LAKE_VERITY
    ApplyMovement LOCALID_COUNTERPART, LakeVerity_Movement_CounterpartFaceSouth
    ApplyMovement LOCALID_PLAYER, LakeVerity_Movement_PlayerFaceWest
    WaitMovement
    SetPosition LOCALID_PROF_ROWAN, 53, 1, 39, DIR_EAST
    FadeScreenIn
    WaitFadeScreen
    SetFlag FLAG_UNK_0x029A
    SetFlag FLAG_TEAM_GALACTIC_LEFT_LAKE_VERITY
    ClearFlag FLAG_HIDE_LAKE_ACUITY_JUPITER
    SetVar VAR_LAKE_ACUITY_STATE, 1
    BufferRivalName 0
    Message LakeVerity_Text_WhatIsHappeningAtLakeAcuity
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

LakeVerity_BlackOut:
    BlackOutFromBattle
    ReleaseAll
    End

    .balign 4, 0
LakeVerity_UnusedMovement:
    WalkOnSpotNormalNorth
    EndMovement

LakeVerity_UnusedMovement2:
    WalkNormalNorth 3
    EndMovement

    .balign 4, 0
LakeVerity_Movement_CounterpartWalkOnSpotEast:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
LakeVerity_Movement_CounterpartFaceSouth:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
LakeVerity_Movement_PlayerFaceWest:
    WalkOnSpotNormalWest
    EndMovement

LakeVerity_GruntM:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message LakeVerity_Text_OuchWhatsWithThisOldTimer
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
