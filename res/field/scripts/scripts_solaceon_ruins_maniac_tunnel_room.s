#include "macros/scrcmd.inc"
#include "res/text/bank/solaceon_ruins_maniac_tunnel_room.h"


    ScriptEntry SolaceonRuinsManiacTunnnelRoom_Inscription
    ScriptEntryEnd

SolaceonRuinsManiacTunnnelRoom_Inscription:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    MessageUnown SolaceonRuinsManiacTunnnelRoom_Text_Interrobang
    WaitButton
    CloseMessage
    ReleaseAll
    End
