#include "macros/scrcmd.inc"
#include "res/text/bank/route_222_west_house.h"


    ScriptEntry Route222WestHouse_OnTransition
    ScriptEntry Route222WestHouse_Pikachu
    ScriptEntry Route222WestHouse_Unused3
    ScriptEntry Route222WestHouse_Unused4
    ScriptEntry Route222WestHouse_Unused5
    ScriptEntry Route222WestHouse_Unused6
    ScriptEntry Route222WestHouse_PokefanM
    ScriptEntryEnd

Route222WestHouse_OnTransition:
    SetFlag FLAG_FIRST_ARRIVAL_PIKACHU_FAN_CLUB
    End

Route222WestHouse_Pikachu:
    PokemonCryAndMessage SPECIES_PIKACHU, Route222WestHouse_Text_PikachuCryPikachuu
    End

Route222WestHouse_Unused3:
    PokemonCryAndMessage SPECIES_PIKACHU, Route222WestHouse_Text_PikachuCryPikaah
    End

Route222WestHouse_Unused4:
    PokemonCryAndMessage SPECIES_PIKACHU, Route222WestHouse_Text_PikachuCryPikaPika
    End

Route222WestHouse_Unused5:
    PokemonCryAndMessage SPECIES_PIKACHU, Route222WestHouse_Text_PikachuCryPiPikachu
    End

Route222WestHouse_Unused6:
    PokemonCryAndMessage SPECIES_PIKACHU, Route222WestHouse_Text_PikachuCryPiiKaahchu
    End

Route222WestHouse_PokefanM:
    NPCMessage Route222WestHouse_Text_OnlyPikachu
    End

    .balign 4, 0
