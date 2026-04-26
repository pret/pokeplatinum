#include "macros/scrcmd.inc"
#include "res/text/bank/fight_area.h"
#include "res/field/events/events_fight_area.h"


    ScriptEntry FightArea_OnFrameRival
    ScriptEntry FightArea_AceTrainerM1
    ScriptEntry FightArea_AceTrainerF1
    ScriptEntry FightArea_PokemonBreederM
    ScriptEntry FightArea_Twin
    ScriptEntry FightArea_BattleGirl1
    ScriptEntry FightArea_Sailor1
    ScriptEntry FightArea_Fisherman
    ScriptEntry FightArea_MapSign
    ScriptEntry FightArea_ArrowSignpostBattleFrontier
    ScriptEntry FightArea_ArrowSignpostRt225
    ScriptEntry FightArea_Sailor2
    ScriptEntry FightArea_BlackBelt1
    ScriptEntry FightArea_Rival
    ScriptEntry FightArea_OnTransition
    ScriptEntry FightArea_AceTrainerM2
    ScriptEntry FightArea_BlackBelt2
    ScriptEntry FightArea_Flint
    ScriptEntry FightArea_Volkner
    ScriptEntry FightArea_AceTrainerM3
    ScriptEntry FightArea_AceTrainerF2
    ScriptEntry FightArea_BlackBelt3
    ScriptEntry FightArea_BattleGirl2
    ScriptEntry FightArea_Sailor3
    ScriptEntry FightArea_Buck
    ScriptEntryEnd

FightArea_OnTransition:
    GoToIfEq VAR_FIGHT_AREA_STATE, 1, FightArea_SetRivalPositionBattleFrontierGate
    GoToIfGe VAR_UNK_0x409E, 1, FightArea_HideRival
    End

FightArea_SetRivalPositionBattleFrontierGate:
    SetObjectEventPos LOCALID_RIVAL, 655, 426
    SetObjectEventMovementType LOCALID_RIVAL, MOVEMENT_TYPE_LOOK_NORTH
    SetObjectEventDir LOCALID_RIVAL, DIR_NORTH
    End

FightArea_HideRival:
    SetFlag FLAG_HIDE_FIGHT_AREA_RIVAL
    End

FightArea_CheckForWeekend_Unused:
    GetDayOfWeek VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, DAY_OF_WEEK_SUNDAY, FightArea_ActivateRivalFight_Unused
    GoToIfEq VAR_MAP_LOCAL_0, DAY_OF_WEEK_SATURDAY, FightArea_ActivateRivalFight_Unused
    End

FightArea_ActivateRivalFight_Unused:
    SetObjectEventPos LOCALID_RIVAL, 658, 430
    SetObjectEventMovementType LOCALID_RIVAL, MOVEMENT_TYPE_LOOK_SOUTH
    SetObjectEventDir LOCALID_RIVAL, DIR_SOUTH
    ClearFlag FLAG_HIDE_FIGHT_AREA_RIVAL
    End

FightArea_OnFrameRival:
    LockAll
    ScrCmd_32D
    ApplyMovement LOCALID_RIVAL, FightArea_Movement_RivalNoticePlayer
    WaitMovement
    ApplyMovement LOCALID_PLAYER, FightArea_Movement_PlayerWalkToRival
    WaitMovement
    BufferRivalName 0
    BufferPlayerName 1
    Message FightArea_Text_ComeWithMe
    CloseMessage
    Common_SetFollowMeBGM
    ApplyMovement LOCALID_PLAYER, FightArea_Movement_PlayerWalkToVolknerFlint
    ApplyMovement LOCALID_RIVAL, FightArea_Movement_RivalWalkToVolknerFlint
    WaitMovement
    Common_FadeToDefaultMusic3
    SetVar VAR_FIGHT_AREA_STATE, 1
    ScrCmd_32E
    Message FightArea_Text_LetsTeamUp
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, FightArea_INeedYourHelp
    Call FightArea_BattleVolknerFlint
    GoToIfEq VAR_RESULT, FALSE, FightArea_LostBattleVolknerFlint
    Call FightArea_PostBattleVolknerFlint
    ReleaseAll
    End

