#include "macros/scrcmd.inc"
#include "res/text/bank/floaroma_town_mart.h"


    ScriptEntry FloaromaTownMart_CommonVendor
    ScriptEntry FloaromaTownMart_SpecialtyVendor
    ScriptEntry FloaromaTownMart_Beauty
    ScriptEntry FloaromaTownMart_SchoolGirl
    ScriptEntryEnd

FloaromaTownMart_CommonVendor:
    PokeMartCommonWithGreeting
    End

FloaromaTownMart_SpecialtyVendor:
    PokeMartSpecialtiesWithGreeting MART_SPECIALTIES_ID_FLOAROMA
    End

FloaromaTownMart_Beauty:
    NPCMessage FloaromaTownMart_Text_DressUpPokemonWithAccessories
    End

FloaromaTownMart_SchoolGirl:
    NPCMessage FloaromaTownMart_Text_CantBuyBerriesAtMarts
    End
