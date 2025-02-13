#include "macros/scrcmd.inc"
#include "res/text/bank/old_chateau_side_rooms.h"

    .data

    ScriptEntry _0006
    TableEnd

_0006:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
