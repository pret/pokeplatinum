#include "macros/scrcmd.inc"
#include "res/text/bank/pokemon_league_north_pokecenter_1f.h"
#include "res/field/events/events_pokemon_league_north_pokecenter_1f.h"


    ScriptEntry PokemonLeagueNorthPokecenter1F_DoorGuard
    ScriptEntry PokemonLeagueNorthPokecenter1F_VendorCommon
    ScriptEntry PokemonLeagueNorthPokecenter1F_VendorSpecial
    ScriptEntry PokemonLeagueNorthPokecenter1F_RivalTrigger
    ScriptEntry PokemonLeagueNorthPokecenter1F_OnTransition
    ScriptEntry PokemonLeagueNorthPokecenter1F_AceTrainerF
    ScriptEntry PokemonLeagueNorthPokecenter1F_Guitarist
    ScriptEntry PokemonLeagueNorthPokecenter1F_Nurse
    ScriptEntryEnd

PokemonLeagueNorthPokecenter1F_OnTransition:
    SetFlag FLAG_FIRST_ARRIVAL_POKEMON_LEAGUE
    SetFlag FLAG_HIDE_POKEMON_LEAGUE_AARON_ROOM_ENTRANCE_DOOR
    SetFlag FLAG_HIDE_POKEMON_LEAGUE_BERTHA_ROOM_ENTRANCE_DOOR
    SetFlag FLAG_HIDE_POKEMON_LEAGUE_FLINT_ROOM_ENTRANCE_DOOR
    SetFlag FLAG_HIDE_POKEMON_LEAGUE_LUCIAN_ROOM_ENTRANCE_DOOR
    ClearFlag FLAG_HIDE_POKEMON_LEAGUE_AARON_ROOM_EXIT_DOOR
    ClearFlag FLAG_HIDE_POKEMON_LEAGUE_BERTHA_ROOM_EXIT_DOOR
    ClearFlag FLAG_HIDE_POKEMON_LEAGUE_FLINT_ROOM_EXIT_DOOR
    ClearFlag FLAG_HIDE_POKEMON_LEAGUE_LUCIAN_ROOM_EXIT_DOOR
    ClearFlag FLAG_DEFEATED_AARON
    ClearFlag FLAG_DEFEATED_BERTHA
    ClearFlag FLAG_DEFEATED_FLINT
    ClearFlag FLAG_DEFEATED_LUCIAN
    GoToIfSet FLAG_POKEMON_LEAGUE_DOOR_GUARD_MOVED_AWAY, PokemonLeagueNorthPokecenter1F_MoveDoorGuardAwayFromDoor
    End

PokemonLeagueNorthPokecenter1F_MoveDoorGuardAwayFromDoor:
    SetObjectEventPos 0, 12, 3
    End

PokemonLeagueNorthPokecenter1F_DoorGuard:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_POKEMON_LEAGUE_DOOR_GUARD_MOVED_AWAY, PokemonLeagueNorthPokecenter1F_DoorGuardAfterMovingAway
    Message PokemonLeagueNorthPokecenter1F_Text_LetUsExamineYourGymBadges
    CloseMessage
    PlaySound SEQ_BADGE
    WaitSound
    GetPlayerDir VAR_RESULT
    GoToIfEq VAR_RESULT, DIR_NORTH, PokemonLeagueNorthPokecenter1F_DoorGuardMoveAwayEastSouth
    GoToIfEq VAR_RESULT, DIR_WEST, PokemonLeagueNorthPokecenter1F_DoorGuardMoveAwayWest
    GoToIfEq VAR_RESULT, DIR_EAST, PokemonLeagueNorthPokecenter1F_DoorGuardMoveAwayEastWest
    End

PokemonLeagueNorthPokecenter1F_DoorGuardMoveAwayEastSouth:
    ApplyMovement LOCALID_ACE_TRAINER_M, PokemonLeagueNorthPokecenter1F_Movement_DoorGuardMoveAwayEastSouth
    WaitMovement
    GoTo PokemonLeagueNorthPokecenter1F_DoorGuardMovedAway

PokemonLeagueNorthPokecenter1F_DoorGuardMoveAwayWest:
    ApplyMovement LOCALID_ACE_TRAINER_M, PokemonLeagueNorthPokecenter1F_Movement_DoorGuardMoveAwayWest
    WaitMovement
    GoTo PokemonLeagueNorthPokecenter1F_DoorGuardMovedAway

