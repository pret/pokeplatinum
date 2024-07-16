#include "macros/scrcmd.inc"

    .data

    ScriptEntry _000A
    ScriptEntry _0031
    .short 0xFD13

_000A:
    SetFlag 0x9CA
    GoToIfUnset 0x964, _002F
    ScrCmd_22D 2, 0x4000
    GoToIfEq 0x4000, 0, _002F
    SetFlag 0x27E
_002F:
    End

_0031:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet 0x964, _004F
    Message 0
    GoTo _005A
    End

_004F:
    Message 1
    GoTo _005A
    End

_005A:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
