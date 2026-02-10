#include "macros/scrcmd.inc"
#include "res/text/bank/route_201.h"
#include "res/field/events/events_route_201.h"

    ScriptEntry Route201_OnTransition
    ScriptEntry Route201_TriggerChooseStarterScene
    ScriptEntry Route201_TriggerFollowingRivalStopPlayerSouth
    ScriptEntry Route201_TriggerPickAPokemon
    ScriptEntry _0B24
    ScriptEntry Route201_ArrowSignpostTwinleafTown
    ScriptEntry Route201_ArrowSignpostSandgemTown
    ScriptEntry Route201_TrainerTipsSignpost
    ScriptEntry Route201_BreederM
    ScriptEntry Route201_Cashier
    ScriptEntry Route201_SchoolKidM
    ScriptEntry Route201_Lass
    ScriptEntry Route201_Briefcase
    ScriptEntry Route201_TriggerFollowingRivalStopPlayerEast
    ScriptEntry Route201_ProfRowan
    ScriptEntry Route201_TriggerLetsCatchThatLegendaryPokemon
    ScriptEntryEnd

Route201_OnTransition:
    GetPlayerGender VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, GENDER_MALE, Route201_SetCounterpartGraphicsDawn
    GoToIfEq VAR_MAP_LOCAL_0, GENDER_FEMALE, Route201_SetCounterpartGraphicsLucas
    End

Route201_SetCounterpartGraphicsDawn:
    SetVar VAR_OBJ_GFX_ID_0, OBJ_EVENT_GFX_PLAYER_F
    End

Route201_SetCounterpartGraphicsLucas:
    SetVar VAR_OBJ_GFX_ID_0, OBJ_EVENT_GFX_PLAYER_M
    End

Route201_TriggerChooseStarterScene:
    LockAll
    ApplyMovement LOCALID_RIVAL, Route201_Movement_RivalNoticePlayer
    WaitMovement
    Message Route201_Text_TooSlow
    CloseMessage
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    GoToIfEq VAR_0x8004, 110, Route201_LetsGetMovingToProfRowansLabX110
    GoToIfEq VAR_0x8004, 111, Route201_LetsGetMovingToProfRowansLabX111
    GoToIfEq VAR_0x8004, 112, Route201_LetsGetMovingToProfRowansLabX112
    GoToIfEq VAR_0x8004, 113, Route201_LetsGetMovingToProfRowansLabX113
    End

Route201_LetsGetMovingToProfRowansLabX110:
    ApplyMovement LOCALID_RIVAL, Route201_Movement_RivalRunToPlayerX110
    WaitMovement
    BufferRivalName 0
    Message Route201_Text_LetsGetMovingToProfRowansLab
    CloseMessage
    ApplyMovement LOCALID_RIVAL, Route201_Movement_RivalWalkToGrassX110
    ApplyMovement LOCALID_PLAYER, Route201_Movement_PlayerWalkToGrassX110
    WaitMovement
    GoTo Route201_GoIntoTallGrass
    End

Route201_LetsGetMovingToProfRowansLabX111:
    ApplyMovement LOCALID_RIVAL, Route201_Movement_RivalRunToPlayerX111
    WaitMovement
    BufferRivalName 0
    Message Route201_Text_LetsGetMovingToProfRowansLab
    CloseMessage
    ApplyMovement LOCALID_RIVAL, Route201_Movement_RivalWalkToGrassX111
    ApplyMovement LOCALID_PLAYER, Route201_Movement_PlayerWalkToGrassX111
    WaitMovement
    GoTo Route201_GoIntoTallGrass
    End

Route201_LetsGetMovingToProfRowansLabX112:
    ApplyMovement LOCALID_RIVAL, Route201_Movement_RivalRunToPlayerX112
    WaitMovement
    BufferRivalName 0
    Message Route201_Text_LetsGetMovingToProfRowansLab
    CloseMessage
    ApplyMovement LOCALID_RIVAL, Route201_Movement_RivalWalkToGrassX112
    ApplyMovement LOCALID_PLAYER, Route201_Movement_PlayerWalkToGrassX112
    WaitMovement
    GoTo Route201_GoIntoTallGrass
    End

Route201_LetsGetMovingToProfRowansLabX113:
    ApplyMovement LOCALID_RIVAL, Route201_Movement_RivalRunToPlayerX113
    WaitMovement
    BufferRivalName 0
    Message Route201_Text_LetsGetMovingToProfRowansLab
    CloseMessage
    ApplyMovement LOCALID_RIVAL, Route201_Movement_RivalWalkToGrassX113
    ApplyMovement LOCALID_PLAYER, Route201_Movement_PlayerWalkToGrassX113
    WaitMovement
    GoTo Route201_GoIntoTallGrass
    End

