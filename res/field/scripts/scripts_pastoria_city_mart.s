#include "macros/scrcmd.inc"
#include "res/text/bank/pastoria_city_mart.h"


    ScriptEntry PastoriaCityMart_CommonVendor
    ScriptEntry PastoriaCityMart_SpecialtyVendor
    ScriptEntry PastoriaCityMart_BugCatcher
    ScriptEntry PastoriaCityMart_SchoolGirl
    ScriptEntry PastoriaCityMart_CroagunkCarving
    ScriptEntryEnd

PastoriaCityMart_CommonVendor:
    PokeMartCommonWithGreeting
    End

PastoriaCityMart_SpecialtyVendor:
    PokeMartSpecialtiesWithGreeting MART_SPECIALTIES_ID_PASTORIA
    End

PastoriaCityMart_BugCatcher:
    NPCMessage PastoriaCityMart_Text_CroagunkIsOfficialCityMascot
    End

PastoriaCityMart_SchoolGirl:
    NPCMessage PastoriaCityMart_Text_AreYouUsingBallCapsules
    End

PastoriaCityMart_CroagunkCarving:
    EventMessage PastoriaCityMart_Text_LooksLikeItsSeepingPoison
    End

    .balign 4, 0
