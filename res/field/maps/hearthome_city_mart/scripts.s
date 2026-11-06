#include "macros/scrcmd.inc"
#include "res/text/bank/hearthome_city_mart.h"


    ScriptEntry HearthomeCityMart_CommonVendor
    ScriptEntry HearthomeCityMart_SpecialtyVendor
    ScriptEntry HearthomeCityMart_Hiker
    ScriptEntry HearthomeCityMart_Beauty
    ScriptEntryEnd

HearthomeCityMart_CommonVendor:
    PokeMartCommonWithGreeting
    End

HearthomeCityMart_SpecialtyVendor:
    PokeMartSpecialtiesWithGreeting MART_SPECIALTIES_ID_HEARTHOME
    End

HearthomeCityMart_Hiker:
    NPCMessage HearthomeCityMart_Text_CantBuyRevivesWithTwoBadges
    End

HearthomeCityMart_Beauty:
    NPCMessage HearthomeCityMart_Text_FindAccessoriesInAmitySquare
    End
