#include "macros/scrcmd.inc"
#include "res/text/bank/veilstone_city_northwest_house.h"


    ScriptEntry VeilstoneCityNorthwestHouse_AceTrainerF
    ScriptEntry VeilstoneCityNorthwestHouse_OldWoman
    ScriptEntry VeilstoneCityNorthwestHouse_Buneary
    ScriptEntryEnd

VeilstoneCityNorthwestHouse_AceTrainerF:
    NPCMessage VeilstoneCityNorthwestHouse_Text_MtCoronetPartedSinnoh
    End

VeilstoneCityNorthwestHouse_OldWoman:
    NPCMessage VeilstoneCityNorthwestHouse_Text_PokemonAppearInManyGuises
    End

VeilstoneCityNorthwestHouse_Buneary:
    PokemonCryAndMessage SPECIES_BUNEARY, VeilstoneCityNorthwestHouse_Text_BunearyCry
    End

    .balign 4, 0
