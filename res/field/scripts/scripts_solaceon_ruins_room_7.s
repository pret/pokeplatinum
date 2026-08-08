#include "macros/scrcmd.inc"
#include "res/text/bank/solaceon_ruins_room_7.h"


    ScriptEntry SolaceonRuinsRoom7_Inscription
    ScriptEntryEnd

SolaceonRuinsRoom7_Inscription:
    PlaySE SE_CONFIRM_sseq_3
    LockAll
    MessageUnown SolaceonRuinsRoom7_Text_AllLivesTouchOtherLives
    WaitButton
    CloseMessage
    ReleaseAll
    End
