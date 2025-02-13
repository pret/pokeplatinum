#include "macros/scrcmd.inc"
#include "res/text/bank/route_213_gate_to_pastoria_city.h"

    .data

    ScriptEntry _000A
    ScriptEntry _001D
    TableEnd

_000A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_001D:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 1
    YesNoMenu 0x800C
    GoToIfEq 0x800C, 1, _0044
    Message 2
    GoTo _004F
    End

_0044:
    Message 3
    GoTo _004F
    End

_004F:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