FightArea_BattleVolknerFlint:
    BufferRivalName 0
    Message FightArea_Text_WeCanWhoopEm
    CloseMessage
    ApplyMovement LOCALID_PLAYER, FightArea_Movement_PlayerWalkNorth
    ApplyMovement LOCALID_RIVAL, FightArea_Movement_RivalWalkNorth
    WaitMovement
    ApplyMovement LOCALID_FLINT, FightArea_Movement_FlintWalkOnSpotSouth
    WaitMovement
    Message FightArea_Text_LetFlintSeeSpirit
    ApplyMovement LOCALID_VOLKNER, FightArea_Movement_VolknerWalkOnSpotSouth
    WaitMovement
    Message FightArea_Text_ShowMeSkills
    CloseMessage
    Call FightArea_SetRivalPartnerTeam
    StartTagBattle VAR_0x8004, TRAINER_LEADER_VOLKNER_FIGHT_AREA, TRAINER_ELITE_FOUR_FLINT_FIGHT_AREA
    CheckWonBattle VAR_RESULT
    Return

FightArea_PostBattleVolknerFlint:
    ApplyMovement LOCALID_VOLKNER, FightArea_Movement_VolknerWalkOnSpotWest
    WaitMovement
    Message FightArea_Text_FlintEllipses
    Message FightArea_Text_DontBurnOut
    ApplyMovement LOCALID_VOLKNER, FightArea_Movement_VolknerWalkOnSpotSouth2
    WaitMovement
    Message FightArea_Text_ThatWasABlast
    CloseMessage
    FadeScreenOut
    WaitFadeScreen
    RemoveObject LOCALID_FLINT
    RemoveObject LOCALID_VOLKNER
    RemoveObject LOCALID_ACE_TRAINER_M_3
    RemoveObject LOCALID_ACE_TRAINER_F_2
    RemoveObject LOCALID_BLACK_BELT_3
    RemoveObject LOCALID_BATTLE_GIRL_2
    RemoveObject LOCALID_SAILOR_3
    FadeScreenIn
    WaitFadeScreen
    ApplyMovement LOCALID_RIVAL, FightArea_Movement_RivalFacePlayer
    ApplyMovement LOCALID_PLAYER, FightArea_Movement_PlayerFaceRival
    WaitMovement
    BufferRivalName 0
    Message FightArea_Text_ImOffToTheFronti
    ClearFlag FLAG_HIDE_FIGHT_AREA_PALMER
    AddObject LOCALID_PALMER
    StopSE SEQ_SE_CONFIRM
    PlaySE SEQ_SE_DP_WALL_HIT2
    MessageInstant FightArea_Text_BigThud
    ApplyMovement LOCALID_PALMER, FightArea_Movement_PalmerEnter
    ApplyMovement LOCALID_RIVAL, FightArea_Movement_RivalGetPushedBack
    ApplyMovement LOCALID_PLAYER, FightArea_Movement_PlayerFaceRivalThenPalmer
    WaitMovement
    ApplyMovement LOCALID_PALMER, FightArea_Movement_PalmerLookAround
    WaitMovement
    Message FightArea_Text_WhatsThisAllAbout
    CloseMessage
    BufferRivalName 0
    Message FightArea_Text_WhatTheDaddy
    CloseMessage
    ApplyMovement LOCALID_RIVAL, FightArea_Movement_RivalWalkToPalmer
    WaitMovement
    BufferRivalName 0
    BufferPlayerName 1
    Message FightArea_Text_IfItIsntRival
    Message FightArea_Text_LookingForwardToChallenge
    CloseMessage
    ApplyMovement LOCALID_PALMER, FightArea_Movement_PalmerLeave
    WaitMovement
    PlaySE SEQ_SE_DP_KAIDAN2
    RemoveObject LOCALID_PALMER
    WaitSE SEQ_SE_DP_KAIDAN2
    BufferRivalName 0
    Message FightArea_Text_DadIsTowerTycoon
    Message FightArea_Text_WhatToDo
    Message FightArea_Text_GoingToGetStronger
    CloseMessage
    ApplyMovement LOCALID_RIVAL, FightArea_Movement_RivalLeave
    ApplyMovement LOCALID_PLAYER, FightArea_Movement_PlayerWatchRivalLeave
    WaitMovement
    RemoveObject LOCALID_RIVAL
    ApplyMovement LOCALID_BUCK, FightArea_Movement_BuckWalkToPlayer
    ApplyMovement LOCALID_PLAYER, FightArea_Movement_PlayerFaceBuck
    WaitMovement
    Message FightArea_Text_ComeToSurvivalArea
    CloseMessage
    ApplyMovement LOCALID_BUCK, FightArea_Movement_BuckLeave
    ApplyMovement LOCALID_PLAYER, FightArea_Movement_PlayerWatchBuckLeave
    WaitMovement
    RemoveObject LOCALID_BUCK
    GetNationalDexEnabled VAR_RESULT
    CallIfEq VAR_RESULT, TRUE, FightArea_RemoveBlockade
    SetVar VAR_FIGHT_AREA_STATE, 2
    Return

