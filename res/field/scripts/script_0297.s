    .include "macros/scrcmd.inc"

    .data

    .long _0006-.-4
    .short 0xFD13

_0006:
    AddVar 0x410C, 1
    ScrCmd_285 0x410B, 0x410C
    End
