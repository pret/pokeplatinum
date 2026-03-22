#include "macros/scrcmd.inc"
#include "res/text/bank/route_211_west.h"


    ScriptEntry Route211West_Unused
    ScriptEntry Route211West_ArrowSignpostMtCoronet
    ScriptEntry Route211West_ArrowSignpostEternaCity
    ScriptEntryEnd

Route211West_Unused:
    NPCMessage Route211West_Text_Dummy0
    End

Route211West_ArrowSignpostMtCoronet:
    ShowArrowSign Route211West_Text_Rt211MtCoronet
    End

Route211West_ArrowSignpostEternaCity:
    ShowArrowSign Route211West_Text_Rt211EternaCity
    End

    .balign 4, 0
