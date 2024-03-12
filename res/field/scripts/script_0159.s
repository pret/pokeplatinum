    .include "macros/scrcmd.inc"

    .data

    .long _0012-.-4
    .long _001D-.-4
    .long _0022-.-4
    .long _0027-.-4
    .short 0xFD13

_0012:
    ScrCmd_028 0x4000, 0
    ScrCmd_175 1
    ScrCmd_002

_001D:
    ScrCmd_176 0
    ScrCmd_002

_0022:
    ScrCmd_176 1
    ScrCmd_002

_0027:
    ScrCmd_002

    .byte 0
    .byte 0
    .byte 0
