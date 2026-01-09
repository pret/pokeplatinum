#include "macros/scrcmd.inc"
#include "res/text/bank/pokemon_league_aaron_room.h"
#include "res/field/events/events_pokemon_league_aaron_room.h"


    ScriptEntry PokemonLeagueAaronRoom_Aaron
    ScriptEntry PokemonLeagueAaronRoom_OnFrame
    ScriptEntryEnd

PokemonLeagueAaronRoom_Aaron:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_DEFEATED_AARON, PokemonLeagueAaronRoom_AaronPostBattle
    PlayTrainerEncounterBGM TRAINER_ELITE_FOUR_AARON
    Message PokemonLeagueAaronRoom_Text_AaronIntro
    CloseMessage
    CallIfUnset FLAG_ARRESTED_CHARON_STARK_MOUNTAIN, PokemonLeagueAaronRoom_StartAaronBattle
    CallIfSet FLAG_ARRESTED_CHARON_STARK_MOUNTAIN, PokemonLeagueAaronRoom_StartAaronRematchBattle
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, PokemonLeagueAaronRoom_BlackOut
    SetFlag FLAG_DEFEATED_AARON
    PlayFanfare SEQ_SE_DP_KI_GASYAN
    RemoveObject LOCALID_EXIT_DOOR
    CallIfUnset FLAG_ARRESTED_CHARON_STARK_MOUNTAIN, PokemonLeagueAaronRoom_CreateJournalEventDefeatedAaron
    CallIfSet FLAG_ARRESTED_CHARON_STARK_MOUNTAIN, PokemonLeagueAaronRoom_CreateJournalEventDefeatedRematchAaron
    Message PokemonLeagueAaronRoom_Text_AaronDefeat
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

PokemonLeagueAaronRoom_StartAaronBattle:
    StartTrainerBattle TRAINER_ELITE_FOUR_AARON
    Return

PokemonLeagueAaronRoom_StartAaronRematchBattle:
    StartTrainerBattle TRAINER_ELITE_FOUR_AARON_REMATCH
    Return

PokemonLeagueAaronRoom_CreateJournalEventDefeatedAaron:
    CreateJournalEvent LOCATION_EVENT_BEAT_ELITE_FOUR_MEMBER, TRAINER_ELITE_FOUR_AARON, 0, 0, 0
    Return

PokemonLeagueAaronRoom_CreateJournalEventDefeatedRematchAaron:
    CreateJournalEvent LOCATION_EVENT_BEAT_ELITE_FOUR_MEMBER, TRAINER_ELITE_FOUR_AARON_REMATCH, 0, 0, 0
    Return

PokemonLeagueAaronRoom_BlackOut:
    BlackOutFromBattle
    ReleaseAll
    End

PokemonLeagueAaronRoom_AaronPostBattle:
    Message PokemonLeagueAaronRoom_Text_AaronPostBattle
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

PokemonLeagueAaronRoom_OnFrame:
    LockAll
    ApplyMovement LOCALID_PLAYER, PokemonLeagueAaronRoom_Movement_PlayerEnterRoom
    WaitMovement
    PlayFanfare SEQ_SE_DP_KI_GASYAN
    ClearFlag FLAG_HIDE_POKEMON_LEAGUE_AARON_ROOM_ENTRANCE_DOOR
    AddObject LOCALID_ENTRANCE_DOOR
    SetVar VAR_MAP_LOCAL_1, 1
    ReleaseAll
    End

    .balign 4, 0
PokemonLeagueAaronRoom_Movement_PlayerEnterRoom:
    WalkNormalNorth 2
    EndMovement
