#include "macros/scrcmd.inc"
#include "res/text/bank/route_204_south.h"


    ScriptEntry Route204South_Youngster
    ScriptEntry Route204South_ArrowSignpostJubilifeCity
    ScriptEntry Route204South_LandmarkSignRavagedPath
    ScriptEntryEnd

Route204South_Youngster:
    NPCMessage Route204South_Text_ThereAreBouldersBlockingTheWayInsideTheCavern
    End

Route204South_ArrowSignpostJubilifeCity:
    ShowArrowSign Route204South_Text_Rt204JubilifeCity
    End

Route204South_LandmarkSignRavagedPath:
    ShowLandmarkSign Route204South_Text_RavagedPath
    End

    .balign 4, 0