Route201_GoIntoTallGrass:
    BufferRivalName 0
    Message Route201_Text_TrustMeIveGotAnIdea
    CloseMessage
    ApplyMovement LOCALID_RIVAL, Route201_Movement_RivalWalkToPlayer
    ApplyMovement LOCALID_PLAYER, Route201_Movement_PlayerWatchRivalWalkUp
    WaitMovement
    Message Route201_Text_ScootOverBeforeWildPokemonCanAppear
    CloseMessage
    ApplyMovement LOCALID_RIVAL, Route201_Movement_RivalWalkBackToRun
    ApplyMovement LOCALID_PLAYER, Route201_Movement_PlayerWatchRivalWalkBackToRun
    WaitMovement
    Message Route201_Text_HereGoes
    CloseMessage
    WaitTime 15, VAR_RESULT
    ApplyMovement LOCALID_RIVAL, Route201_Movement_RivalRunTowardsGrass
    ApplyMovement LOCALID_PLAYER, Route201_Movement_PlayerWatchRivalRunTowardsGrass
    WaitMovement
    Message Route201_Text_HoldIt
    CloseMessage
    ApplyMovement LOCALID_PLAYER, Route201_Movement_NoticeProfRowan
    ApplyMovement LOCALID_RIVAL, Route201_Movement_NoticeProfRowan
    WaitMovement
    PlayMusic SEQ_OPENING2
    ClearFlag FLAG_HIDE_ROUTE_201_PROF_ROWAN
    AddObject LOCALID_PROF_ROWAN
    LockObject LOCALID_PROF_ROWAN
    ApplyMovement LOCALID_PROF_ROWAN, Route201_Movement_ProfRowanEnter
    WaitMovement
    Message Route201_Text_YouTwoDontHaveAnyPokemon
    BufferRivalName 0
    Message Route201_Text_RivalEllipsis
    Message Route201_Text_ProfessorEllipsis
    ApplyMovement LOCALID_RIVAL, Route201_Movement_RivalFacePlayerThisIsProfRowan
    WaitMovement
    BufferRivalName 0
    BufferPlayerName 1
    Message Route201_Text_ThisIsProfRowanIsntIt
    CloseMessage
    ApplyMovement LOCALID_RIVAL, Route201_Movement_RivalFaceProfRowanThisIsProfRowan
    ApplyMovement LOCALID_PROF_ROWAN, Route201_Movement_ProfRowanWalkAway
    WaitMovement
    Message Route201_Text_HmmWhatToDo
    CloseMessage
    WaitTime 20, VAR_RESULT
    ApplyMovement LOCALID_PROF_ROWAN, Route201_Movement_ProfRowanWalkBack
    WaitMovement
    Message Route201_Text_YouTrulyLovePokemonDoYou
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, Route201_WeLovePokemon
    GoToIfEq VAR_RESULT, MENU_NO, Route201_WeDontLovePokemon
    End

Route201_WeDontLovePokemon:
    ApplyMovement LOCALID_RIVAL, Route201_Movement_RivalFacePlayerDontLovePokemon
    WaitMovement
    BufferRivalName 0
    Message Route201_Text_YoureNotMakingAnySense
    CloseMessage
    ApplyMovement LOCALID_RIVAL, Route201_Movement_RivalWalkOnSpotNormalLeft
    WaitMovement
    Message Route201_Text_IDidntQuiteCatchThat
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, Route201_WeLovePokemon
    GoToIfEq VAR_RESULT, MENU_NO, Route201_WeDontLovePokemon
    End

Route201_WeLovePokemon:
    ApplyMovement LOCALID_RIVAL, Route201_Movement_RivalWalkOnSpotNormalLeft
    WaitMovement
    BufferRivalName 0
    Message Route201_Text_ILovePokemonToo
    Message Route201_Text_IWillAskOnceAgain
    GoTo Route201_TheAnswerWillNeverChangeRight
    End

Route201_TheAnswerWillNeverChangeRight:
    ApplyMovement LOCALID_RIVAL, Route201_Movement_RivalWalkOnSpotFastLeft
    WaitMovement
    BufferRivalName 0
    Message Route201_Text_TheAnswerWillNeverChange
    ApplyMovement LOCALID_RIVAL, Route201_Movement_RivalFacePlayerRightPlayer
    WaitMovement
    ApplyMovement LOCALID_PLAYER, Route201_Movement_PlayerFaceRivalRightPlayer
    WaitMovement
    BufferPlayerName 1
    Message Route201_Text_RightPlayer
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, Route201_WeStillLovePokemon
    GoToIfEq VAR_RESULT, MENU_NO, Route201_ThatJokesGettingOld
    End

Route201_ThatJokesGettingOld:
    BufferRivalName 0
    Message Route201_Text_ThatJokesGettingOld
    GoTo Route201_TheAnswerWillNeverChangeRight
    End

Route201_WeStillLovePokemon:
    Message Route201_Text_ItWorriesMeWhatPeopleWouldDo
    ApplyMovement LOCALID_RIVAL, Route201_Movement_RivalWalkOnSpotFastLeft
    ApplyMovement LOCALID_PLAYER, Route201_Movement_PlayerFaceProfRowanWest
    WaitMovement
    BufferRivalName 0
    Message Route201_Text_GiveAPokemonToMyFriendHere
    Message Route201_Text_IWillEntrustYouWithPokemon
    CloseMessage
    ApplyMovement LOCALID_PROF_ROWAN, Route201_Movement_ProfRowanLookAround
    WaitMovement
    WaitTime 25, VAR_RESULT
    ClearFlag FLAG_HIDE_ROUTE_201_COUNTERPART
    AddObject LOCALID_COUNTERPART
    LockObject LOCALID_COUNTERPART
    Common_SetCounterpartBGM
    ApplyMovement LOCALID_COUNTERPART, Route201_Movement_CounterpartEnter
    WaitMovement
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_MALE, Route201_DawnBringBriefcase
    GoTo Route201_LucasBringBriefcase
    End

