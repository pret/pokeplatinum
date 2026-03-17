#include "macros/scrcmd.inc"
#include "res/text/bank/old_chateau.h"


    ScriptEntry OldChateau_OnTransition
    ScriptEntry OldChateau_Statue
    ScriptEntryEnd

OldChateau_OnTransition:
    SetFlag FLAG_FIRST_ARRIVAL_OLD_CHATEAU
    End

OldChateau_Statue:
    EventMessage OldChateau_Text_ItAppearsAsIfItIsGlaring
    End

    .balign 4, 0
