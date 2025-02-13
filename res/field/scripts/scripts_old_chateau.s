#include "macros/scrcmd.inc"
#include "res/text/bank/old_chateau.h"

    .data

    ScriptEntry _000A
    ScriptEntry _0010
    TableEnd

_000A:
    SetFlag 0x9DC
    End

_0010:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
    .byte 0
