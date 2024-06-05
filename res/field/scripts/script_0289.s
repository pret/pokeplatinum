    .include "macros/scrcmd.inc"

    .data

    .long _000A-.-4
    .long _002A-.-4
    .short 0xFD13

_000A:
    SetFlag 0x9D4
    Call _001C
    ScrCmd_285 0x410B, 0x410C
    End

_001C:
    SetVar 0x410B, 0
    SetVar 0x410C, 0
    Return

_002A:
    GoToIfSet 0x121, _0046
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 0
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0046:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .byte 0
