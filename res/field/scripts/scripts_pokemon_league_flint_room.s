#include "macros/scrcmd.inc"
#include "res/text/bank/pokemon_league_flint_room.h"
#include "res/field/events/events_pokemon_league_flint_room.h"


    ScriptEntry PokemonLeagueFlintRoom_Flint
    ScriptEntry PokemonLeagueFlintRoom_OnFrame
    ScriptEntryEnd

PokemonLeagueFlintRoom_Flint:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_DEFEATED_FLINT, PokemonLeagueFlintRoom_PostBattle
    PlayTrainerEncounterBGM TRAINER_ELITE_FOUR_FLINT
    CallIfUnset FLAG_GAME_COMPLETED, PokemonLeagueFlintRoom_FlintIntro
    CallIfSet FLAG_GAME_COMPLETED, PokemonLeagueFlintRoom_FlintGameCompletedIntro
    CloseMessage
    CallIfUnset FLAG_ARRESTED_CHARON_STARK_MOUNTAIN, PokemonLeagueFlintRoom_StartFlintBattle
    CallIfSet FLAG_ARRESTED_CHARON_STARK_MOUNTAIN, PokemonLeagueFlintRoom_StartFlintRematchBattle
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, PokemonLeagueFlintRoom_BlackOut
    SetFlag FLAG_DEFEATED_FLINT
    PlayFanfare SEQ_SE_DP_KI_GASYAN
    RemoveObject LOCALID_EXIT_DOOR
    CallIfUnset FLAG_ARRESTED_CHARON_STARK_MOUNTAIN, PokemonLeagueFlintRoom_CreateJournalEventDefeatedFlint
    CallIfSet FLAG_ARRESTED_CHARON_STARK_MOUNTAIN, PokemonLeagueFlintRoom_CreateJournalEventDefeatedRematchFlint
    CallIfUnset FLAG_GAME_COMPLETED, PokemonLeagueFlintRoom_FlintDefeat
    CallIfSet FLAG_GAME_COMPLETED, PokemonLeagueFlintRoom_FlintGameCompletedDefeat
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

PokemonLeagueFlintRoom_StartFlintBattle:
    StartTrainerBattle TRAINER_ELITE_FOUR_FLINT
    Return

PokemonLeagueFlintRoom_StartFlintRematchBattle:
    StartTrainerBattle TRAINER_ELITE_FOUR_FLINT_REMATCH
    Return

PokemonLeagueFlintRoom_CreateJournalEventDefeatedFlint:
    CreateJournalEvent LOCATION_EVENT_BEAT_ELITE_FOUR_MEMBER, TRAINER_ELITE_FOUR_FLINT, 0, 0, 0
    Return

PokemonLeagueFlintRoom_CreateJournalEventDefeatedRematchFlint:
    CreateJournalEvent LOCATION_EVENT_BEAT_ELITE_FOUR_MEMBER, TRAINER_ELITE_FOUR_FLINT_REMATCH, 0, 0, 0
    Return

PokemonLeagueFlintRoom_BlackOut:
    BlackOutFromBattle
    ReleaseAll
    End

PokemonLeagueFlintRoom_PostBattle:
    CallIfUnset FLAG_GAME_COMPLETED, PokemonLeagueFlintRoom_FlintPostBattle
    CallIfSet FLAG_GAME_COMPLETED, PokemonLeagueFlintRoom_FlintGameCompletedPostBattle
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

PokemonLeagueFlintRoom_FlintIntro:
    Message PokemonLeagueFlintRoom_Text_FlintIntroPart1
    CloseMessage
    ApplyMovement LOCALID_FLINT, PokemonLeagueFlintRoom_Movement_WalkFastInPlace
    WaitMovement
    Message PokemonLeagueFlintRoom_Text_FlintIntroPart2
    Return

PokemonLeagueFlintRoom_FlintGameCompletedIntro:
    Message PokemonLeagueFlintRoom_Text_FlintGameCompletedIntro
    Return

PokemonLeagueFlintRoom_FlintDefeat:
    Message PokemonLeagueFlintRoom_Text_FlintDefeat
    Return

PokemonLeagueFlintRoom_FlintGameCompletedDefeat:
    Message PokemonLeagueFlintRoom_Text_FlintGameCompletedDefeat
    Return

PokemonLeagueFlintRoom_FlintPostBattle:
    Message PokemonLeagueFlintRoom_Text_FlintPostBattle
    Return

PokemonLeagueFlintRoom_FlintGameCompletedPostBattle:
    Message PokemonLeagueFlintRoom_Text_FlintGameCompletedPostBattle
    Return

    .balign 4, 0
PokemonLeagueFlintRoom_Movement_WalkFastInPlace:
    LockDir
    WalkOnSpotNormalSouth 3
    WalkOnSpotFastSouth 4
    WalkOnSpotFasterSouth 2
    UnlockDir
    EndMovement

PokemonLeagueFlintRoom_OnFrame:
    LockAll
    ApplyMovement LOCALID_PLAYER, PokemonLeagueFlintRoom_Movement_PlayerEnterRoom
    WaitMovement
    PlayFanfare SEQ_SE_DP_KI_GASYAN
    ClearFlag FLAG_HIDE_POKEMON_LEAGUE_FLINT_ROOM_ENTRANCE_DOOR
    AddObject LOCALID_ENTRANCE_DOOR
    SetVar VAR_MAP_LOCAL_1, 1
    ReleaseAll
    End

    .balign 4, 0
PokemonLeagueFlintRoom_Movement_PlayerEnterRoom:
    WalkNormalNorth 2
    EndMovement
