#include "macros/scrcmd.inc"
#include "res/text/gmm/message_bank_snowpoint_temple_1f.h"

    .data

    ScriptEntry _000A
    ScriptEntry _0010
    .short 0xFD13

_000A:
    SetFlag 0x9D6
    End

_0010:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 2
    .byte 0
    .byte 0
