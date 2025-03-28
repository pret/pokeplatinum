#include "macros/scrcmd.inc"
#include "res/text/bank/snowpoint_temple_1f.h"

    .data

    ScriptEntry _000A
    ScriptEntry _0010
    ScriptEntryEnd

_000A:
    SetFlag FLAG_UNK_0x09D6
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
