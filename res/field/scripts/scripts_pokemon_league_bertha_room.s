#include "macros/scrcmd.inc"
#include "res/text/bank/pokemon_league_bertha_room.h"
#include "res/field/events/events_pokemon_league_bertha_room.h"


    ScriptEntry PokemonLeagueBerthaRoom_Bertha
    ScriptEntry PokemonLeagueBerthaRoom_OnFrame
    ScriptEntryEnd

PokemonLeagueBerthaRoom_Bertha:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_DEFEATED_BERTHA, PokemonLeagueBerthaRoom_BerthaPostBattle
    PlayTrainerEncounterBGM TRAINER_ELITE_FOUR_BERTHA
    Message PokemonLeagueBerthaRoom_Text_BerthaIntro
    CloseMessage
    CallIfUnset FLAG_ARRESTED_CHARON_STARK_MOUNTAIN, PokemonLeagueBerthaRoom_StartBerthaBattle
    CallIfSet FLAG_ARRESTED_CHARON_STARK_MOUNTAIN, PokemonLeagueBerthaRoom_StartBerthaRematchBattle
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, PokemonLeagueBerthaRoom_BlackOut
    SetFlag FLAG_DEFEATED_BERTHA
    PlayFanfare SEQ_SE_DP_KI_GASYAN
    RemoveObject LOCALID_EXIT_DOOR
    CallIfUnset FLAG_ARRESTED_CHARON_STARK_MOUNTAIN, PokemonLeagueBerthaRoom_CreateJournalEventDefeatedBertha
    CallIfSet FLAG_ARRESTED_CHARON_STARK_MOUNTAIN, PokemonLeagueBerthaRoom_CreateJournalEventDefeatedRematchBertha
    Message PokemonLeagueBerthaRoom_Text_BerthaDefeat
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

PokemonLeagueBerthaRoom_StartBerthaBattle:
    StartTrainerBattle TRAINER_ELITE_FOUR_BERTHA
    Return

PokemonLeagueBerthaRoom_StartBerthaRematchBattle:
    StartTrainerBattle TRAINER_ELITE_FOUR_BERTHA_REMATCH
    Return

PokemonLeagueBerthaRoom_CreateJournalEventDefeatedBertha:
    CreateJournalEvent LOCATION_EVENT_BEAT_ELITE_FOUR_MEMBER, TRAINER_ELITE_FOUR_BERTHA, 0, 0, 0
    Return

PokemonLeagueBerthaRoom_CreateJournalEventDefeatedRematchBertha:
    CreateJournalEvent LOCATION_EVENT_BEAT_ELITE_FOUR_MEMBER, TRAINER_ELITE_FOUR_BERTHA_REMATCH, 0, 0, 0
    Return

PokemonLeagueBerthaRoom_BlackOut:
    BlackOutFromBattle
    ReleaseAll
    End

PokemonLeagueBerthaRoom_BerthaPostBattle:
    Message PokemonLeagueBerthaRoom_Text_BerthaPostBattle
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

PokemonLeagueBerthaRoom_OnFrame:
    LockAll
    ApplyMovement LOCALID_PLAYER, PokemonLeagueBerthaRoom_Movement_PlayerEnterRoom
    WaitMovement
    PlayFanfare SEQ_SE_DP_KI_GASYAN
    ClearFlag FLAG_HIDE_POKEMON_LEAGUE_BERTHA_ROOM_ENTRANCE_DOOR
    AddObject LOCALID_ENTRANCE_DOOR
    SetVar VAR_MAP_LOCAL_1, 1
    ReleaseAll
    End

    .balign 4, 0
PokemonLeagueBerthaRoom_Movement_PlayerEnterRoom:
    WalkNormalNorth 2
    EndMovement
