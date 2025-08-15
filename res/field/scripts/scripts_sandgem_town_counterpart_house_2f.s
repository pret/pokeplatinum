#include "macros/scrcmd.inc"
#include "res/text/bank/sandgem_town_counterpart_house_2f.h"


    ScriptEntry _0006
    ScriptEntryEnd

_0006:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    BufferPlayerName 0
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
