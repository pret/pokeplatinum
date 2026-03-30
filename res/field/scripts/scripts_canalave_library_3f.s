#include "macros/scrcmd.inc"
#include "res/text/bank/canalave_library_3f.h"
#include "res/text/bank/menu_entries.h"
#include "res/field/events/events_canalave_library_3f.h"


    ScriptEntry CanalaveLibrary3F_OnTransition
    ScriptEntry CanalaveLibrary3F_OnFrameExplosion
    ScriptEntry CanalaveLibrary3F_ScientistF
    ScriptEntry CanalaveLibrary3F_Youngster
    ScriptEntry CanalaveLibrary3F_SinnohMyth
    ScriptEntry CanalaveLibrary3F_SinnohRegionsMythology
    ScriptEntry CanalaveLibrary3F_SinnohsMyth
    ScriptEntry CanalaveLibrary3F_VeilstonesMyth
    ScriptEntry CanalaveLibrary3F_TheOriginalStory
    ScriptEntry CanalaveLibrary3F_HorrificMyth
    ScriptEntry CanalaveLibrary3F_SinnohFolkStories
    ScriptEntry CanalaveLibrary3F_Sign
    ScriptEntryEnd

CanalaveLibrary3F_OnTransition:
    GetPlayerGender VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, GENDER_MALE, CanalaveLibrary3F_SetCounterpartGraphicsDawn
    GoToIfEq VAR_MAP_LOCAL_0, GENDER_FEMALE, CanalaveLibrary3F_SetCounterpartGraphicsLucas
    End

CanalaveLibrary3F_SetCounterpartGraphicsDawn:
    SetVar VAR_OBJ_GFX_ID_0, OBJ_EVENT_GFX_PLAYER_F
    End

CanalaveLibrary3F_SetCounterpartGraphicsLucas:
    SetVar VAR_OBJ_GFX_ID_0, OBJ_EVENT_GFX_PLAYER_M
    End

CanalaveLibrary3F_OnFrameExplosion:
    LockAll
    BufferRivalName 0
    BufferPlayerName 1
    Message CanalaveLibrary3F_Text_OverHere
    CloseMessage
    ApplyMovement LOCALID_RIVAL, CanalaveLibrary3F_Movement_RivalTakePlayerToTable
    ApplyMovement LOCALID_PLAYER, CanalaveLibrary3F_Movement_PlayerFollowRivalToTable
    WaitMovement
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    AddFreeCamera VAR_0x8004, VAR_0x8005
    ApplyFreeCameraMovement CanalaveLibrary3F_Movement_CameraMoveEast
    WaitMovement
    WaitTime 30, VAR_RESULT
    BufferRivalName 0
    BufferPlayerName 1
    Message CanalaveLibrary3F_Text_IllBeOuttahere
    CloseMessage
    ApplyMovement LOCALID_RIVAL, CanalaveLibrary3F_Movement_RivalWalkNorthOnSpotSouth
    WaitMovement
    BufferPlayerName 0
    Message CanalaveLibrary3F_Text_Ellipses
    BufferRivalName 0
    Message CanalaveLibrary3F_Text_OKIGetIt
    CloseMessage
    ApplyMovement LOCALID_RIVAL, CanalaveLibrary3F_Movement_RivalWalkSouth
    WaitMovement
    WaitTime 10, VAR_RESULT
    BufferPlayerName 0
    Message CanalaveLibrary3F_Text_EveryonesHereFinally
    CloseMessage
    ApplyMovement LOCALID_PROF_ROWAN, CanalaveLibrary3F_Movement_ProfRowanWalkEastOnSpotSouth
    WaitMovement
    Message CanalaveLibrary3F_Text_MoreIStudyMoreMysteries
    CloseMessage
    ApplyMovement LOCALID_PROF_ROWAN, CanalaveLibrary3F_Movement_ProfRowanWalkWestOnSpotNorth
    WaitMovement
    Message CanalaveLibrary3F_Text_HelpMeFindLakePokemon
    BufferRivalName 0
    Message CanalaveLibrary3F_Text_IDidntGetPokedex
    Message CanalaveLibrary3F_Text_BoltedFromLab
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_MALE, CanalaveLibrary3F_DawnCountOnMe
    GoTo CanalaveLibrary3F_LucasYouBet
    End

CanalaveLibrary3F_DawnCountOnMe:
    BufferPlayerName 0
    Message CanalaveLibrary3F_Text_DawnCountOnMe
    GoTo CanalaveLibrary3F_InvestigateLakesIndividually
    End

