#include "macros/scrcmd.inc"
#include "res/text/bank/route_210_north.h"


    ScriptEntry Route210North_BlackBelt
    ScriptEntry Route210North_ArrowSignCelesticTown
    ScriptEntry Route210North_SignGrandmaWilmasHouse
    ScriptEntryEnd

Route210North_BlackBelt:
    NPCMessage Route210North_Text_HowDoesDefogWork
    End

Route210North_ArrowSignCelesticTown:
    ShowArrowSign Route210North_Text_SignCelesticTown
    End

Route210North_SignGrandmaWilmasHouse:
    ShowLandmarkSign Route210North_Text_SignGrandmaWilmasHouse
    End

    .balign 4, 0
