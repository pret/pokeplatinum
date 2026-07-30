#include "macros/scrcmd.inc"
#include "res/text/bank/route_210_north.h"


    ScriptEntry Route210North_BlackBelt
    ScriptEntry Route210North_ArrowSignpostCelesticTown
    ScriptEntry Route210North_SignboardGrandmaWilmasHouse
    ScriptEntryEnd

Route210North_BlackBelt:
    NPCMessage Route210North_Text_HowDoesDefogWork
    End

Route210North_ArrowSignpostCelesticTown:
    ShowArrowSign Route210North_Text_SignCelesticTown
    End

Route210North_SignboardGrandmaWilmasHouse:
    ShowLandmarkSign Route210North_Text_SignGrandmaWilmasHouse
    End

    .balign 4, 0