CanalaveLibrary3F_LucasYouBet:
    BufferPlayerName 0
    Message CanalaveLibrary3F_Text_LucasYouBet
    GoTo CanalaveLibrary3F_InvestigateLakesIndividually
    End

CanalaveLibrary3F_InvestigateLakesIndividually:
    Message CanalaveLibrary3F_Text_InvestigateLakesIndividually
    CloseMessage
    ApplyMovement LOCALID_PROF_ROWAN, CanalaveLibrary3F_Movement_ProfRowanWalkOnSpotWest
    ApplyMovement LOCALID_COUNTERPART, CanalaveLibrary3F_Movement_CounterpartWalkOnSpotEast
    WaitMovement
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_MALE, CanalaveLibrary3F_DawnToLakeVerity
    GoTo CanalaveLibrary3F_LucasToLakeVerity
    End

CanalaveLibrary3F_DawnToLakeVerity:
    Message CanalaveLibrary3F_Text_DawnToLakeVerity
    BufferCounterpartName 0
    Message CanalaveLibrary3F_Text_DawnWillDo
    GoTo CanalaveLibrary3F_Explosion
    End

CanalaveLibrary3F_LucasToLakeVerity:
    Message CanalaveLibrary3F_Text_LucasToLakeVerity
    BufferCounterpartName 0
    Message CanalaveLibrary3F_Text_LucasYesSir
    GoTo CanalaveLibrary3F_Explosion
    End

CanalaveLibrary3F_Explosion:
    CloseMessage
    ApplyMovement LOCALID_PROF_ROWAN, CanalaveLibrary3F_Movement_ProfRowanWalkOnSpotNorth
    ApplyMovement LOCALID_COUNTERPART, CanalaveLibrary3F_Movement_CounterpartWalkOnSpotNorth
    WaitMovement
    BufferRivalName 0
    Message CanalaveLibrary3F_Text_RivalToLakeAcuity
    CloseMessage
    ApplyMovement LOCALID_RIVAL, CanalaveLibrary3F_Movement_RivalWalkOnSpotEast
    WaitMovement
    Message CanalaveLibrary3F_Text_YeahOfCourse
    CloseMessage
    ApplyMovement LOCALID_RIVAL, CanalaveLibrary3F_Movement_RivalWalkOnSpotSouth
    WaitMovement
    BufferPlayerName 0
    Message CanalaveLibrary3F_Text_ThatLeavesLakeValor
    WaitSE SEQ_SE_CONFIRM
    MessageInstant CanalaveLibrary3F_Text_BigExplosion
    ScrCmd_29F 1
    Message CanalaveLibrary3F_Text_AreYouUnharmed
    BufferRivalName 0
    Message CanalaveLibrary3F_Text_WhatWasThatAbout
    CloseMessage
    ApplyMovement LOCALID_RIVAL, CanalaveLibrary3F_Movement_RivalWalkToTV
    ApplyMovement LOCALID_PLAYER, CanalaveLibrary3F_Movement_PlayerFaceTV
    WaitMovement
    FadeScreenOut
    WaitFadeScreen
    RestoreCamera
    StartLibraryTV
    ReturnToField
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    AddFreeCamera VAR_0x8004, VAR_0x8005
    ApplyFreeCameraMovement CanalaveLibrary3F_Movement_CameraMoveEast
    WaitMovement
    FadeScreenIn
    WaitFadeScreen
    Message CanalaveLibrary3F_Text_NewsExplosion
    CloseMessage
    WaitTime 15, VAR_RESULT
    ApplyMovement LOCALID_RIVAL, CanalaveLibrary3F_Movement_RivalWalkOnSpotSouth2
    WaitMovement
    BufferRivalName 0
    Message CanalaveLibrary3F_Text_TheySaidExplosion
    ApplyMovement LOCALID_PLAYER, CanalaveLibrary3F_Movement_PlayerWalkOnSpotSouth
    WaitMovement
    Message CanalaveLibrary3F_Text_LetsGetOutside
    CloseMessage
    ApplyMovement LOCALID_COUNTERPART, CanalaveLibrary3F_Movement_CounterpartLeave
    ApplyMovement LOCALID_RIVAL, CanalaveLibrary3F_Movement_RivalLeave
    ApplyMovement LOCALID_PROF_ROWAN, CanalaveLibrary3F_Movement_ProfRowanWalkToStairs
    ApplyFreeCameraMovement CanalaveLibrary3F_Movement_CameraMoveWest
    WaitMovement
    RemoveObject LOCALID_RIVAL
    RemoveObject LOCALID_COUNTERPART
    RestoreCamera
    ApplyMovement LOCALID_PLAYER, CanalaveLibrary3F_Movement_PlayerWalkOnSpotNorth
    WaitMovement
    Message CanalaveLibrary3F_Text_LeaveNowToo
    CloseMessage
    StopSE SEQ_SE_CONFIRM
    ApplyMovement LOCALID_PROF_ROWAN, CanalaveLibrary3F_Movement_ProfRowanLeave
    WaitMovement
    PlaySE SEQ_SE_DP_KAIDAN2
    RemoveObject LOCALID_PROF_ROWAN
    StopSE SEQ_SE_DP_KAIDAN2
    SetVar VAR_CANALAVE_STATE, 4
    SetVar VAR_CANALAVE_LIBRARY_STATE, 2
    SetFlag FLAG_LAKE_VALOR_EXPLODED
    SetFlag FLAG_HIDE_VALOR_LAKEFRONT_CAMERAMEN
    ClearFlag FLAG_HIDE_CANALAVE_CITY_PROF_ROWAN
    ClearFlag FLAG_HIDE_CANALAVE_CITY_COUNTERPART
    ClearFlag FLAG_HIDE_CANALAVE_CITY_RIVAL_BRIDGE
    ReleaseAll
    End

    .balign 4, 0
