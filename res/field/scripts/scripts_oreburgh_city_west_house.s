#include "macros/scrcmd.inc"
#include "res/text/bank/oreburgh_city_west_house.h"


    ScriptEntry OreburghCityWestHouse_Youngster
    ScriptEntry OreburghCityWestHouse_PokefanF
    ScriptEntry OreburghCityWestHouse_Pikachu
    ScriptEntryEnd

OreburghCityWestHouse_Youngster:
    NPCMessage OreburghCityWestHouse_Text_HaveYouSeenDifferentlyColoredPokemon
    End

OreburghCityWestHouse_PokefanF:
    NPCMessage OreburghCityWestHouse_Text_PokemonHaveDifferentNatures
    End

OreburghCityWestHouse_Pikachu:
    PokemonCryAndMessage SPECIES_PIKACHU, OreburghCityWestHouse_Text_PikachuCry
    End

    .balign 4, 0