Route201_DawnBringBriefcase:
    Message Route201_Text_DawnYouLeftYourBriefcaseAtTheLake
    CloseMessage
    ApplyMovement LOCALID_PROF_ROWAN, Route201_Movement_ProfRowanFaceCounterpart
    WaitMovement
    ClearFlag FLAG_HIDE_ROUTE_201_BRIEFCASE
    AddObject LOCALID_BRIEFCASE
    WaitTime 15, VAR_RESULT
    Message Route201_Text_OhIsSomethingWrongHere
    Message Route201_Text_ThereItIsNiceWorkDawn
    ApplyMovement LOCALID_COUNTERPART, Route201_Movement_CounterpartWalkOnSpotEast
    WaitMovement
    Message Route201_Text_DawnThosePokemonAreHardToReplace
    GoTo Route201_GoOnChoosePokemon
    End

Route201_LucasBringBriefcase:
    Message Route201_Text_LucasYouLeftYourBriefcaseAtTheLake
    CloseMessage
    ApplyMovement LOCALID_PROF_ROWAN, Route201_Movement_ProfRowanFaceCounterpart
    WaitMovement
    ClearFlag FLAG_HIDE_ROUTE_201_BRIEFCASE
    AddObject LOCALID_BRIEFCASE
    WaitTime 15, VAR_RESULT
    Message Route201_Text_IsSomethingWrongHere
    Message Route201_Text_ThereItIsNiceWorkLucas
    ApplyMovement LOCALID_COUNTERPART, Route201_Movement_CounterpartWalkOnSpotEast
    WaitMovement
    Message Route201_Text_LucasThosePokemonAreCrucial
    GoTo Route201_GoOnChoosePokemon
    End

Route201_GoOnChoosePokemon:
    Message Route201_Text_PeopleShouldMeetPokemon
    CloseMessage
    ApplyMovement LOCALID_PROF_ROWAN, Route201_Movement_ProfRowanFacePlayerEast
    WaitMovement
    WaitTime 15, VAR_RESULT
    Message Route201_Text_GoOnChooseAPokemon
    ApplyMovement LOCALID_RIVAL, Route201_Movement_RivalFacePlayerICantBelieveIt
    WaitMovement
    BufferRivalName 0
    Message Route201_Text_ICantBelieveIt
    ApplyMovement LOCALID_RIVAL, Route201_Movement_RivalWalkOnSpotSouth
    WaitMovement
    BufferPlayerName 1
    Message Route201_Text_YouCanChooseFirst
    WaitABXPadPress
    CloseMessage
    Common_FadeToDefaultMusic
    SetObjectEventMovementType LOCALID_RIVAL, MOVEMENT_TYPE_LOOK_WEST
    SetVar VAR_FOLLOWER_RIVAL_STATE, 1
    ReleaseAll
    End

Route201_Briefcase:
    LockAll
    FadeScreenOut
    WaitFadeScreen
    SetFlag FLAG_HIDE_ROUTE_201_BRIEFCASE
    RemoveObject LOCALID_BRIEFCASE
    StartChooseStarterScene
    SaveChosenStarter
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    GetPlayerStarterSpecies VAR_0x8000
    GivePokemon VAR_0x8000, 5, ITEM_NONE, VAR_RESULT
    ApplyMovement LOCALID_PROF_ROWAN, Route201_Movement_ProfRowanFacePlayerSouth
    ApplyMovement LOCALID_RIVAL, Route201_Movement_RivalFaceWest
    ApplyMovement LOCALID_PLAYER, Route201_Movement_PlayerFaceProfRowanNorth
    WaitMovement
    BufferRivalName 0
    BufferRivalStarterSpeciesName 2
    Message Route201_Text_ImPickingThisStarter
    Message Route201_Text_IHopeYoullDoWellTogether
    Message Route201_Text_ComeSeeMeInSandgemTown
    CloseMessage
    ApplyMovement LOCALID_PROF_ROWAN, Route201_Movement_ProfRowanLeave
    ApplyMovement LOCALID_RIVAL, Route201_Movement_RivalMoveAwayForProfRowan
    ApplyMovement LOCALID_PLAYER, Route201_Movement_PlayerWatchProfRowanLeave
    WaitMovement
    SetFlag FLAG_HIDE_ROUTE_201_PROF_ROWAN
    RemoveObject LOCALID_PROF_ROWAN
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_MALE, Route201_DawnLeave
    GoTo Route201_LucasLeave
    End

Route201_DawnLeave:
    Message Route201_Text_DawnWaitForMe
    CloseMessage
    ApplyMovement LOCALID_COUNTERPART, Route201_Movement_CounterpartStartToLeave
    ApplyMovement LOCALID_PLAYER, Route201_Movement_WatchCounterpartStartToLeave
    WaitMovement
    Message Route201_Text_DawnPleaseLetMePass
    CloseMessage
    GoTo Route201_CounterpartLeave
    End

Route201_LucasLeave:
    Message Route201_Text_LucasWaitForMe
    CloseMessage
    ApplyMovement LOCALID_COUNTERPART, Route201_Movement_CounterpartStartToLeave
    ApplyMovement LOCALID_PLAYER, Route201_Movement_WatchCounterpartStartToLeave
    WaitMovement
    Message Route201_Text_LucasSorryFolks
    CloseMessage
    GoTo Route201_CounterpartLeave
    End