CanalaveLibrary3F_Movement_PlayerWalkOnSpotNorth:
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
CanalaveLibrary3F_Movement_ProfRowanWalkEastOnSpotSouth:
    WalkSlowEast
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
CanalaveLibrary3F_Movement_ProfRowanWalkWestOnSpotNorth:
    WalkNormalWest
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
CanalaveLibrary3F_Movement_ProfRowanWalkOnSpotWest:
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
CanalaveLibrary3F_Movement_ProfRowanWalkOnSpotNorth:
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
CanalaveLibrary3F_Movement_ProfRowanWalkToStairs:
    WalkNormalEast
    WalkNormalNorth 4
    WalkNormalWest 5
    WalkNormalNorth 3
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
CanalaveLibrary3F_Movement_ProfRowanLeave:
    WalkNormalEast
    EndMovement

    .balign 4, 0
CanalaveLibrary3F_Movement_PlayerFollowRivalToTable:
    Delay8 3
    WalkOnSpotNormalSouth
    WalkNormalSouth 2
    WalkNormalEast
    WalkNormalSouth
    WalkNormalEast 2
    WalkNormalSouth
    EndMovement

    .balign 4, 0
CanalaveLibrary3F_Movement_PlayerFaceTV:
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
CanalaveLibrary3F_Movement_PlayerWalkOnSpotSouth:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
CanalaveLibrary3F_Movement_CameraMoveEast:
    WalkSlowEast 3
    EndMovement

    .balign 4, 0
CanalaveLibrary3F_Movement_CameraMoveWest:
    WalkSlowWest 3
    EndMovement

    .balign 4, 0
CanalaveLibrary3F_Movement_RivalWalkNorthOnSpotSouth:
    WalkFastNorth
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
CanalaveLibrary3F_Movement_RivalWalkSouth:
    WalkNormalSouth
    EndMovement

    .balign 4, 0
CanalaveLibrary3F_Movement_RivalTakePlayerToTable:
    WalkNormalSouth
    WalkNormalEast 2
    WalkOnSpotNormalNorth
    WalkNormalSouth
    WalkNormalEast
    WalkNormalSouth
    WalkNormalEast 3
    WalkNormalSouth
    EndMovement

    .balign 4, 0
CanalaveLibrary3F_Movement_RivalLeave:
    WalkFastWest 4
    WalkFastNorth 3
    WalkFastEast
    SetInvisible
    EndMovement

    .balign 4, 0
CanalaveLibrary3F_Movement_RivalWalkOnSpotEast:
    WalkOnSpotFastEast
    EndMovement

    .balign 4, 0
CanalaveLibrary3F_Movement_RivalWalkOnSpotSouth:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
CanalaveLibrary3F_Movement_RivalWalkToTV:
    WalkFastNorth
    EndMovement

    .balign 4, 0
