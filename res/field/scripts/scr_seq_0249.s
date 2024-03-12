    .include "macros/scrcmd.inc"

    .data

    .long _0006-.-4
    .short 0xFD13

_0006:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_26D 0
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002
