#include "macros/scrcmd.inc"
#include "generated/items.h"
#include "res/text/bank/eterna_city_mart.h"


    ScriptEntry EternaCityMart_CommonVendor
    ScriptEntry EternaCityMart_SpecialtyVendor
    ScriptEntry EternaCityMart_Guitarist
    ScriptEntry EternaCityMart_Hiker
    ScriptEntryEnd

EternaCityMart_CommonVendor:
    PokeMartCommonWithGreeting
    End

EternaCityMart_SpecialtyVendor:
    PokeMartSpecialtiesWithGreeting MART_SPECIALTIES_ID_ETERNA_MART
    End

EternaCityMart_Guitarist:
    BufferItemName 0, ITEM_SUPER_POTION //Unused?
    BufferItemName 1, ITEM_TM03         //Unused?
    NPCMessage EternaCityMart_Text_GardeniaIsTooMuch
    End

EternaCityMart_Hiker:
    NPCMessage EternaCityMart_Text_EscapeRopeIsIndispensable
    End

    .balign 4, 0
