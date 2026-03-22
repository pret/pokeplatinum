#include "macros/scrcmd.inc"
#include "res/text/bank/hearthome_city_southeast_house_1f.h"


    ScriptEntry HearthomeCitySoutheastHouse1F_MiddleAgedMan
    ScriptEntry HearthomeCitySoutheastHouse1F_Lady
    ScriptEntry HearthomeCitySoutheastHouse1F_Twin
    ScriptEntry HearthomeCitySoutheastHouse1F_Shroomish
    ScriptEntryEnd

HearthomeCitySoutheastHouse1F_MiddleAgedMan:
    NPCMessage HearthomeCitySoutheastHouse1F_Text_ThereAreTheContests
    End

HearthomeCitySoutheastHouse1F_Lady:
    NPCMessage HearthomeCitySoutheastHouse1F_Text_ICouldCaptivateTheWholeWorld
    End

HearthomeCitySoutheastHouse1F_Twin:
    NPCMessage HearthomeCitySoutheastHouse1F_Text_MyShroomishFindsBerries
    End

HearthomeCitySoutheastHouse1F_Shroomish:
    PokemonCryAndMessage SPECIES_SHROOMISH, HearthomeCitySoutheastHouse1F_Text_ShroomishCryPofwaaah
    End

    .balign 4, 0
