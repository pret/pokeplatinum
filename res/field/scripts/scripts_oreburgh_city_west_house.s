#include "macros/scrcmd.inc"
#include "res/text/bank/oreburgh_city_west_house.h"


    ScriptEntry OreburghCityWestHouse_Youngster
    ScriptEntry OreburghCityWestHouse_PokefanF
    ScriptEntry OreburghCityWestHouse_Pikachu
    ScriptEntryEnd

OreburghCityWestHouse_Youngster:
    NPCMessage OreburghCityWestHouse_Text_HaveYouEverSeenOrHeardAboutDifferentlyColoredPokemon
    End

OreburghCityWestHouse_PokefanF:
    NPCMessage OreburghCityWestHouse_Text_YouKnowHowPokemonHaveDifferentNaturesLikeWeHavePersonalities
    End

OreburghCityWestHouse_Pikachu:
    PokemonCryAndMessage SPECIES_PIKACHU, OreburghCityWestHouse_Text_PikachuPikaaah
    End

    .balign 4, 0