Route201_CounterpartLeave:
    ApplyMovement LOCALID_PLAYER, Route201_Movement_WatchCounterpartLeave
    ApplyMovement LOCALID_COUNTERPART, Route201_Movement_CounterpartLeave
    WaitMovement
    SetFlag FLAG_HIDE_ROUTE_201_COUNTERPART
    RemoveObject LOCALID_COUNTERPART
    BufferRivalName 0
    Message Route201_Text_ProfRowansReallyNice
    CloseMessage
    WaitTime 40, VAR_RESULT
    ApplyMovement LOCALID_RIVAL, Route201_Movement_RivalRunToPlayerForBattle
    ApplyMovement LOCALID_PLAYER, Route201_Movement_PlayerFaceRivalForBattle
    WaitMovement
    GoTo Route201_AskUpForABattle
    End

Route201_AskUpForABattle:
    BufferPlayerName 1
    Message Route201_Text_OnlyOneThingToDo
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, Route201_StartRivalBattle
    GoToIfEq VAR_RESULT, MENU_NO, Route201_DontBeThatWay
    End

Route201_StartRivalBattle:
    BufferRivalName 0
    BufferPlayerName 1
    Message Route201_Text_IChallengeYouToABattle
    CloseMessage
    SetMovementType LOCALID_RIVAL, MOVEMENT_TYPE_LOOK_SOUTH
    GetPlayerStarterSpecies VAR_RESULT
    GoToIfEq VAR_RESULT, SPECIES_TURTWIG, Route201_StartFirstBattleTurtwig
    GoToIfEq VAR_RESULT, SPECIES_CHIMCHAR, Route201_StartFirstBattleChimchar
    GoTo Route201_StartFirstBattlePiplup
    End

Route201_StartFirstBattlePiplup:
    StartFirstBattle TRAINER_RIVAL_ROUTE_201_PIPLUP
    GoTo Route201_HandleRivalBattleEnd

Route201_StartFirstBattleTurtwig:
    StartFirstBattle TRAINER_RIVAL_ROUTE_201_TURTWIG
    GoTo Route201_HandleRivalBattleEnd

Route201_StartFirstBattleChimchar:
    StartFirstBattle TRAINER_RIVAL_ROUTE_201_CHIMCHAR
    GoTo Route201_HandleRivalBattleEnd

Route201_HandleRivalBattleEnd:
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, Route201_RivalWonLetsGoHome
    LockObject LOCALID_RIVAL
    BufferRivalName 0
    BufferPlayerName 1
    Message Route201_Text_WhewLetsGoHome
    GoTo Route201_EndChooseStarterSequenceAndWarpHome
    End

Route201_RivalWonLetsGoHome:
    ReturnToField
    LockObject LOCALID_RIVAL
    FadeScreenIn FADE_SCREEN_SPEED_MEDIUM
    WaitFadeScreen
    BufferRivalName 0
    BufferPlayerName 1
    Message Route201_Text_IWonLetsGoHome
    GoTo Route201_EndChooseStarterSequenceAndWarpHome
    End

Route201_EndChooseStarterSequenceAndWarpHome:
    CloseMessage
    SetVar VAR_FOLLOWER_RIVAL_STATE, 2
    SetVar VAR_PLAYER_HOUSE_STATE, 3
    WaitTime 30, VAR_RESULT
    FadeScreenOut FADE_SCREEN_SPEED_MEDIUM
    WaitFadeScreen
    HealParty
    Warp MAP_HEADER_TWINLEAF_TOWN_PLAYER_HOUSE_1F, 0, 2, 6, 0
    FadeScreenIn FADE_SCREEN_SPEED_MEDIUM
    WaitFadeScreen
    ReleaseAll
    End

Route201_DontBeThatWay:
    BufferRivalName 0
    Message Route201_Text_DontBeThatWay
    GoTo Route201_AskUpForABattle
    End

    .balign 4, 0
Route201_Movement_RivalNoticePlayer:
    WalkOnSpotFastSouth
    EmoteExclamationMark
    EndMovement

    .balign 4, 0
Route201_Movement_RivalRunToPlayerX110:
    WalkFastSouth
    WalkFastWest 2
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
Route201_Movement_RivalRunToPlayerX111:
    WalkFastSouth
    WalkFastWest
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
Route201_Movement_RivalRunToPlayerX112:
    WalkFastSouth
    EndMovement

    .balign 4, 0
Route201_Movement_RivalRunToPlayerX113:
    WalkFastSouth
    WalkFastEast
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
Route201_Movement_RivalWalkToGrassX110:
    WalkNormalNorth
    WalkNormalEast 4
    WalkNormalNorth 2
    WalkNormalEast
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
Route201_Movement_RivalWalkToGrassX111:
    WalkNormalNorth
    WalkNormalEast 3
    WalkNormalNorth 2
    WalkNormalEast
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
Route201_Movement_RivalWalkToGrassX112:
    WalkNormalNorth
    WalkNormalEast 2
    WalkNormalNorth 2
    WalkNormalEast
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
Route201_Movement_RivalWalkToGrassX113:
    WalkNormalNorth
    WalkNormalEast
    WalkNormalNorth 2
    WalkNormalEast
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
Route201_Movement_RivalWalkToPlayer:
    WalkNormalWest
    WalkOnSpotNormalSouth
    EndMovement

