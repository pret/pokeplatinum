#include "macros/scrcmd.inc"
#include "res/text/bank/solaceon_ruins_room_1.h"


    ScriptEntry SolaceonRuinsRoom1_OnTransition
    ScriptEntry SolaceonRuinsRoom1_Inscription
    ScriptEntryEnd

SolaceonRuinsRoom1_OnTransition:
    SetFlag FLAG_FIRST_ARRIVAL_SOLACEON_RUINS
    End

SolaceonRuinsRoom1_Inscription:
    PlaySE SE_CONFIRM_sseq_3
    LockAll
    MessageUnown SolaceonRuinsRoom1_Text_Directions
    WaitButton
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
