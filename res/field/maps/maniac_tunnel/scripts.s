#include "macros/scrcmd.inc"
#include "res/text/bank/maniac_tunnel.h"


    ScriptEntry ManiacTunnel_RuinManiac
    ScriptEntry ManiacTunnel_OnTransition
    ScriptEntryEnd

ManiacTunnel_OnTransition:
    SetFlag FLAG_FIRST_ARRIVAL_RUIN_MANIAC_CAVE
    End

ManiacTunnel_RuinManiac:
    NPCMessage ManiacTunnel_Text_IDugToThisWeirdPlace
    End

    .balign 4, 0
