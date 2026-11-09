#include "macros/scrcmd.inc"
#include "res/text/bank/jubilife_city_mart.h"


    ScriptEntry JubilifeCityMart_CommonVendor
    ScriptEntry JubilifeCityMart_SpecialtyVendor
    ScriptEntry JubilifeCityMart_Guitarist
    ScriptEntry JubilifeCityMart_Pokefan
    ScriptEntry JubilifeCityMart_Beauty
    ScriptEntryEnd

JubilifeCityMart_CommonVendor:
    PokeMartCommonWithGreeting
    End

JubilifeCityMart_SpecialtyVendor:
    PokeMartSpecialtiesWithGreeting MART_SPECIALTIES_ID_JUBILIFE
    End

JubilifeCityMart_Guitarist:
    NPCMessage JubilifeCityMart_Text_WastedMoneyOnPokeBalls
    End

JubilifeCityMart_Pokefan:
    NPCMessage JubilifeCityMart_Text_PackSomePotions
    End

JubilifeCityMart_Beauty:
    NPCMessage JubilifeCityMart_Text_JustUseARepel
    End

    .balign 4, 0
