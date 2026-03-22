#include "macros/scrcmd.inc"
#include "res/text/bank/route_205_north.h"


    ScriptEntry Route205North_Fisherman
    ScriptEntry Route205North_ArrowSignpostEternaForest
    ScriptEntry Route205North_ArrowSignpostEternaCity
    ScriptEntryEnd

Route205North_Fisherman:
    NPCMessage Route205North_Text_ToSitBackAndFishCasually
    End

Route205North_ArrowSignpostEternaForest:
    ShowArrowSign Route205North_Text_Rt205EternaForest
    End

Route205North_ArrowSignpostEternaCity:
    ShowArrowSign Route205North_Text_Rt205EternaCity
    End

    .balign 4, 0
