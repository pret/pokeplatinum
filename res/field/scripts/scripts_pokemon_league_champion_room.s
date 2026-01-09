#include "macros/scrcmd.inc"
#include "res/text/bank/pokemon_league_champion_room.h"
#include "res/field/events/events_pokemon_league_champion_room.h"


    ScriptEntry PokemonLeagueChampionRoom_OnTransition
    ScriptEntry PokemonLeagueChampionRoom_OnFrame
    ScriptEntryEnd

PokemonLeagueChampionRoom_OnTransition:
    InitPersistedMapFeaturesForPlatformLift
    End

PokemonLeagueChampionRoom_OnFrame:
    ApplyMovement LOCALID_PLAYER, PokemonLeagueChampionRoom_Movement_PlayerApproachCynthia
    WaitMovement
    PlayTrainerEncounterBGM TRAINER_CHAMPION_CYNTHIA
    CallIfUnset FLAG_GAME_COMPLETED, PokemonLeagueChampionRoom_CynthiaIntro
    CallIfSet FLAG_GAME_COMPLETED, PokemonLeagueChampionRoom_CynthiaGameCompletedIntro
    CloseMessage
    SetFlag FLAG_ALT_MUSIC_CHAMPION_ROOM
    CallIfUnset FLAG_ARRESTED_CHARON_STARK_MOUNTAIN, PokemonLeagueChampionRoom_StartCynthiaBattle
    CallIfSet FLAG_ARRESTED_CHARON_STARK_MOUNTAIN, PokemonLeagueChampionRoom_StartCynthiaRematchBattle
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, PokemonLeagueChampionRoom_BlackOut
    Message PokemonLeagueChampionRoom_Text_CynthiaDefeat
    SetFlag FLAG_DEFEATED_CYNTHIA
    CallIfUnset FLAG_ARRESTED_CHARON_STARK_MOUNTAIN, PokemonLeagueChampionRoom_CreateJournalEventDefeatedCynthia
    CallIfSet FLAG_ARRESTED_CHARON_STARK_MOUNTAIN, PokemonLeagueChampionRoom_CreateJournalEventDefeatedRematchCynthia
    Message PokemonLeagueChampionRoom_Text_ComeWithMe
    CloseMessage
    ApplyMovement LOCALID_CYNTHIA, PokemonLeagueChampionRoom_CynthiaMoveAwayFromElevator
    WaitMovement
    ApplyMovement LOCALID_PLAYER, PokemonLeagueChampionRoom_PlayerEnterElevator
    WaitMovement
    ApplyMovement LOCALID_CYNTHIA, PokemonLeagueChampionRoom_CynthiaFacePlayer
    WaitMovement
    WaitTime 30, VAR_RESULT
    TriggerPlatformLift
    WaitTime 30, VAR_RESULT
    SetFlag FLAG_HIDE_POKEMON_LEAGUE_HALLWAY_TO_HALL_OF_FAME_CYNTHIA
    SetFlag FLAG_HIDE_POKEMON_LEAGUE_HALLWAY_TO_HALL_OF_FAME_PROF_ROWAN
    ApplyMovement LOCALID_PLAYER, PokemonLeagueChampionRoom_EnterHallwayToHallOfFame
    WaitMovement
    PlayFanfare SEQ_SE_DP_KAIDAN2
    FadeScreenOut
    WaitFadeScreen
    Warp MAP_HEADER_POKEMON_LEAGUE_HALLWAY_TO_HALL_OF_FAME, 0, 5, 23, 0
    FadeScreenIn
    WaitFadeScreen
    ReleaseAll
    End

PokemonLeagueChampionRoom_CynthiaIntro:
    Message PokemonLeagueChampionRoom_Text_CynthiaIntro
    Return

PokemonLeagueChampionRoom_CynthiaGameCompletedIntro:
    Message PokemonLeagueChampionRoom_Text_CynthiaGameCompletedIntro
    Return

PokemonLeagueChampionRoom_StartCynthiaBattle:
    StartTrainerBattle TRAINER_CHAMPION_CYNTHIA
    Return

PokemonLeagueChampionRoom_StartCynthiaRematchBattle:
    StartTrainerBattle TRAINER_CHAMPION_CYNTHIA_REMATCH
    Return

PokemonLeagueChampionRoom_CreateJournalEventDefeatedCynthia:
    CreateJournalEvent LOCATION_EVENT_BEAT_CHAMPION, TRAINER_CHAMPION_CYNTHIA, 0, 0, 0
    Return

PokemonLeagueChampionRoom_CreateJournalEventDefeatedRematchCynthia:
    CreateJournalEvent LOCATION_EVENT_BEAT_CHAMPION, TRAINER_CHAMPION_CYNTHIA_REMATCH, 0, 0, 0
    Return

PokemonLeagueChampionRoom_BlackOut:
    ClearFlag FLAG_ALT_MUSIC_CHAMPION_ROOM
    BlackOutFromBattle
    ReleaseAll
    End

    .balign 4, 0
PokemonLeagueChampionRoom_Movement_PlayerApproachCynthia:
    WalkNormalNorth 4
    EndMovement

    .balign 4, 0
PokemonLeagueChampionRoom_PlayerEnterElevator:
    WalkNormalNorth 6
    EndMovement

    .balign 4, 0
PokemonLeagueChampionRoom_EnterHallwayToHallOfFame:
    WalkNormalNorth 6
    EndMovement

    .balign 4, 0
PokemonLeagueChampionRoom_CynthiaMoveAwayFromElevator:
    WalkNormalWest
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
PokemonLeagueChampionRoom_CynthiaFacePlayer:
    WalkOnSpotNormalNorth
    EndMovement
