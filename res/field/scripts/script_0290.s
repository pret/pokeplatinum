    .include "macros/scrcmd.inc"

    .data

    ScriptEntry _000A
    ScriptEntry _0026
    .short 0xFD13

_000A:
    Call _0018
    ScrCmd_285 0x410B, 0x410C
    End

_0018:
    AddVar 0x410B, 1
    AddVar 0x410C, 1
    Return

_0026:
    ScrCmd_049 0x5DC
    ScrCmd_060
    SetVar 0x8004, 0x410B
    SetVar 0x8005, 0x410C
    ScrCmd_0D5 0, 0x8004
    ScrCmd_0D5 1, 0x8005
    ScrCmd_02C 0
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .byte 0
    .byte 0
    .byte 0
