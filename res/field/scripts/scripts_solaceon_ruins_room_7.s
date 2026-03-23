#include "macros/scrcmd.inc"
#include "res/text/bank/solaceon_ruins_room_7.h"


    ScriptEntry SolaceonRuinsRoom7_Inscription
    ScriptEntryEnd

SolaceonRuinsRoom7_Inscription:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    MessageUnown SolaceonRuinsRoom7_Text_AllLivesTouchOtherLives
    WaitButton
    CloseMessage
    ReleaseAll
    End
