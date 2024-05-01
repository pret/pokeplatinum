    .include "macros/scrcmd.inc"

    .data

    .long _000A-.-4
    .long _000E-.-4
    .short 0xFD13

_000A:
    ScrCmd_2F2
    End

_000E:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 0
    ScrCmd_03E 0x800C
    CompareVarToValue 0x800C, 0
    ScrCmd_01C 1, _002E
    ScrCmd_034
    ScrCmd_061
    End

_002E:
    ScrCmd_0CD 0
    ScrCmd_02C 1
    ScrCmd_034
    ScrCmd_049 0x5D2
    ScrCmd_328 0
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_0BE 0x10E, 0, 11, 15, 1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    End
