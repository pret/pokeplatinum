#include "macros/scrcmd.inc"
#include "res/text/bank/route_211_west.h"


    ScriptEntry Route211West_Dummy1
    ScriptEntry Route211West_ArrowSignpostMtCoronet
    ScriptEntry Route211West_ArrowSignpostEternaCity
    ScriptEntryEnd

Route211West_Dummy1:
    NPCMessage Route211West_Text_Dummy0
    End

Route211West_ArrowSignpostMtCoronet:
    ShowArrowSign Route211West_Text_SignMtCoronet
    End

Route211West_ArrowSignpostEternaCity:
    ShowArrowSign Route211West_Text_SignEternaCity
    End

    .balign 4, 0
