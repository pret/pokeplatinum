#include "macros/scrcmd.inc"
#include "res/text/bank/route_204_south.h"


    ScriptEntry Route204South_Youngster
    ScriptEntry Route204South_ArrowSignpostJubilifeCity
    ScriptEntry Route204South_SignboardRavagedPath
    ScriptEntryEnd

Route204South_Youngster:
    NPCMessage Route204South_Text_BouldersBlockingInsideCavern
    End

Route204South_ArrowSignpostJubilifeCity:
    ShowArrowSign Route204South_Text_SignJubilifeCity
    End

Route204South_SignboardRavagedPath:
    ShowLandmarkSign Route204South_Text_SignRavagedPath
    End

    .balign 4, 0