Route201_UnusedMovement:
    WalkNormalEast
    EndMovement

    .balign 4, 0
Route201_Movement_RivalWalkBackToRun:
    WalkNormalWest 3
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
Route201_Movement_RivalRunTowardsGrass:
    WalkFastEast 3
    EndMovement

    .balign 4, 0
Route201_Movement_NoticeProfRowan:
    EmoteExclamationMark
    Delay16
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
Route201_Movement_RivalFacePlayerThisIsProfRowan:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
Route201_Movement_RivalFaceProfRowanThisIsProfRowan:
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
Route201_Movement_RivalFacePlayerDontLovePokemon:
    WalkOnSpotFastSouth
    EndMovement

    .balign 4, 0
Route201_Movement_RivalWalkOnSpotNormalLeft:
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
Route201_Movement_RivalFaceWest:
    FaceWest
    EndMovement

    .balign 4, 0
Route201_Movement_RivalWalkOnSpotFastLeft:
    WalkOnSpotFastWest
    EndMovement

    .balign 4, 0
Route201_Movement_RivalFacePlayerRightPlayer:
    WalkOnSpotFastSouth
    EndMovement

    .balign 4, 0
Route201_Movement_RivalFacePlayerICantBelieveIt:
    WalkOnSpotFastWest
    EndMovement

    .balign 4, 0
Route201_Movement_RivalWalkOnSpotSouth:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
Route201_Movement_RivalMoveAwayForProfRowan:
    WalkNormalNorth
    WalkOnSpotNormalSouth
    Delay8 2
    WalkOnSpotNormalEast
    EndMovement

Route201_UnusedMovement2:
    Delay8
    WalkOnSpotFastEast
    EndMovement

    .balign 4, 0
Route201_Movement_RivalRunToPlayerForBattle:
    WalkOnSpotNormalSouth
    Delay8 3
    WalkOnSpotFastSouth 8
    WalkFastWest
    WalkFastSouth
    EndMovement

    .balign 4, 0
Route201_Movement_ProfRowanEnter:
    WalkNormalEast 8
    EndMovement

    .balign 4, 0
Route201_Movement_ProfRowanWalkAway:
    WalkNormalWest 3
    EndMovement

    .balign 4, 0
Route201_Movement_ProfRowanWalkBack:
    WalkNormalEast 3
    EndMovement

    .balign 4, 0
Route201_Movement_ProfRowanLookAround:
    WalkOnSpotNormalWest
    Delay8 2
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
Route201_Movement_ProfRowanFaceCounterpart:
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
Route201_Movement_ProfRowanFacePlayerEast:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
Route201_Movement_ProfRowanFacePlayerSouth:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
Route201_Movement_ProfRowanLeave:
    Delay8 2
    Delay4
    WalkNormalEast 9
    EndMovement

    .balign 4, 0
Route201_Movement_PlayerWalkToGrassX110:
    WalkNormalNorth 2
    WalkNormalEast 4
    WalkNormalNorth
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
Route201_Movement_PlayerWalkToGrassX111:
    WalkNormalNorth 2
    WalkNormalEast 3
    WalkNormalNorth
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
Route201_Movement_PlayerWalkToGrassX112:
    WalkNormalNorth 2
    WalkNormalEast 2
    WalkNormalNorth
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
Route201_Movement_PlayerWalkToGrassX113:
    WalkNormalNorth 2
    WalkNormalEast
    WalkNormalNorth
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
Route201_Movement_PlayerWatchRivalWalkUp:
    Delay4
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
Route201_Movement_PlayerWatchRivalWalkBackToRun:
    Delay8
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
Route201_Movement_PlayerWatchRivalRunTowardsGrass:
    Delay8
    WalkOnSpotFastNorth
    EndMovement

    .balign 4, 0
Route201_Movement_PlayerFaceProfRowanNorth:
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
Route201_Movement_PlayerFaceRivalRightPlayer:
    FaceNorth
    EndMovement

    .balign 4, 0
Route201_Movement_PlayerFaceProfRowanWest:
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
Route201_Movement_PlayerWatchProfRowanLeave:
    Delay8
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
Route201_Movement_WatchCounterpartStartToLeave:
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
Route201_Movement_WatchCounterpartLeave:
    Delay8
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
Route201_Movement_PlayerFaceRivalForBattle:
    Delay8
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
Route201_Movement_CounterpartEnter:
    WalkNormalEast 7
    EndMovement

    .balign 4, 0
Route201_Movement_CounterpartWalkOnSpotEast:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
Route201_Movement_CounterpartStartToLeave:
    WalkNormalEast
    EndMovement

    .balign 4, 0
Route201_Movement_CounterpartLeave:
    WalkNormalEast 9
    EndMovement

Route201_TriggerFollowingRivalStopPlayerEast:
    LockAll
    GetPlayerDir VAR_RESULT
    GoToIfEq VAR_RESULT, DIR_EAST, Route201_RivalStopPlayerFacingEast
    GoTo Route201_RivalStopPlayerFacingNorth
    End