PokemonLeagueNorthPokecenter1F_DoorGuardMoveAwayEastWest:
    ApplyMovement LOCALID_ACE_TRAINER_M, PokemonLeagueNorthPokecenter1F_Movement_DoorGuardMoveAwayEastWest
    WaitMovement
    GoTo PokemonLeagueNorthPokecenter1F_DoorGuardMovedAway

PokemonLeagueNorthPokecenter1F_DoorGuardMovedAway:
    SetFlag FLAG_POKEMON_LEAGUE_DOOR_GUARD_MOVED_AWAY
    Message PokemonLeagueNorthPokecenter1F_Text_YouveCollectedAllGymBadges
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

PokemonLeagueNorthPokecenter1F_DoorGuardAfterMovingAway:
    Message PokemonLeagueNorthPokecenter1F_Text_YouWillBeFacingTheEliteFour
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
PokemonLeagueNorthPokecenter1F_Movement_DoorGuardMoveAwayEastSouth:
    WalkNormalEast
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
PokemonLeagueNorthPokecenter1F_Movement_DoorGuardMoveAwayWest:
    WalkNormalWest
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
PokemonLeagueNorthPokecenter1F_Movement_DoorGuardMoveAwayEastWest:
    WalkNormalEast
    WalkOnSpotNormalWest
    EndMovement

PokemonLeagueNorthPokecenter1F_VendorCommon:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Common_VendorGreeting
    CloseMessageWithoutErasing
    PokeMartCommon
    ReleaseAll
    End

PokemonLeagueNorthPokecenter1F_VendorSpecial:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Common_VendorGreeting
    CloseMessageWithoutErasing
    PokeMartSpecialties MART_SPECIALTIES_ID_POKEMON_LEAGUE
    ReleaseAll
    End

PokemonLeagueNorthPokecenter1F_RivalTrigger:
    LockAll
    ClearFlag FLAG_HIDE_POKEMON_LEAGUE_NORTH_POKECENTER_1F_RIVAL
    AddObject LOCALID_RIVAL
    Common_SetRivalBGM
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    GoToIfEq VAR_0x8004, 10, PokemonLeagueNorthPokecenter1F_RivalEnterWest
    GoToIfEq VAR_0x8004, 11, PokemonLeagueNorthPokecenter1F_RivalEnterNorth
    GoToIfEq VAR_0x8004, 12, PokemonLeagueNorthPokecenter1F_RivalEnterEast
    End

PokemonLeagueNorthPokecenter1F_RivalEnterWest:
    ApplyMovement LOCALID_RIVAL, PokemonLeagueNorthPokecenter1F_Movement_RivalEnterWest
    WaitMovement
    GoTo PokemonLeagueNorthPokecenter1F_RivalIntro

PokemonLeagueNorthPokecenter1F_RivalEnterNorth:
    ApplyMovement LOCALID_RIVAL, PokemonLeagueNorthPokecenter1F_Movement_RivalEnterNorth
    WaitMovement
    GoTo PokemonLeagueNorthPokecenter1F_RivalIntro

PokemonLeagueNorthPokecenter1F_RivalEnterEast:
    ApplyMovement LOCALID_RIVAL, PokemonLeagueNorthPokecenter1F_Movement_RivalEnterEast
    WaitMovement
    GoTo PokemonLeagueNorthPokecenter1F_RivalIntro

PokemonLeagueNorthPokecenter1F_RivalIntro:
    ApplyMovement LOCALID_PLAYER, PokemonLeagueNorthPokecenter1F_Movement_PlayerFaceRival
    WaitMovement
    BufferRivalName 0
    Message PokemonLeagueNorthPokecenter1F_Text_RivalIntro
    CloseMessage
    GetPlayerStarterSpecies VAR_RESULT
    GoToIfEq VAR_RESULT, SPECIES_TURTWIG, PokemonLeagueNorthPokecenter1F_StartRivalTurtwigBattle
    GoToIfEq VAR_RESULT, SPECIES_CHIMCHAR, PokemonLeagueNorthPokecenter1F_StartRivalChimcharBattle
    GoTo PokemonLeagueNorthPokecenter1F_StartRivalPiplupBattle

PokemonLeagueNorthPokecenter1F_StartRivalPiplupBattle:
    StartTrainerBattle TRAINER_RIVAL_POKEMON_LEAGUE_PIPLUP
    GoTo PokemonLeagueNorthPokecenter1F_RivalPostBattle

