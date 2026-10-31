#include "macros/scrcmd.inc"
#include "res/text/bank/fight_area_middle_house.h"


    ScriptEntry FightAreaMiddleHouse_PokefanM
    ScriptEntry FightAreaMiddleHouse_SchoolKidM
    ScriptEntry FightAreaMiddleHouse_Youngster
    ScriptEntryEnd

FightAreaMiddleHouse_PokefanM:
    NPCMessage FightAreaMiddleHouse_Text_SeePeakMtCoronet
    End

FightAreaMiddleHouse_SchoolKidM:
    NPCMessage FightAreaMiddleHouse_Text_FanaticalAboutBattling
    End

FightAreaMiddleHouse_Youngster:
    NPCMessage FightAreaMiddleHouse_Text_CheckOutGlobalTerminal
    End

    .balign 4, 0