Route201_RivalStopPlayerFacingEast:
    ApplyMovement LOCALID_PLAYER, Route201_Movement_PlayerTurnToRivalWest
    ApplyMovement LOCALID_RIVAL, Route201_Movement_RivalFacePlayerEast
    WaitMovement
    Call Route201_ISaidTheLakesNotThatWay
    ApplyMovement LOCALID_PLAYER, Route201_Movement_PlayerWalkBackWest
    ApplyMovement LOCALID_RIVAL, Route201_Movement_RivalLeadPlayerBackWest
    WaitMovement
    GoTo Route201_ResetRivalPartnerEast
    End

Route201_RivalStopPlayerFacingNorth:
    ApplyMovement LOCALID_PLAYER, Route201_Movement_PlayerTurnToRivalSouth
    ApplyMovement LOCALID_RIVAL, Route201_Movement_RivalFacePlayerNorth
    WaitMovement
    Call Route201_ISaidTheLakesNotThatWay
    ApplyMovement LOCALID_PLAYER, Route201_Movement_PlayerWalkBackSouth
    ApplyMovement LOCALID_RIVAL, Route201_Movement_RivalFollowPlayerWalkingBackSouth
    WaitMovement
    GoTo Route201_ResetRivalPartnerEast
    End

Route201_ISaidTheLakesNotThatWay:
    BufferRivalName 0
    BufferPlayerName 1
    Message Route201_Text_ISaidTheLakesNotThatWay
    CloseMessage
    ClearHasPartner
    SetMovementType LOCALID_RIVAL, MOVEMENT_TYPE_LOOK_SOUTH
    Return

Route201_ResetRivalPartnerEast:
    Call Route201_ResetRivalPartner
    ReleaseAll
    End

Route201_ResetRivalPartner:
    SetHasPartner
    SetMovementType LOCALID_RIVAL, MOVEMENT_TYPE_FOLLOW_PLAYER
    SetObjectFlagIsPersistent LOCALID_RIVAL, TRUE
    Return

    .balign 4, 0
Route201_Movement_RivalLeadPlayerBackWest:
    WalkNormalWest
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
Route201_Movement_RivalFollowPlayerWalkingBackSouth:
    WalkNormalNorth
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
Route201_Movement_RivalFacePlayerEast:
    FaceEast
    EndMovement

    .balign 4, 0
Route201_Movement_RivalFacePlayerNorth:
    FaceNorth
    EndMovement

    .balign 4, 0
Route201_Movement_PlayerWalkBackWest:
    WalkNormalWest
    EndMovement

    .balign 4, 0
Route201_Movement_PlayerWalkBackSouth:
    WalkNormalSouth
    EndMovement

    .balign 4, 0
Route201_Movement_PlayerTurnToRivalWest:
    WalkOnSpotFastWest
    EndMovement

    .balign 4, 0
Route201_Movement_PlayerTurnToRivalSouth:
    WalkOnSpotFastSouth
    EndMovement

Route201_TriggerFollowingRivalStopPlayerSouth:
    LockAll
    ApplyMovement LOCALID_PLAYER, Route201_Movement_PlayerTurnToRivalNorth
    ApplyMovement LOCALID_RIVAL, Route201_Movement_RivalFacePlayerSouth
    WaitMovement
    BufferRivalName 0
    BufferPlayerName 1
    Message Route201_Text_TheLakesNotThatWay
    CloseMessage
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    GoToIfInRange VAR_0x8004, 110, 113, Route201_PlayerAndRivalWalkBackNorth
    End

Route201_PlayerAndRivalWalkBackNorth:
    ClearHasPartner
    SetMovementType LOCALID_RIVAL, MOVEMENT_TYPE_LOOK_SOUTH
    ApplyMovement LOCALID_PLAYER, Route201_Movement_PlayerWalkNorthWithRival
    ApplyMovement LOCALID_RIVAL, Route201_Movement_RivalWalkNorthWithPlayer
    WaitMovement
    GoTo Route201_ResetRivalPartnerSouth

Route201_ResetRivalPartnerSouth:
    Call Route201_ResetRivalPartner
    ReleaseAll
    End

    .balign 4, 0
Route201_Movement_RivalWalkNorthWithPlayer:
    WalkNormalNorth
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
Route201_Movement_RivalFacePlayerSouth:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
Route201_Movement_PlayerWalkNorthWithRival:
    WalkNormalNorth
    EndMovement

    .balign 4, 0
Route201_Movement_PlayerTurnToRivalNorth:
    WalkOnSpotFastNorth
    EndMovement

Route201_TriggerPickAPokemon:
    LockAll
    ApplyMovement LOCALID_RIVAL, Route201_Movement_RivalWalkOnSpotNormalSouth
    WaitMovement
    BufferRivalName 0
    Message Route201_Text_PickAPokemon
    CloseMessage
    GetPlayerDir VAR_RESULT
    GoToIfEq VAR_RESULT, DIR_EAST, Route201_PlayerWalkBackWestToBriefcase
    GoTo Route201_PlayerWalkBackNorthToBriefcase
    End

Route201_PlayerWalkBackWestToBriefcase:
    ApplyMovement LOCALID_PLAYER, Route201_Movement_PlayerWalkBackWestToBriefcase
    WaitMovement
    GoTo Route201_Release
    End

Route201_PlayerWalkBackNorthToBriefcase:
    ApplyMovement LOCALID_PLAYER, Route201_Movement_PlayerWalkBackNorthToBriefcase
    WaitMovement
    GoTo Route201_Release
    End

