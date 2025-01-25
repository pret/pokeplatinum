#include "macros/scrcmd.inc"
#include "res/text/gmm/message_bank_old_chateau_side_rooms.h"

    .data

    ScriptEntry _0006
    .short 0xFD13

_0006:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
