#include "macros/scrcmd.inc"
#include "res/text/bank/route_205_north.h"


    ScriptEntry Route205North_Fisherman
    ScriptEntry Route205North_ArrowSignpostEternaForest
    ScriptEntry Route205North_ArrowSignpostEternaCity
    ScriptEntryEnd

Route205North_Fisherman:
    NPCMessage Route205North_Text_FishCasually
    End

Route205North_ArrowSignpostEternaForest:
    ShowArrowSign Route205North_Text_SignEternaForest
    End

Route205North_ArrowSignpostEternaCity:
    ShowArrowSign Route205North_Text_SignEternaCity
    End

    .balign 4, 0
