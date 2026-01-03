#include "macros/scrcmd.inc"
#include "res/text/bank/pokemon_league_lucian_room.h"
#include "res/field/events/events_pokemon_league_lucian_room.h"


    ScriptEntry PokemonLeagueLucianRoom_Lucian
    ScriptEntry PokemonLeagueLucianRoom_OnFrame
    ScriptEntryEnd

PokemonLeagueLucianRoom_Lucian:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_DEFEATED_LUCIAN, PokemonLeagueLucianRoom_LucianPostBattle
    PlayTrainerEncounterBGM TRAINER_ELITE_FOUR_LUCIAN
    Message PokemonLeagueLucianRoom_Text_LucianIntro
    CloseMessage
    CallIfUnset FLAG_ARRESTED_CHARON_STARK_MOUNTAIN, PokemonLeagueLucianRoom_StartLucianBattle
    CallIfSet FLAG_ARRESTED_CHARON_STARK_MOUNTAIN, PokemonLeagueLucianRoom_StartLucianRematchBattle
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, PokemonLeagueLucianRoom_BlackOut
    SetFlag FLAG_DEFEATED_LUCIAN
    PlayFanfare SEQ_SE_DP_KI_GASYAN
    RemoveObject LOCALID_EXIT_DOOR
    CallIfUnset FLAG_ARRESTED_CHARON_STARK_MOUNTAIN, PokemonLeagueLucianRoom_CreateJournalEventDefeatedLucian
    CallIfSet FLAG_ARRESTED_CHARON_STARK_MOUNTAIN, PokemonLeagueLucianRoom_CreateJournalEventDefeatedRematchLucian
    Message PokemonLeagueLucianRoom_Text_LucianDefeat
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

PokemonLeagueLucianRoom_StartLucianBattle:
    StartTrainerBattle TRAINER_ELITE_FOUR_LUCIAN
    Return

PokemonLeagueLucianRoom_StartLucianRematchBattle:
    StartTrainerBattle TRAINER_ELITE_FOUR_LUCIAN_REMATCH
    Return

PokemonLeagueLucianRoom_CreateJournalEventDefeatedLucian:
    CreateJournalEvent LOCATION_EVENT_BEAT_ELITE_FOUR_MEMBER, TRAINER_ELITE_FOUR_LUCIAN, 0, 0, 0
    Return

PokemonLeagueLucianRoom_CreateJournalEventDefeatedRematchLucian:
    CreateJournalEvent LOCATION_EVENT_BEAT_ELITE_FOUR_MEMBER, TRAINER_ELITE_FOUR_LUCIAN_REMATCH, 0, 0, 0
    Return

PokemonLeagueLucianRoom_BlackOut:
    BlackOutFromBattle
    ReleaseAll
    End

PokemonLeagueLucianRoom_LucianPostBattle:
    Message PokemonLeagueLucianRoom_Text_LucianPostBattle
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

PokemonLeagueLucianRoom_OnFrame:
    LockAll
    ApplyMovement LOCALID_PLAYER, PokemonLeagueLucianRoom_Movement_PlayerEnterRoom
    WaitMovement
    PlayFanfare SEQ_SE_DP_KI_GASYAN
    ClearFlag FLAG_HIDE_POKEMON_LEAGUE_LUCIAN_ROOM_ENTRANCE_DOOR
    AddObject LOCALID_ENTRANCE_DOOR
    SetVar VAR_MAP_LOCAL_1, 1
    ReleaseAll
    End

    .balign 4, 0
PokemonLeagueLucianRoom_Movement_PlayerEnterRoom:
    WalkNormalNorth 2
    EndMovement