CanalaveLibrary3F_Movement_RivalWalkOnSpotSouth2:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
CanalaveLibrary3F_Movement_CounterpartLeave:
    WalkNormalWest
    WalkNormalNorth 5
    WalkNormalWest 2
    WalkNormalNorth 2
    WalkNormalEast
    SetInvisible
    EndMovement

    .balign 4, 0
CanalaveLibrary3F_Movement_CounterpartWalkOnSpotEast:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
CanalaveLibrary3F_Movement_CounterpartWalkOnSpotNorth:
    WalkOnSpotNormalNorth
    EndMovement

CanalaveLibrary3F_ScientistF:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_LAKE_VALOR_EXPLODED, CanalaveLibrary3F_WasThatAnEarthquake
    Message CanalaveLibrary3F_Text_BooksContainMemories
    WaitButton
    CloseMessage
    ReleaseAll
    End

CanalaveLibrary3F_WasThatAnEarthquake:
    Message CanalaveLibrary3F_Text_WasThatAnEarthquake
    WaitButton
    CloseMessage
    ReleaseAll
    End

CanalaveLibrary3F_Youngster:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_LAKE_VALOR_EXPLODED, CanalaveLibrary3F_ImFeelingWobbly
    Message CanalaveLibrary3F_Text_BookAlwaysCheckedOut
    WaitButton
    CloseMessage
    ReleaseAll
    End

CanalaveLibrary3F_ImFeelingWobbly:
    Message CanalaveLibrary3F_Text_ImFeelingWobbly
    WaitButton
    CloseMessage
    ReleaseAll
    End

CanalaveLibrary3F_SinnohMyth:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    Message CanalaveLibrary3F_Text_AskReadSinnohMyth
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, CanalaveLibrary3F_ReadSinnohMyth
    GoToIfEq VAR_RESULT, MENU_NO, CanalaveLibrary3F_PutSinnohMythBack
    End

CanalaveLibrary3F_PutSinnohMythBack:
    BufferPlayerName 0
    Message CanalaveLibrary3F_Text_PutSinnohMythBack
    WaitButton
    CloseMessage
    ReleaseAll
    End

CanalaveLibrary3F_ReadSinnohMyth:
    Message CanalaveLibrary3F_Text_SinnohMyth
    WaitButton
    CloseMessage
    ReleaseAll
    End

CanalaveLibrary3F_SinnohRegionsMythology:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    Message CanalaveLibrary3F_Text_AskReadSinnohRegionsMythology
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, CanalaveLibrary3F_ReadSinnohRegionsMythology
    GoToIfEq VAR_RESULT, MENU_NO, CanalaveLibrary3F_PutSinnohRegionsMythologyBack
    End

CanalaveLibrary3F_PutSinnohRegionsMythologyBack:
    BufferPlayerName 0
    Message CanalaveLibrary3F_Text_PutSinnohRegionsMythologyBack
    WaitButton
    CloseMessage
    ReleaseAll
    End

CanalaveLibrary3F_ReadSinnohRegionsMythology:
    Message CanalaveLibrary3F_Text_SinnohRegionsMythology
    WaitButton
    CloseMessage
    ReleaseAll
    End

CanalaveLibrary3F_SinnohsMyth:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    Message CanalaveLibrary3F_Text_AskReadSinnohsMyth
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, CanalaveLibrary3F_ReadSinnohsMyth
    GoToIfEq VAR_RESULT, MENU_NO, CanalaveLibrary3F_PutSinnohsMythBack
    End

CanalaveLibrary3F_PutSinnohsMythBack:
    BufferPlayerName 0
    Message CanalaveLibrary3F_Text_PutSinnohsMythBack
    WaitButton
    CloseMessage
    ReleaseAll
    End

CanalaveLibrary3F_ReadSinnohsMyth:
    Message CanalaveLibrary3F_Text_SinnohsMyth
    WaitButton
    CloseMessage
    ReleaseAll
    End

CanalaveLibrary3F_VeilstonesMyth:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    Message CanalaveLibrary3F_Text_AskReadVeilstonesMyth
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, CanalaveLibrary3F_ReadVeilstonesMyth
    GoToIfEq VAR_RESULT, MENU_NO, CanalaveLibrary3F_PutVeilstonesMythBack
    End

CanalaveLibrary3F_PutVeilstonesMythBack:
    BufferPlayerName 0
    Message CanalaveLibrary3F_Text_PutVeilstonesMythBack
    WaitButton
    CloseMessage
    ReleaseAll
    End

