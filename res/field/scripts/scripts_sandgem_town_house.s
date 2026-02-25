#include "macros/scrcmd.inc"
#include "res/text/bank/sandgem_town_house.h"


    ScriptEntry SandgemTownHouse_BreederM
    ScriptEntry SandgemTownHouse_BreederF
    ScriptEntryEnd

SandgemTownHouse_BreederM:
    NPCMessage SandgemTownHouse_Text_PokemonGrowStrongerFromBattlingOtherPokemon
    End

SandgemTownHouse_BreederF:
    NPCMessage SandgemTownHouse_Text_AGoodTrainerTakesCareToNotLetTheirPokemonFaint
    End