FightArea_RemoveBlockade:
    RemoveObject LOCALID_ACE_TRAINER_M_2
    RemoveObject LOCALID_BLACK_BELT_2
    SetFlag FLAG_HIDE_FIGHT_AREA_BLOCKADE
    Return

FightArea_INeedYourHelp:
    ApplyMovement LOCALID_RIVAL, FightArea_Movement_RivalWalkOnSpotWest
    WaitMovement
    BufferRivalName 0
    Message FightArea_Text_INeedYourHelp
    WaitButton
    CloseMessage
    ReleaseAll
    End

FightArea_LostBattleVolknerFlint:
    BlackOutFromBattle
    ReleaseAll
    End

FightArea_SetRivalPartnerTeam:
    GetPlayerStarterSpecies VAR_RESULT
    SetVar VAR_0x8004, TRAINER_RIVAL_FIGHT_AREA_CHIMCHAR
    GoToIfEq VAR_RESULT, SPECIES_CHIMCHAR, FightArea_SetRivalPartnerTeamReturn
    SetVar VAR_0x8004, TRAINER_RIVAL_FIGHT_AREA_TURTWIG
    GoToIfEq VAR_RESULT, SPECIES_TURTWIG, FightArea_SetRivalPartnerTeamReturn
    SetVar VAR_0x8004, TRAINER_RIVAL_FIGHT_AREA_PIPLUP
    Return

FightArea_SetRivalPartnerTeamReturn:
    Return

    .balign 4, 0
FightArea_Movement_RivalNoticePlayer:
    WalkOnSpotNormalWest
    EmoteExclamationMark
    EndMovement

FightArea_UnusedMovement:
    WalkNormalWest
    EndMovement

    .balign 4, 0
FightArea_Movement_RivalWalkToVolknerFlint:
    WalkNormalEast 17
    WalkNormalNorth 2
    WalkNormalEast 9
    WalkNormalNorth 6
    WalkNormalEast
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
FightArea_Movement_RivalWalkNorth:
    WalkNormalNorth
    EndMovement

    .balign 4, 0
FightArea_Movement_RivalFacePlayer:
    WalkOnSpotFastWest
    EndMovement

    .balign 4, 0
FightArea_Movement_RivalGetPushedBack:
    FaceNorth
    LockDir
    WalkFastSouth 2
    UnlockDir
    EndMovement

FightArea_UnusedMovement2:
    EmoteExclamationMark
    EndMovement

    .balign 4, 0
FightArea_Movement_RivalWalkToPalmer:
    WalkFastNorth 2
    EndMovement

    .balign 4, 0
FightArea_Movement_RivalLeave:
    WalkFastSouth 8
    EndMovement

    .balign 4, 0
