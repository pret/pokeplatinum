#include "macros/scrcmd.inc"
#include "res/text/bank/route_222_west_house.h"


    ScriptEntry _001E
    ScriptEntry _0024
    ScriptEntry _0043
    ScriptEntry _0062
    ScriptEntry _0081
    ScriptEntry _00A0
    ScriptEntry _00BF
    ScriptEntryEnd

_001E:
    SetFlag FLAG_FIRST_ARRIVAL_PIKACHU_FAN_CLUB
    End

_0024:
    PokemonCryAndMessage SPECIES_PIKACHU, 0
    End

_0043:
    PokemonCryAndMessage SPECIES_PIKACHU, 1
    End

_0062:
    PokemonCryAndMessage SPECIES_PIKACHU, 2
    End

_0081:
    PokemonCryAndMessage SPECIES_PIKACHU, 3
    End

_00A0:
    PokemonCryAndMessage SPECIES_PIKACHU, 4
    End

_00BF:
    NPCMessage 5
    End

    .balign 4, 0
