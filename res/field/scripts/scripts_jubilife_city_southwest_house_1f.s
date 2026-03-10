#include "macros/scrcmd.inc"
#include "res/text/bank/jubilife_city_southwest_house_1f.h"


    ScriptEntry JubilifeCitySouthwestHouse1F_Youngster
    ScriptEntry JubilifeCitySouthwestHouse1F_Pikachu
    ScriptEntry JubilifeCitySouthwestHouse1F_MiddleAgedMan
    ScriptEntryEnd

JubilifeCitySouthwestHouse1F_Youngster:
    NPCMessage JubilifeCitySouthwestHouse1F_Text_IGotMyPikachuThroughATradeFromSomeone
    End

JubilifeCitySouthwestHouse1F_Pikachu:
    PokemonCryAndMessage SPECIES_PIKACHU, JubilifeCitySouthwestHouse1F_Text_PikachuPikapikapikaaah
    End

JubilifeCitySouthwestHouse1F_MiddleAgedMan:
    NPCMessage JubilifeCitySouthwestHouse1F_Text_IfEveryoneAroundTheWorldHadPokemon
    End

    .balign 4, 0
