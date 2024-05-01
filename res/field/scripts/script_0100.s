    .include "macros/scrcmd.inc"

    .data

    .long _0012-.-4
    .long _0016-.-4
    .long _001A-.-4
    .long _002B-.-4
    .short 0xFD13

_0012:
    ScrCmd_171
    End

_0016:
    ScrCmd_172
    End

_001A:
    ScrCmd_060
    ScrCmd_049 0x624
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_002B:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 0
    ScrCmd_049 0x637
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End