CanalaveLibrary3F_ReadVeilstonesMyth:
    Message CanalaveLibrary3F_Text_VeilstonesMyth1
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, CanalaveLibrary3F_PutVeilstonesMythBack
    Message CanalaveLibrary3F_Text_VeilstonesMyth2
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, CanalaveLibrary3F_PutVeilstonesMythBack
    Message CanalaveLibrary3F_Text_VeilstonesMyth3
    WaitButton
    CloseMessage
    ReleaseAll
    End

CanalaveLibrary3F_TheOriginalStory:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    Message CanalaveLibrary3F_Text_AskReadTheOriginalStory
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, CanalaveLibrary3F_ReadTheOriginalStory
    GoToIfEq VAR_RESULT, MENU_NO, CanalaveLibrary3F_PutTheOriginalStoryBack
    End

CanalaveLibrary3F_PutTheOriginalStoryBack:
    BufferPlayerName 0
    Message CanalaveLibrary3F_Text_PutTheOriginalStoryBack
    WaitButton
    CloseMessage
    ReleaseAll
    End

CanalaveLibrary3F_ReadTheOriginalStory:
    Message CanalaveLibrary3F_Text_TheOriginalStory1
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, CanalaveLibrary3F_PutTheOriginalStoryBack
    Message CanalaveLibrary3F_Text_TheOriginalStory2
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, CanalaveLibrary3F_PutTheOriginalStoryBack
    Message CanalaveLibrary3F_Text_TheOriginalStory3
    WaitButton
    CloseMessage
    ReleaseAll
    End

CanalaveLibrary3F_HorrificMyth:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    Message CanalaveLibrary3F_Text_AskReadHorrificMyth
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, CanalaveLibrary3F_ReadHorrificMyth
    GoToIfEq VAR_RESULT, MENU_NO, CanalaveLibrary3F_PutHorrificMythBack
    End

CanalaveLibrary3F_PutHorrificMythBack:
    BufferPlayerName 0
    Message CanalaveLibrary3F_Text_PutHorrificMythBack
    WaitButton
    CloseMessage
    ReleaseAll
    End

CanalaveLibrary3F_ReadHorrificMyth:
    Message CanalaveLibrary3F_Text_HorrificMyth
    WaitButton
    CloseMessage
    ReleaseAll
    End

CanalaveLibrary3F_SinnohFolkStories:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    Message CanalaveLibrary3F_Text_SinnohFolkStories
    Message CanalaveLibrary3F_Text_ReadWhichStory
    InitGlobalTextMenu 1, 1, 0, VAR_RESULT
    AddMenuEntry MenuEntries_Text_SinnohFolkStory_Part1, 0
    AddMenuEntry MenuEntries_Text_SinnohFolkStory_Part2, 1
    AddMenuEntry MenuEntries_Text_SinnohFolkStory_Part3, 2
    AddMenuEntry MenuEntries_Text_SinnohFolkStory_Exit, 3
    ShowMenu
    GoToIfEq VAR_RESULT, 0, CanalaveLibrary3F_SinnohFolkStory1
    GoToIfEq VAR_RESULT, 1, CanalaveLibrary3F_SinnohFolkStory2
    GoToIfEq VAR_RESULT, 2, CanalaveLibrary3F_SinnohFolkStory3
    GoTo CanalaveLibrary3F_PutSinnohFolkStoriesBack
    End

CanalaveLibrary3F_SinnohFolkStory1:
    Message CanalaveLibrary3F_Text_SinnohFolkStory1
    WaitButton
    CloseMessage
    ReleaseAll
    End

CanalaveLibrary3F_SinnohFolkStory2:
    Message CanalaveLibrary3F_Text_SinnohFolkStory2
    WaitButton
    CloseMessage
    ReleaseAll
    End

CanalaveLibrary3F_SinnohFolkStory3:
    Message CanalaveLibrary3F_Text_SinnohFolkStory3
    WaitButton
    CloseMessage
    ReleaseAll
    End

CanalaveLibrary3F_PutSinnohFolkStoriesBack:
    BufferPlayerName 0
    Message CanalaveLibrary3F_Text_PutSinnohFolkStoriesBack
    WaitButton
    CloseMessage
    ReleaseAll
    End

CanalaveLibrary3F_Sign:
    EventMessage CanalaveLibrary3F_Text_ManyMythsAndLegends
    End

    .balign 4, 0
