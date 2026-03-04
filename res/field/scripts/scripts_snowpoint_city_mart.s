#include "macros/scrcmd.inc"
#include "res/text/bank/snowpoint_city_mart.h"


    ScriptEntry SnowpointCityMart_CommonVendor
    ScriptEntry SnowpointCityMart_SpecialtyVendor
    ScriptEntry SnowpointCityMart_Youngster
    ScriptEntry SnowpointCityMart_SnowpointLady
    ScriptEntryEnd

SnowpointCityMart_CommonVendor:
    PokeMartCommonWithGreeting
    End

SnowpointCityMart_SpecialtyVendor:
    PokeMartSpecialtiesWithGreeting MART_SPECIALTIES_ID_SNOWPOINT
    End

SnowpointCityMart_Youngster:
    NPCMessage SnowpointCityMart_Text_UsingTmsForEliteFour
    End

SnowpointCityMart_SnowpointLady:
    NPCMessage SnowpointCityMart_Text_KeepSomeIceHeals
    End
