#include "macros/scrcmd.inc"
#include "res/text/bank/pastoria_city_north_house.h"


    ScriptEntry PastoriaCityNorthHouse_ScientistM
    ScriptEntry PastoriaCityNorthHouse_Psyduck
    ScriptEntry PastoriaCityNorthHouse_KidWithNDS
    ScriptEntryEnd

PastoriaCityNorthHouse_ScientistM:
    NPCMessage PastoriaCityNorthHouse_Text_QuickTramTransportation
    End

PastoriaCityNorthHouse_Psyduck:
    PokemonCryAndMessage SPECIES_PSYDUCK, PastoriaCityNorthHouse_Text_PsyduckCry
    End

PastoriaCityNorthHouse_KidWithNDS:
    NPCMessage PastoriaCityNorthHouse_Text_QuickTramsAreSlow
    End

    .balign 4, 0

