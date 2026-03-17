#include "macros/scrcmd.inc"
#include "res/text/bank/jubilife_city_south_house_1f.h"


    ScriptEntry JubilifeCitySouthHouse1F_AceTrainerM
    ScriptEntry JubilifeCitySouthHouse1F_Lass
    ScriptEntry JubilifeCitySouthHouse1F_Pachirisu
    ScriptEntryEnd

JubilifeCitySouthHouse1F_AceTrainerM:
    NPCMessage JubilifeCitySouthHouse1F_PokemonAreWonderfulDeeplyMysteriousCreatures
    End

JubilifeCitySouthHouse1F_Lass:
    NPCMessage JubilifeCitySouthHouse1F_TalkToEveryoneYouSee
    End

JubilifeCitySouthHouse1F_Pachirisu:
    PokemonCryAndMessage SPECIES_PACHIRISU, JubilifeCitySouthHouse1F_PachirisuKukkuuh
    End

    .balign 4, 0