PokemonLeagueNorthPokecenter1F_StartRivalTurtwigBattle:
    StartTrainerBattle TRAINER_RIVAL_POKEMON_LEAGUE_TURTWIG
    GoTo PokemonLeagueNorthPokecenter1F_RivalPostBattle

PokemonLeagueNorthPokecenter1F_StartRivalChimcharBattle:
    StartTrainerBattle TRAINER_RIVAL_POKEMON_LEAGUE_CHIMCHAR
    GoTo PokemonLeagueNorthPokecenter1F_RivalPostBattle

PokemonLeagueNorthPokecenter1F_RivalPostBattle:
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, PokemonLeagueNorthPokecenter1F_BlackOutFromRivalBattle
    BufferRivalName 0
    BufferPlayerName 1
    Message PokemonLeagueNorthPokecenter1F_Text_RivalDefeat
    CloseMessage
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    GoToIfEq VAR_0x8004, 10, PokemonLeagueNorthPokecenter1F_RivalLeaveEast
    GoToIfEq VAR_0x8004, 11, PokemonLeagueNorthPokecenter1F_RivalLeaveSouth
    GoToIfEq VAR_0x8004, 12, PokemonLeagueNorthPokecenter1F_RivalLeaveWest
    End

PokemonLeagueNorthPokecenter1F_RivalLeaveEast:
    ApplyMovement LOCALID_RIVAL, PokemonLeagueNorthPokecenter1F_Movement_RivalLeaveEast
    WaitMovement
    GoTo PokemonLeagueNorthPokecenter1F_RemoveRival

PokemonLeagueNorthPokecenter1F_RivalLeaveSouth:
    ApplyMovement LOCALID_RIVAL, PokemonLeagueNorthPokecenter1F_Movement_RivalLeaveSouth
    WaitMovement
    GoTo PokemonLeagueNorthPokecenter1F_RemoveRival

PokemonLeagueNorthPokecenter1F_RivalLeaveWest:
    ApplyMovement LOCALID_RIVAL, PokemonLeagueNorthPokecenter1F_Movement_RivalLeaveWest
    WaitMovement
    GoTo PokemonLeagueNorthPokecenter1F_RemoveRival

PokemonLeagueNorthPokecenter1F_RemoveRival:
    PlayFanfare SEQ_SE_DP_KAIDAN2
    RemoveObject LOCALID_RIVAL
    WaitFanfare SEQ_SE_DP_KAIDAN2
    SetVar VAR_RIVAL_BEAT_SUNYSHORE_GYM, 1
    ReleaseAll
    End

PokemonLeagueNorthPokecenter1F_BlackOutFromRivalBattle:
    SetFlag FLAG_HIDE_POKEMON_LEAGUE_NORTH_POKECENTER_1F_RIVAL
    BlackOutFromBattle
    ReleaseAll
    End

    .balign 4, 0
PokemonLeagueNorthPokecenter1F_Movement_PlayerFaceRival:
    WalkOnSpotFastSouth
    EndMovement

    .balign 4, 0
PokemonLeagueNorthPokecenter1F_Movement_RivalEnterWest:
    WalkFastNorth 3
    WalkFastWest
    WalkFastNorth 3
    EndMovement

    .balign 4, 0
PokemonLeagueNorthPokecenter1F_Movement_RivalEnterNorth:
    WalkFastNorth 6
    EndMovement

    .balign 4, 0
PokemonLeagueNorthPokecenter1F_Movement_RivalEnterEast:
    WalkFastNorth 3
    WalkFastEast
    WalkFastNorth 3
    EndMovement

    .balign 4, 0
PokemonLeagueNorthPokecenter1F_Movement_RivalLeaveEast:
    WalkFastSouth 3
    WalkFastEast
    WalkFastSouth 3
    EndMovement

    .balign 4, 0
PokemonLeagueNorthPokecenter1F_Movement_RivalLeaveSouth:
    WalkFastSouth 6
    EndMovement

    .balign 4, 0
PokemonLeagueNorthPokecenter1F_Movement_RivalLeaveWest:
    WalkFastSouth 3
    WalkFastWest
    WalkFastSouth 3
    EndMovement

PokemonLeagueNorthPokecenter1F_AceTrainerF:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message PokemonLeagueNorthPokecenter1F_Text_ImNeverGivingUp
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

PokemonLeagueNorthPokecenter1F_Guitarist:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message PokemonLeagueNorthPokecenter1F_Text_ExperienceItForYourself
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

PokemonLeagueNorthPokecenter1F_Nurse:
    Common_CallPokecenterNurse 3
    End

    .balign 4, 0