Route201_Release:
    ReleaseAll
    End

    .balign 4, 0
Route201_Movement_RivalWalkOnSpotNormalSouth:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
Route201_Movement_PlayerWalkBackWestToBriefcase:
    WalkNormalWest
    EndMovement

    .balign 4, 0
Route201_Movement_PlayerWalkBackNorthToBriefcase:
    WalkNormalNorth
    EndMovement

Route201_UnusedMovement3:
    WalkNormalNorth
    EndMovement

Route201_UnusedMovement4:
    WalkNormalNorth
    EndMovement

Route201_UnusedMovement5:
    WalkNormalWest
    EndMovement

Route201_UnusedMovement6:
    WalkNormalWest
    EndMovement

Route201_UnusedMovement7:
    WalkNormalWest
    EndMovement

_0B24:
    LockAll
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    GoToIfEq VAR_0x8005, 0x355, _0B55
    GoToIfEq VAR_0x8005, 0x356, _0B89
    GoToIfEq VAR_0x8005, 0x357, _0BBB
    End

_0B55:
    ApplyMovement 254, _0DBC
    ApplyMovement LOCALID_PROF_ROWAN, _0D48
    WaitMovement
    BufferRivalName 0
    Message Route201_Text_ISaidTheLakesNotThatWay
    CloseMessage
    ApplyMovement LOCALID_PROF_ROWAN, _0D50
    ApplyMovement LOCALID_COUNTERPART, _0D80
    WaitMovement
    GoTo _0BF5
    End

_0B89:
    ApplyMovement 254, _0DBC
    ApplyMovement LOCALID_PROF_ROWAN, _0D48
    WaitMovement
    BufferRivalName 0
    Message Route201_Text_ISaidTheLakesNotThatWay
    CloseMessage
    ApplyMovement LOCALID_PROF_ROWAN, _0D5C
    ApplyMovement LOCALID_COUNTERPART, _0D80
    WaitMovement
    GoTo _0BF5

_0BBB:
    ApplyMovement LOCALID_PLAYER, _0DDC
    ApplyMovement 254, _0DCC
    ApplyMovement LOCALID_PROF_ROWAN, _0D48
    WaitMovement
    BufferRivalName 0
    Message Route201_Text_ISaidTheLakesNotThatWay
    CloseMessage
    ApplyMovement LOCALID_PROF_ROWAN, _0D5C
    ApplyMovement LOCALID_COUNTERPART, _0D80
    WaitMovement
    GoTo _0BF5

_0BF5:
    BufferCounterpartName 0
    BufferPlayerStarterSpeciesName 1
    BufferRivalStarterSpeciesName 2
    ApplyMovement LOCALID_PROF_ROWAN, _0D70
    WaitMovement
    GoToIfEq VAR_0x8005, 0x355, _0C3E
    GoToIfEq VAR_0x8005, 0x356, _0C56
    GoToIfEq VAR_0x8005, 0x357, _0C6E
    GoToIfEq VAR_0x8005, 0x358, _0C6E
    End

_0C3E:
    ApplyMovement LOCALID_PROF_ROWAN, _0D78
    ApplyMovement LOCALID_COUNTERPART, _0D94
    WaitMovement
    GoTo _0C86

_0C56:
    ApplyMovement LOCALID_PROF_ROWAN, _0D78
    ApplyMovement LOCALID_COUNTERPART, _0DA0
    WaitMovement
    GoTo _0C86

_0C6E:
    ApplyMovement LOCALID_PROF_ROWAN, _0D78
    ApplyMovement LOCALID_COUNTERPART, _0DA0
    WaitMovement
    GoTo _0C86

_0C86:
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_MALE, _0C9D
    GoTo _0CA3

_0C9D:
    GoTo _0CA9

_0CA3:
    GoTo _0CA9

_0CA9:
    CloseMessage
    GoToIfEq VAR_0x8005, 0x355, _0CE1
    GoToIfEq VAR_0x8005, 0x356, _0CE1
    GoToIfEq VAR_0x8005, 0x357, _0CE1
    GoToIfEq VAR_0x8005, 0x358, _0CE1
    End

_0CE1:
    ApplyMovement LOCALID_COUNTERPART, _0DB4
    WaitMovement
    GoTo _0CF1

_0CF1:
    RemoveObject LOCALID_COUNTERPART
    RemoveObject LOCALID_PROF_ROWAN
    SetVar VAR_FOLLOWER_RIVAL_STATE, 3
    SetObjectFlagIsPersistent 254, FALSE
    ClearHasPartner
    SetFlag FLAG_HIDE_ROUTE_201_RIVAL
    SetFlag FLAG_UNK_0x0195
    SetVar VAR_UNK_0x4082, 4
    SetFlag FLAG_HIDE_LAKE_VERITY_LOW_WATER_RIVAL
    WaitTime 30, VAR_RESULT
    FadeScreenOut FADE_SCREEN_SPEED_MEDIUM
    WaitFadeScreen
    Warp MAP_HEADER_TWINLEAF_TOWN_PLAYER_HOUSE_1F, 0, 2, 6, 0
    FadeScreenIn FADE_SCREEN_SPEED_MEDIUM
    WaitFadeScreen
    ReleaseAll
    End

    .balign 4, 0
_0D48:
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_0D50:
    Delay8 4
    WalkNormalWest 2
    EndMovement

    .balign 4, 0
