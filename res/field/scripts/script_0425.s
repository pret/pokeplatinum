    .include "macros/scrcmd.inc"

    .data

    ScriptEntry _000A
    ScriptEntry _001C
    .short 0xFD13

_000A:
    LockAll
    ScrCmd_0D5 0, 0x8000
    Message 106
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_001C:
    LockAll
    Message 107
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
    .byte 0