FightArea_Movement_RivalWalkOnSpotWest:
    WalkOnSpotFastWest
    EndMovement

    .balign 4, 0
FightArea_Movement_PalmerEnter:
    WalkFastSouth
    EndMovement

    .balign 4, 0
FightArea_Movement_PalmerLookAround:
    WalkOnSpotNormalWest
    Delay8
    WalkOnSpotNormalEast
    Delay8
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
FightArea_Movement_PalmerLeave:
    WalkFastNorth
    EndMovement

    .balign 4, 0
FightArea_Movement_PlayerWalkToRival:
    WalkNormalEast 4
    EndMovement

    .balign 4, 0
FightArea_Movement_PlayerWalkToVolknerFlint:
    WalkNormalEast 18
    WalkNormalNorth 2
    WalkNormalEast 9
    WalkNormalNorth 6
    EndMovement

    .balign 4, 0
FightArea_Movement_PlayerWalkNorth:
    WalkNormalNorth
    EndMovement

    .balign 4, 0
FightArea_Movement_PlayerFaceRival:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
FightArea_Movement_PlayerFaceRivalThenPalmer:
    Delay8
    WalkOnSpotFastSouth
    Delay4
    WalkOnSpotFastNorth
    EndMovement

    .balign 4, 0
FightArea_Movement_PlayerWatchBuckLeave:
    Delay8
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
FightArea_Movement_PlayerWatchRivalLeave:
    WalkOnSpotNormalSouth
    EndMovement

FightArea_UnusedMovement3:
    Delay8
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
FightArea_Movement_PlayerFaceBuck:
    Delay8 2
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
FightArea_Movement_FlintWalkOnSpotSouth:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
FightArea_Movement_FlintFaceSouth:
    FaceSouth
    EndMovement

    .balign 4, 0
FightArea_Movement_VolknerWalkOnSpotSouth:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
FightArea_Movement_VolknerWalkOnSpotWest:
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
FightArea_Movement_VolknerWalkOnSpotSouth2:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
FightArea_Movement_VolknerFaceSouth:
    FaceSouth
    EndMovement

    .balign 4, 0
FightArea_Movement_BuckWalkToPlayer:
    WalkNormalNorth
    WalkNormalWest 2
    EndMovement

    .balign 4, 0
FightArea_Movement_BuckLeave:
    WalkNormalSouth 8
    EndMovement

FightArea_UnusedMovement4:
    WalkOnSpotNormalWest
    EndMovement

FightArea_UnusedMovement5:
    WalkNormalEast 10
    EndMovement

FightArea_AceTrainerM1:
    NPCMessage FightArea_Text_BattleTowerLooms
    End

FightArea_AceTrainerF1:
    NPCMessage FightArea_Text_BattledManyTrainers
    End

FightArea_PokemonBreederM:
    NPCMessage FightArea_Text_LandIsCraggy
    End

FightArea_Twin:
    NPCMessage FightArea_Text_EliteFourComeSometimes
    End

FightArea_BattleGirl1:
    NPCMessage FightArea_Text_NotUsedToSinnohPokemon
    End

FightArea_BlackBelt1:
    NPCMessage FightArea_Text_NoEndToBecomingTough
    End

FightArea_Sailor1:
    NPCMessage FightArea_Text_ThrillWithNewDiscoveries
    End

FightArea_Fisherman:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    BufferItemName 0, ITEM_SUPER_ROD
    GoToIfSet FLAG_SUPER_ROD_OBTAINED, FightArea_AdviceForFishing
    Message FightArea_Text_SuperRoodReallyGood
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, FightArea_DontYouLikeToFish
    Message FightArea_Text_TakeThisSuperRod
    SetVar VAR_0x8004, ITEM_SUPER_ROD
    SetVar VAR_0x8005, 1
    Common_GiveItemQuantity
    SetFlag FLAG_SUPER_ROD_OBTAINED
    Message FightArea_Text_TryLuckAtFishing
    WaitButton
    CloseMessage
    ReleaseAll
    End

