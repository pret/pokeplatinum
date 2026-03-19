#include "macros/scrcmd.inc"
#include "res/text/bank/hearthome_city_northeast_house_2f.h"


    ScriptEntry HearthomeCityNortheastHouse2F_OldMan
    ScriptEntry HearthomeCityNortheastHouse2F_OldWoman
    ScriptEntry HearthomeCityNortheastHouse2F_ExpertM
    ScriptEntry HearthomeCityNortheastHouse2F_ExpertF
    ScriptEntryEnd

HearthomeCityNortheastHouse2F_OldMan:
    NPCMessage HearthomeCityNortheastHouse2F_Text_AllMyGrandchildrenWantPokemon
    End

HearthomeCityNortheastHouse2F_OldWoman:
    NPCMessage HearthomeCityNortheastHouse2F_Text_ThereAreNoStairs
    End

HearthomeCityNortheastHouse2F_ExpertM:
    NPCMessage HearthomeCityNortheastHouse2F_Text_SomeActKindly
    End

HearthomeCityNortheastHouse2F_ExpertF:
    NPCMessage HearthomeCityNortheastHouse2F_Text_HearthomeIsKidFriendly
    End

    .balign 4, 0