_0D5C:
    Delay8 4
    WalkNormalWest
    WalkNormalSouth
    WalkNormalWest
    EndMovement

    .balign 4, 0
_0D70:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_0D78:
    WalkNormalEast 8
    EndMovement

    .balign 4, 0
_0D80:
    Delay8
    WalkOnSpotNormalWest
    EndMovement

Route201_UnusedMovement8:
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_0D94:
    Delay8 3
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_0DA0:
    Delay4
    WalkNormalNorth
    WalkOnSpotNormalSouth
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_0DB4:
    WalkFastEast 8
    EndMovement

    .balign 4, 0
_0DBC:
    WalkOnSpotNormalEast
    EmoteExclamationMark
    Delay16
    EndMovement

    .balign 4, 0
_0DCC:
    WalkNormalNorth
    WalkOnSpotNormalEast
    EmoteExclamationMark
    EndMovement

    .balign 4, 0
_0DDC:
    Delay8
    WalkOnSpotNormalWest
    Delay8
    WalkNormalNorth
    WalkOnSpotNormalEast
    EndMovement

Route201_BreederM:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message Route201_Text_WildPokemonLurkInTallGrass
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

Route201_SchoolKidM:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message Route201_Text_ThatLedgeIsOneWay
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

Route201_Lass:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_HAS_POKEDEX, Route201_IfYourPokemonsHPIsLowGoToAPokemonCenter»
    Message Route201_Text_IfYourPokemonsHPIsLowGoHome
    GoTo Route201_LassCloseMessage

Route201_LassCloseMessage:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

Route201_IfYourPokemonsHPIsLowGoToAPokemonCenter»:
    Message Route201_Text_IfYourPokemonsHPIsLowGoToAPokemonCenter
    GoTo Route201_LassCloseMessage

Route201_Cashier:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_GOT_POTION_FROM_ROUTE_201_CASHIER, Route201_YouCanFindMartsInCitiesAndMajorTowns
    Message Route201_Text_HereAPotionAsAFreeSample
    SetVar VAR_0x8004, ITEM_POTION
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, Route201_BagIsFull
    SetFlag FLAG_GOT_POTION_FROM_ROUTE_201_CASHIER
    Common_GiveItemQuantityNoLineFeed
    CloseMessage
    ReleaseAll
    End

Route201_YouCanFindMartsInCitiesAndMajorTowns:
    Message Route201_Text_YouCanFindMartsInCitiesAndMajorTowns
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

Route201_BagIsFull:
    Common_MessageBagIsFull
    CloseMessage
    ReleaseAll
    End

Route201_ProfRowan:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message Route201_Text_RowanGoOnChooseAPokemon
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

Route201_TriggerLetsCatchThatLegendaryPokemon:
    LockAll
    ApplyMovement LOCALID_RIVAL, Route201_Movement_RivalNoticePlayer
    WaitMovement
    BufferRivalName 0
    BufferPlayerName 1
    Message Route201_Text_LetsCatchThatLegendaryPokemon
    CloseMessage
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    GoToIfEq VAR_0x8004, 110, Route201_RivalRunToPlayerX110
    GoToIfEq VAR_0x8004, 111, Route201_RivalRunToPlayerX111
    GoToIfEq VAR_0x8004, 112, Route201_RivalRunToPlayerX112
    GoToIfEq VAR_0x8004, 113, Route201_RivalRunToPlayerX113
    End

Route201_RivalRunToPlayerX110:
    ApplyMovement LOCALID_RIVAL, Route201_Movement_RivalRunToPlayerX110
    WaitMovement
    GoTo Route201_SetRivalPartner
    End

Route201_RivalRunToPlayerX111:
    ApplyMovement LOCALID_RIVAL, Route201_Movement_RivalRunToPlayerX111
    WaitMovement
    GoTo Route201_SetRivalPartner
    End

Route201_RivalRunToPlayerX112:
    ApplyMovement LOCALID_RIVAL, Route201_Movement_RivalRunToPlayerX112
    WaitMovement
    GoTo Route201_SetRivalPartner
    End

Route201_RivalRunToPlayerX113:
    ApplyMovement LOCALID_RIVAL, Route201_Movement_RivalRunToPlayerX113
    WaitMovement
    GoTo Route201_SetRivalPartner
    End

Route201_SetRivalPartner:
    BufferRivalName 0
    Message Route201_Text_TogetherWeveGotNothingToFear
    WaitABXPadPress
    CloseMessage
    SetVar VAR_FOLLOWER_RIVAL_STATE, 3
    SetStepFlag
    SetHasPartner
    SetMovementType LOCALID_RIVAL, MOVEMENT_TYPE_FOLLOW_PLAYER
    SetObjectFlagIsPersistent LOCALID_RIVAL, TRUE
    SetFlag FLAG_HIDE_ROUTE_201_RIVAL
    ReleaseAll
    End

Route201_ArrowSignpostTwinleafTown:
    ShowArrowSign Route201_Text_Rt201TwinleafTown
    End

Route201_ArrowSignpostSandgemTown:
    ShowArrowSign Route201_Text_Rt201SandgemTown
    End

Route201_TrainerTipsSignpost:
    ShowScrollingSign Route201_Text_TrainerTipsTalkToAnyone
    End

    .balign 4, 0
