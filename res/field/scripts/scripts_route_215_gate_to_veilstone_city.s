#include "macros/scrcmd.inc"
#include "res/text/bank/route_215_gate_to_veilstone_city.h"


    ScriptEntry _0006
    ScriptEntryEnd

_0006:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x0107, _0024
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0024:
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
