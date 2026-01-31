#include "macros/scrcmd.inc"
#include "res/text/bank/maniac_tunnel.h"


    ScriptEntry _0010
    ScriptEntry _000A
    ScriptEntryEnd

_000A:
    SetFlag FLAG_FIRST_ARRIVAL_RUIN_MANIAC_CAVE
    End

_0010:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
