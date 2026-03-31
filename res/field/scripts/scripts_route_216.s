#include "macros/scrcmd.inc"
#include "res/text/bank/route_216.h"


    ScriptEntry Route216_Unused
    ScriptEntry Route216_ArrowSignpostMtCoronet
    ScriptEntry Route216_SignSnowboundLodge
    ScriptEntryEnd

Route216_Unused:
    NPCMessage Route216_Text_CantRideBikeOnSnow
    End

Route216_ArrowSignpostMtCoronet:
    ShowArrowSign Route216_Text_SignRt216MtCoronet
    End

Route216_SignSnowboundLodge:
    ShowLandmarkSign Route216_Text_SignSnowboundLodge
    End

    .balign 4, 0
