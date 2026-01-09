#include "macros/scrcmd.inc"
#include "generated/hidden_locations.h"
#include "res/text/bank/pokemon_league_hall_of_fame.h"
#include "res/field/events/events_pokemon_league_hall_of_fame.h"


    ScriptEntry PokemonLeagueHallOfFame_OnFrame
    ScriptEntryEnd

PokemonLeagueHallOfFame_OnFrame:
    LockAll
    ApplyMovement LOCALID_PLAYER, PokemonLeague_HallOfFame_Movement_WalkUp
    WaitMovement
    ApplyMovement LOCALID_PROF_ROWAN, PokemonLeague_HallOfFame_Movement_TurnAroundInPlace
    WaitMovement
    GetLeagueVictories VAR_RESULT
    CallIfEq VAR_RESULT, 0, PokemonLeagueHallOfFame_FirstVictoryMessages
    CallIfNe VAR_RESULT, 0, PokemonLeagueHallOfFame_RepeatVictoryMessages
    CloseMessage
    ApplyMovement LOCALID_PROF_ROWAN, PokemonLeagueHallOfFame_Movement_RowanFacePlayer
    ApplyMovement LOCALID_CYNTHIA, PokemonLeagueHallOfFame_Movement_CynthiaFacePlayer
    WaitMovement
    WaitTime 15, VAR_RESULT
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_MALE, PokemonLeagueHallOfFame_WelcomeToTheHallOfFameMale
    GoToIfEq VAR_RESULT, GENDER_FEMALE, PokemonLeagueHallOfFame_WelcomeToTheHallOfFameFemale
    End

PokemonLeagueHallOfFame_WelcomeToTheHallOfFameMale:
    BufferPlayerName 0
    Message PokemonLeagueHallOfFame_Text_WelcomeToTheHallOfFameMale
    GoTo PokemonLeagueHallOfFame_EnterHallOfFame

PokemonLeagueHallOfFame_WelcomeToTheHallOfFameFemale:
    BufferPlayerName 0
    Message PokemonLeagueHallOfFame_Text_WelcomeToTheHallOfFameFemale
    GoTo PokemonLeagueHallOfFame_EnterHallOfFame

PokemonLeagueHallOfFame_EnterHallOfFame:
    CloseMessage
    ApplyMovement LOCALID_PLAYER, PokemonLeagueHallOfFame_Movement_PlayerApproachMachine
    ApplyMovement LOCALID_PROF_ROWAN, PokemonLeagueHallOfFame_Movement_RowanFaceMachine
    ApplyMovement LOCALID_CYNTHIA, PokemonLeagueHallOfFame_Movement_CynthiaFaceMachine
    WaitMovement
    Message PokemonLeagueHallOfFame_Text_TimeToRecordYourNameAndYourPokemon
    CloseMessage
    SetFlag FLAG_UNLOCKED_VS_SEEKER_LVL_4
    GetNationalDexEnabled VAR_RESULT
    CallIfEq VAR_RESULT, TRUE, PokemonLeagueHallOfFame_EnableHiddenLocationSpringPath
    CallIfEq VAR_UNK_0x40F4, 0, _0102
    GetPartyCount VAR_RESULT
    PlayHallOfFameHealingAnimation VAR_RESULT
    FadeScreenOut FADE_SCREEN_SPEED_MEDIUM
    WaitFadeScreen
    IncrementTrainerScore2 TRAINER_SCORE_EVENT_HALL_OF_FAME_ENTRY
    Call PokemonLeagueHallOfFame_SetHallOfFameVictoryFlagsAndVars
    ClearGame
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    ReleaseAll
    End

_0102:
    SetVar VAR_UNK_0x40F4, 1
    Return

PokemonLeagueHallOfFame_EnableHiddenLocationSpringPath:
    EnableHiddenLocation HIDDEN_LOCATION_SPRING_PATH
    Return

