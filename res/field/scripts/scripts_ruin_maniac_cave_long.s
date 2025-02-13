#include "macros/scrcmd.inc"
#include "res/text/bank/ruin_maniac_cave_long.h"

    .data

    ScriptEntry _0010
    ScriptEntry _000A
    TableEnd

_000A:
    SetFlag 0x9D8
    End

_0010:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ScrCmd_284 0x800C
    GoToIfGe 0x800C, 26, _0034
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
