    .include "macros/scrcmd.inc"

    .data

    ScriptEntry _000E
    ScriptEntry _0025
    ScriptEntry _003C
    .short 0xFD13

_000E:
    ScrCmd_036 1, 1, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    End

_0025:
    ScrCmd_036 2, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    End

_003C:
    PlayFanfare 0x5DC
    LockAll
    Message 0
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
    .byte 0