PokemonLeagueHallOfFame_FirstVictoryMessages:
    Message PokemonLeagueHallOfFame_Text_BeenAWhileSinceIEnteredThisRoom
    Message PokemonLeagueHallOfFame_Text_LastTimeWasLongTimeAgo
    Return

PokemonLeagueHallOfFame_RepeatVictoryMessages:
    Message PokemonLeagueHallOfFame_Text_AlwaysStraighterThanUsual
    Message PokemonLeagueHallOfFame_Text_ThisRoomIsALegacyToPokemonAndTrainers
    Return

    .balign 4, 0
PokemonLeague_HallOfFame_Movement_WalkUp:
    WalkNormalNorth 8
    EndMovement

    .balign 4, 0
PokemonLeagueHallOfFame_Movement_PlayerApproachMachine:
    WalkNormalNorth 2
    EndMovement

    .balign 4, 0
PokemonLeague_HallOfFame_Movement_TurnAroundInPlace:
    WalkOnSpotNormalNorth
    Delay8 2
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
PokemonLeagueHallOfFame_Movement_RowanFacePlayer:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
PokemonLeagueHallOfFame_Movement_RowanFaceMachine:
    Delay8
    WalkOnSpotNormalEast
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
PokemonLeagueHallOfFame_Movement_CynthiaFacePlayer:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
PokemonLeagueHallOfFame_Movement_CynthiaFaceMachine:
    Delay8
    WalkOnSpotNormalWest
    WalkOnSpotNormalNorth
    EndMovement

PokemonLeagueHallOfFame_SetHallOfFameVictoryFlagsAndVars:
    ClearFlag FLAG_HIDE_DAY_CARE_GYM_GUIDE
    ClearFlag FLAG_ALT_MUSIC_CHAMPION_ROOM
    CallIfUnset FLAG_CAUGHT_DIALGA, PokemonLeagueHallOfFame_ResetSpearPillarDialgaState
    CallIfUnset FLAG_CAUGHT_PALKIA, PokemonLeagueHallOfFame_ResetSpearPillarPalkiaState
    CallIfUnset FLAG_CAUGHT_HEATRAN, PokemonLeagueHallOfFame_TryShowStarkMountainHeatran
    CallIfUnset FLAG_CAUGHT_REGIGIGAS, PokemonLeagueHallOfFame_TryShowSnowpointTempleRegigigas
    CallIfUnset FLAG_CAUGHT_AZELF, PokemonLeagueHallOfFame_ClearFlagAzelfDisappeared
    CallIfUnset FLAG_CAUGHT_UXIE, PokemonLeagueHallOfFame_ClearFlagUxieDisappeared
    CallIfUnset FLAG_CAUGHT_GIRATINA, PokemonLeagueHallOfFame_ShowTurnbackCaveGiratina
    CallIfEq VAR_ROAMING_MESPRIT_STATE, ROAMER_STATE_DEFEATED, PokemonLeagueHallOfFame_ResetRoamingMesprit
    CallIfEq VAR_ROAMING_CRESSELIA_STATE, ROAMER_STATE_DEFEATED, PokemonLeagueHallOfFame_ResetRoamingCresselia
    CallIfEq VAR_ROAMING_MOLTRES_STATE, ROAMER_STATE_DEFEATED, PokemonLeagueHallOfFame_ResetRoamingMoltres
    CallIfEq VAR_ROAMING_ZAPDOS_STATE, ROAMER_STATE_DEFEATED, PokemonLeagueHallOfFame_ResetRoamingZapdos
    CallIfEq VAR_ROAMING_ARTICUNO_STATE, ROAMER_STATE_DEFEATED, PokemonLeagueHallOfFame_ResetRoamingArticuno
    CallIfEq VAR_PLAYER_HOUSE_POSTGAME_STATE, 0, PokemonLeagueHallOfFame_IncreasePlayerHousePostgameState
    ClearFlag FLAG_HIDE_SANDGEM_TOWN_COUNTERPART
    CallIfUnset FLAG_VEILSTONE_STORE_B1F_SPOKEN_TO_PROF_ROWAN, PokemonLeagueHallOfFame_ShowVeilstoneStoreB1FProfRowan
    ClearFlag FLAG_HIDE_CANALAVE_LIBRARY_1F_LUCIAN
    ClearFlag FLAG_TALKED_TO_CELESTIC_TOWN_CAVE_CYNTHIA
    SetFlag FLAG_HIDE_SENDOFF_SPRING_CYNTHIA
    Return

