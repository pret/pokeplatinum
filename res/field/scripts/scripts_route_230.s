#include "macros/scrcmd.inc"
#include "res/text/bank/route_230.h"


    ScriptEntry Route230_ArrowSignpostFightArea
    ScriptEntry Route230_Fisherman
    ScriptEntry Route230_RichBoy
    ScriptEntryEnd

Route230_ArrowSignpostFightArea:
    ShowArrowSign Route230_Text_SignRt230FightArea
    End

Route230_Fisherman:
    NPCMessage Route230_Text_VisitBattleFrontier
    End

Route230_RichBoy:
    NPCMessage Route230_Text_ChallengeOtherTrainers
    End

    .balign 4, 0