FightArea_DontYouLikeToFish:
    Message FightArea_Text_DontYouLikeToFish
    WaitButton
    CloseMessage
    ReleaseAll
    End

FightArea_AdviceForFishing:
    Message FightArea_Text_AdviceForFishing
    WaitButton
    CloseMessage
    ReleaseAll
    End

FightArea_MapSign:
    ShowMapSign FightArea_Text_MapSign
    End

FightArea_ArrowSignpostBattleFrontier:
    ShowArrowSign FightArea_Text_SignBattleFrontierAhead
    End

FightArea_ArrowSignpostRt225:
    ShowArrowSign FightArea_Text_SignRt225Ahead
    End

FightArea_Sailor2:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    FacePlayer
    GetPlayerDir VAR_0x8004
    Message FightArea_Text_SailToSnowpointCity
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, FightArea_SailToSnowpointCity
    GoToIfEq VAR_RESULT, MENU_NO, FightArea_YoudRatherFly
    End

FightArea_YoudRatherFly:
    Message FightArea_Text_YoudRatherFly
    WaitButton
    CloseMessage
    ReleaseAll
    End

FightArea_SailToSnowpointCity:
    Message FightArea_Text_AnchorsAweigh
    CloseMessage
    Call FightArea_SailorEnterShip
    CallIfEq VAR_0x8004, DIR_SOUTH, FightArea_PlayerEnterShipSouth
    CallIfEq VAR_0x8004, DIR_EAST, FightArea_PlayerEnterShipEast
    CallIfEq VAR_0x8004, DIR_WEST, FightArea_PlayerEnterShipWest
    TakeShipToSnowpoint
    ReleaseAll
    End

FightArea_SailorEnterShip:
    ApplyMovement LOCALID_SAILOR_2, FightArea_Movement_Sailor2WalkToShip
    WaitMovement
    PlaySE SEQ_SE_DP_KAIDAN2
    ApplyMovement LOCALID_SAILOR_2, FightArea_Movement_SetInvisible
    WaitMovement
    Return

FightArea_PlayerEnterShipSouth:
    ApplyMovement LOCALID_PLAYER, FightArea_Movement_PlayerWalkToShipSouth
    WaitMovement
    PlaySE SEQ_SE_DP_KAIDAN2
    ApplyMovement LOCALID_PLAYER, FightArea_Movement_SetInvisible
    WaitMovement
    Return

FightArea_PlayerEnterShipEast:
    ApplyMovement LOCALID_PLAYER, FightArea_Movement_PlayerWalkToShipEast
    WaitMovement
    PlaySE SEQ_SE_DP_KAIDAN2
    ApplyMovement LOCALID_PLAYER, FightArea_Movement_SetInvisible
    WaitMovement
    Return

FightArea_PlayerEnterShipWest:
    ApplyMovement LOCALID_PLAYER, FightArea_Movement_PlayerWalkToShipWest
    WaitMovement
    PlaySE SEQ_SE_DP_KAIDAN2
    ApplyMovement LOCALID_PLAYER, FightArea_Movement_SetInvisible
    WaitMovement
    Return

    .balign 4, 0
FightArea_Movement_Sailor2WalkToShip:
    FaceSouth
    Delay15
    EndMovement

    .balign 4, 0
FightArea_Movement_SetInvisible:
    SetInvisible
    EndMovement

    .balign 4, 0
FightArea_Movement_PlayerWalkToShipSouth:
    WalkNormalSouth
    Delay15
    EndMovement

    .balign 4, 0
FightArea_Movement_PlayerWalkToShipEast:
    WalkNormalEast
    FaceSouth
    Delay15
    EndMovement

    .balign 4, 0
FightArea_Movement_PlayerWalkToShipWest:
    WalkNormalWest
    FaceSouth
    Delay15
    EndMovement

