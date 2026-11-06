#include "macros/scrcmd.inc"
#include "res/text/bank/solaceon_town_mart.h"


    ScriptEntry SolaceonTownMart_CommonVendor
    ScriptEntry SolaceonTownMart_SpecialtyVendor
    ScriptEntry SolaceonTownMart_NinjaBoy
    ScriptEntry SolaceonTownMart_Pokefan
    ScriptEntryEnd

SolaceonTownMart_CommonVendor:
    PokeMartCommonWithGreeting
    End

SolaceonTownMart_SpecialtyVendor:
    PokeMartSpecialtiesWithGreeting MART_SPECIALTIES_ID_SOLACEON
    End

SolaceonTownMart_NinjaBoy:
    NPCMessage SolaceonTownMart_Text_NeedPCToSealPokeBalls
    End

SolaceonTownMart_Pokefan:
    NPCMessage SolaceonTownMart_Text_ConsiderSuperRepels
    End
