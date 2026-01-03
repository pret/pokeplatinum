#include "macros/scrcmd.inc"
#include "res/text/bank/pokemon_league_hallway_to_hall_of_fame.h"
#include "res/field/events/events_pokemon_league_hallway_to_hall_of_fame.h"


    ScriptEntry PokemonLeagueHallwayToHallOfFame_OnFrame
    ScriptEntry PokemonLeagueHallwayToHallOfFame_OnFrame
    ScriptEntryEnd

PokemonLeagueHallwayToHallOfFame_OnFrame:
    LockAll
    ApplyMovement LOCALID_PLAYER, PokemonLeagueHallwayToHallOfFame_Movement_PlayerEnterHallway
    WaitMovement
    SetObjectEventPos LOCALID_CYNTHIA, 6, 14
    ClearFlag FLAG_HIDE_POKEMON_LEAGUE_HALLWAY_TO_HALL_OF_FAME_CYNTHIA
    AddObject LOCALID_CYNTHIA
    LockObject LOCALID_CYNTHIA
    ApplyMovement LOCALID_CYNTHIA, PokemonLeagueHallwayToHallOfFame_Movement_CynthiaApproachPlayer
    ApplyMovement LOCALID_PLAYER, PokemonLeagueHallwayToHallOfFame_Movement_PlayerFaceCynthia
    WaitMovement
    Message PokemonLeagueHallwayToHallOfFame_Text_TheRoomAheadIsTheHallOfFame
    CloseMessage
    SetObjectEventPos LOCALID_PROF_ROWAN, 4, 14
    ClearFlag FLAG_HIDE_POKEMON_LEAGUE_HALLWAY_TO_HALL_OF_FAME_PROF_ROWAN
    AddObject LOCALID_PROF_ROWAN
    LockObject LOCALID_PROF_ROWAN
    ApplyMovement LOCALID_PROF_ROWAN, PokemonLeagueHallwayToHallOfFame_Movement_RowanApproachPlayer
    WaitMovement
    ApplyMovement LOCALID_PLAYER, PokemonLeagueHallwayToHallOfFame_Movement_PlayerFaceRowan
    WaitMovement
    BufferPlayerName 0
    Message PokemonLeagueHallwayToHallOfFame_Text_YourLastBattleWasSplendid
    CloseMessage
    ApplyMovement LOCALID_CYNTHIA, PokemonLeagueHallwayToHallOfFame_Movement_ExclamationMark
    WaitMovement
    Message PokemonLeagueHallwayToHallOfFame_Text_HelloProfessorRowan
    BufferPlayerName 0
    Message PokemonLeagueHallwayToHallOfFame_Text_YouveGrownIntoARealChampion
    ApplyMovement LOCALID_CYNTHIA, PokemonLeagueHallwayToHallOfFame_Movement_WalkInPlaceWest
    WaitMovement
    Message PokemonLeagueHallwayToHallOfFame_Text_ProfessorYouStillEnjoyEnthusiasm
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_MALE, PokemonLeagueHallwayToHallOfFame_StepThisWayPleaseMale
    GoToIfEq VAR_RESULT, GENDER_FEMALE, PokemonLeagueHallwayToHallOfFame_StepThisWayPleaseFemale
    End

PokemonLeagueHallwayToHallOfFame_StepThisWayPleaseMale:
    BufferPlayerName 0
    Message PokemonLeagueHallwayToHallOfFame_Text_StepThisWayPleaseMale
    GoTo PokemonLeagueHallwayToHallOfFame_EnterHallOfFameRoom

PokemonLeagueHallwayToHallOfFame_StepThisWayPleaseFemale:
    BufferPlayerName 0
    Message PokemonLeagueHallwayToHallOfFame_Text_StepThisWayPleaseFemale
    GoTo PokemonLeagueHallwayToHallOfFame_EnterHallOfFameRoom

PokemonLeagueHallwayToHallOfFame_EnterHallOfFameRoom:
    Message PokemonLeagueHallwayToHallOfFame_Text_ProfessorRowanPleaseJoinUs
    CloseMessage
    ApplyMovement LOCALID_CYNTHIA, PokemonLeagueHallwayToHallOfFame_Movement_CynthiaEnterHallOfFameRoom
    ApplyMovement LOCALID_PROF_ROWAN, PokemonLeagueHallwayToHallOfFame_Movement_RowanEnterHallOfFameRoom
    ApplyMovement LOCALID_PLAYER, PokemonLeagueHallwayToHallOfFame_Movement_PlayerEnterHallOfFameRoom
    WaitMovement
    PlayFanfare SEQ_SE_DP_KAIDAN2
    FadeScreenOut
    WaitFadeScreen
    Warp MAP_HEADER_POKEMON_LEAGUE_HALL_OF_FAME, 0, 8, 15, 0
    FadeScreenIn
    WaitFadeScreen
    ReleaseAll
    End

    .balign 4, 0
PokemonLeagueHallwayToHallOfFame_Movement_RowanApproachPlayer:
    WalkNormalNorth 8
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
PokemonLeagueHallwayToHallOfFame_Movement_RowanEnterHallOfFameRoom:
    Delay8 3
    WalkNormalNorth 2
    WalkNormalEast
    WalkNormalNorth 2
    SetInvisible
    EndMovement

    .balign 4, 0
PokemonLeagueHallwayToHallOfFame_Movement_CynthiaApproachPlayer:
    WalkNormalNorth 8
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
PokemonLeagueHallwayToHallOfFame_Movement_ExclamationMark:
    WalkOnSpotNormalWest
    EmoteExclamationMark
    EndMovement

    .balign 4, 0
PokemonLeagueHallwayToHallOfFame_Movement_WalkInPlaceWest:
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
PokemonLeagueHallwayToHallOfFame_Movement_CynthiaEnterHallOfFameRoom:
    WalkNormalNorth 2
    WalkNormalWest
    WalkNormalNorth 2
    SetInvisible
    EndMovement

    .balign 4, 0
PokemonLeagueHallwayToHallOfFame_Movement_PlayerEnterHallway:
    WalkNormalNorth 17
    Delay8
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
PokemonLeagueHallwayToHallOfFame_Movement_PlayerFaceCynthia:
    Delay8 6
    WalkOnSpotNormalEast
    EndMovement

PokemonLeagueElevatorToHallOfFame_UnusedMovement:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
PokemonLeagueHallwayToHallOfFame_Movement_PlayerFaceRowan:
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
PokemonLeagueHallwayToHallOfFame_Movement_PlayerEnterHallOfFameRoom:
    Delay8
    WalkOnSpotNormalNorth
    Delay8 6
    WalkNormalNorth 4
    EndMovement
