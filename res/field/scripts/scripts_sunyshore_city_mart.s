#include "macros/scrcmd.inc"
#include "res/text/bank/sunyshore_city_mart.h"


    ScriptEntry SunyshoreCityMart_CommonVendor
    ScriptEntry SunyshoreCityMart_SpecialtyVendor
    ScriptEntry SunyshoreCityMart_RuinManiac
    ScriptEntry SunyshoreCityMart_Sailor
    ScriptEntryEnd

SunyshoreCityMart_CommonVendor:
    PokeMartCommonWithGreeting
    End

SunyshoreCityMart_SpecialtyVendor:
    PokeMartSpecialtiesWithGreeting MART_SPECIALTIES_ID_SUNYSHORE
    End

SunyshoreCityMart_RuinManiac:
    NPCMessage SunyshoreCityMart_Text_VictoryRoadIsHarrowing
    End

SunyshoreCityMart_Sailor:
    NPCMessage SunyshoreCityMart_Text_BuyBallSealsAtSunyshoreMarket
    End
