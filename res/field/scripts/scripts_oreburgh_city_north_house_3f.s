#include "macros/scrcmd.inc"
#include "res/text/bank/oreburgh_city_north_house_3f.h"


    ScriptEntry OreburghCityNorthHouse3F_PokefanF
    ScriptEntry OreburghCityNorthHouse3F_Worker
    ScriptEntry OreburghCityNorthHouse3F_Twin
    ScriptEntryEnd

OreburghCityNorthHouse3F_PokefanF:
    NPCMessage OreburghCityNorthHouse3F_Text_DuringTheDaytimeEveryoneGoesOffToTheMine
    End

OreburghCityNorthHouse3F_Worker:
    NPCMessage OreburghCityNorthHouse3F_Text_WellKeepDiggingCoal
    End

OreburghCityNorthHouse3F_Twin:
    NPCMessage OreburghCityNorthHouse3F_Text_EveryoneIncludingLotsOfPokemonDugTheBigUndergroundMaze
    End

    .balign 4, 0