FightArea_Rival:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ApplyMovement LOCALID_RIVAL, FightArea_Movement_RivalWalkOnSpotNorth
    WaitMovement
    GetPlayerDir VAR_0x8004
    CallIfEq VAR_0x8004, DIR_EAST, FightArea_PlayerWalkToBattlePositionEast
    CallIfEq VAR_0x8004, DIR_WEST, FightArea_PlayerWalkToBattlePositionWest
    CallIfEq VAR_0x8004, DIR_SOUTH, FightArea_PlayerWalkToBattlePositionSouth
    CallIfEq VAR_0x8004, DIR_NORTH, FightArea_PlayerWalkToBattlePositionNorth
    BufferRivalName 0
    Message FightArea_Text_LetsShowThem
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, FightArea_INeedYourHelp
    Call FightArea_BattleVolknerFlint
    GoToIfEq VAR_RESULT, FALSE, FightArea_LostBattleVolknerFlint
    Call FightArea_PostBattleVolknerFlint
    ReleaseAll
    End

FightArea_PlayerWalkToBattlePositionEast:
    ApplyMovement LOCALID_PLAYER, FightArea_Movement_PlayerWalkOnSpotNorth
    WaitMovement
    Return

FightArea_PlayerWalkToBattlePositionWest:
    ApplyMovement LOCALID_PLAYER, FightArea_Movement_PlayerWalkToBattlePositionWest
    WaitMovement
    Return

FightArea_PlayerWalkToBattlePositionSouth:
    ApplyMovement LOCALID_PLAYER, FightArea_Movement_PlayerWalkToBattlePositionSouth
    WaitMovement
    Return

FightArea_PlayerWalkToBattlePositionNorth:
    ApplyMovement LOCALID_PLAYER, FightArea_Movement_PlayerWalkToBattlePositionNorth
    WaitMovement
    Return

    .balign 4, 0
FightArea_Movement_RivalWalkOnSpotNorth:
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
FightArea_Movement_PlayerWalkOnSpotNorth:
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
FightArea_Movement_PlayerWalkToBattlePositionWest:
    WalkNormalSouth
    WalkNormalWest 2
    WalkNormalNorth
    EndMovement

    .balign 4, 0
FightArea_Movement_PlayerWalkToBattlePositionSouth:
    WalkNormalWest
    WalkNormalSouth
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
FightArea_Movement_PlayerWalkToBattlePositionNorth:
    WalkNormalWest
    WalkNormalNorth
    EndMovement

FightArea_AceTrainerM2:
    NPCMessage FightArea_Text_YouHavePokedexDoYou
    End

FightArea_BlackBelt2:
    NPCMessage FightArea_Text_HaveYouBeenToFrontier
    End

FightArea_Flint:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message FightArea_Text_UpToTheChallenge
    WaitButton
    ApplyMovement LOCALID_FLINT, FightArea_Movement_FlintFaceSouth
    WaitMovement
    CloseMessage
    ReleaseAll
    End

FightArea_Volkner:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message FightArea_Text_SorryAboutMyFriend
    WaitButton
    ApplyMovement LOCALID_VOLKNER, FightArea_Movement_VolknerFaceSouth
    WaitMovement
    CloseMessage
    ReleaseAll
    End

FightArea_Buck:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message FightArea_Text_WhoAreYouGuys
    WaitButton
    ApplyMovement LOCALID_BUCK, FightArea_Movement_BuckWalkOnSpotWest
    WaitMovement
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
FightArea_Movement_BuckWalkOnSpotWest:
    WalkOnSpotNormalWest
    EndMovement

FightArea_AceTrainerM3:
    NPCMessage FightArea_Text_LearnALotByWatching
    End

FightArea_AceTrainerF2:
    NPCMessage FightArea_Text_IMustBeLucky
    End

FightArea_BlackBelt3:
    NPCMessage FightArea_Text_LotToThink
    End

FightArea_BattleGirl2:
    NPCMessage FightArea_Text_AreVolknerAndFlintFriends
    End

FightArea_Sailor3:
    NPCMessage FightArea_Text_ThatCombinationsIntriguing
    End

    .balign 0
