#include "macros/scrcmd.inc"


    ScriptEntry _000A
    ScriptEntry _0020
    ScriptEntryEnd

_000A:
    PokeMartCommonWithGreeting
    End

_0020:
    PokeMartSpecialtiesWithGreeting MART_SPECIALTIES_ID_CELESTIC
    End

    .balign 4, 0
