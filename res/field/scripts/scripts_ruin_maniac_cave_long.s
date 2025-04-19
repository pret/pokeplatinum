#include "macros/scrcmd.inc"
#include "res/text/bank/ruin_maniac_cave_long.h"

    .data

    ScriptEntry _0010
    ScriptEntry _000A
    ScriptEntryEnd

_000A:
    SetFlag FLAG_UNK_0x09D8
    End

_0010:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GetUnownFormsSeenCount VAR_RESULT
    GoToIfGe VAR_RESULT, 26, _0034
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0034:
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
