#include "macros/scrcmd.inc"
#include "res/text/bank/pokemon_league.h"


    ScriptEntry PokemonLeague_ArrowSignPokemonleague
    ScriptEntry PokemonLeague_SignboardVictoryRoad
    ScriptEntry PokemonLeague_Statue
    ScriptEntryEnd

PokemonLeague_ArrowSignPokemonleague:
    ShowArrowSign PokemonLeague_Text_PokemonLeagueAhead
    End

PokemonLeague_SignboardVictoryRoad:
    ShowLandmarkSign PokemonLeague_Text_VictoryRoadAhead
    End

PokemonLeague_Statue:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message PokemonLeague_Text_PokemonLeagueThePinnacleOfTrainerdom
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