PokemonLeagueHallOfFame_IncreasePlayerHousePostgameState:
    SetVar VAR_PLAYER_HOUSE_POSTGAME_STATE, 1
    Return

PokemonLeagueHallOfFame_ResetSpearPillarDialgaState:
    SetVar VAR_SPEAR_PILLAR_DIALGA_STATE, 0
    Return

PokemonLeagueHallOfFame_ResetSpearPillarPalkiaState:
    SetVar VAR_SPEAR_PILLAR_PALKIA_STATE, 0
    Return

PokemonLeagueHallOfFame_TryShowStarkMountainHeatran:
    GoToIfUnset FLAG_CAUGHT_MESPRIT, PokemonLeagueHallOfFame_DontShowStarkMountainHeatran
    ClearFlag FLAG_HIDE_STARK_MOUNTAIN_ROOM_3_HEATRAN
    SetVar VAR_UNK_0x409E, 1
PokemonLeagueHallOfFame_DontShowStarkMountainHeatran:
    Return

PokemonLeagueHallOfFame_TryShowSnowpointTempleRegigigas:
    GetNationalDexEnabled VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, PokemonLeagueHallOfFame_DontShowSnowpointTempleRegigigas
    ClearFlag FLAG_HIDE_SNOWPOINT_TEMPLE_B5F_REGIGIGAS
PokemonLeagueHallOfFame_DontShowSnowpointTempleRegigigas:
    Return

PokemonLeagueHallOfFame_ClearFlagAzelfDisappeared:
    ClearFlag FLAG_AZELF_DISAPPEARED
    Return

PokemonLeagueHallOfFame_ClearFlagUxieDisappeared:
    ClearFlag FLAG_UXIE_DISAPPEARED
    Return

PokemonLeagueHallOfFame_ShowTurnbackCaveGiratina:
    ClearFlag FLAG_HIDE_TURNBACK_CAVE_GIRATINA_ROOM_GIRATINA
    Return

PokemonLeagueHallOfFame_ResetRoamingMesprit:
    ClearFlag FLAG_MESPRIT_DISAPPEARED
    SetVar VAR_ROAMING_MESPRIT_STATE, ROAMER_STATE_RESET
    Return

PokemonLeagueHallOfFame_ResetRoamingCresselia:
    ClearFlag FLAG_HIDE_FULLMOON_ISLAND_FOREST_CRESSELIA
    SetVar VAR_ROAMING_CRESSELIA_STATE, ROAMER_STATE_RESET
    Return

PokemonLeagueHallOfFame_ResetRoamingMoltres:
    SetVar VAR_ROAMING_MOLTRES_STATE, ROAMER_STATE_RESET
    Return

PokemonLeagueHallOfFame_ResetRoamingZapdos:
    SetVar VAR_ROAMING_ZAPDOS_STATE, ROAMER_STATE_RESET
    Return

PokemonLeagueHallOfFame_ResetRoamingArticuno:
    SetVar VAR_ROAMING_ARTICUNO_STATE, ROAMER_STATE_RESET
    Return

PokemonLeagueHallOfFame_ShowVeilstoneStoreB1FProfRowan:
    ClearFlag FLAG_VEILSTONE_STORE_B1F_HIDE_PROF_ROWAN
    Return

    .balign 4, 0
