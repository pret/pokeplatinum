#include "macros/scrcmd.inc"
#include "res/text/bank/oreburgh_city_mart.h"


    ScriptEntry OreburghCityMart_CommonVendor
    ScriptEntry OreburghCityMart_SpecialtyVendor
    ScriptEntry OreburghCityMart_Hiker
    ScriptEntry OreburghCityMart_Collector
    ScriptEntryEnd

OreburghCityMart_CommonVendor:
    PokeMartCommonWithGreeting
    End

OreburghCityMart_SpecialtyVendor:
    PokeMartSpecialtiesWithGreeting MART_SPECIALTIES_ID_OREBURGH
    End

OreburghCityMart_Hiker:
    NPCMessage OreburghCityMart_Text_MoreBadgesMoreItems
    End

OreburghCityMart_Collector:
    NPCMessage OreburghCityMart_Text_TwoStaffOfferDifferentMerchandise
    End
