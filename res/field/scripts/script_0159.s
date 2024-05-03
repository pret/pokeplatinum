    .include "macros/scrcmd.inc"

    .data

    .long _0012-.-4
    .long _001D-.-4
    .long _0022-.-4
    .long _0027-.-4
    .short 0xFD13

_0012:
    SetVar 0x4000, 0
    ScrCmd_175 1
    End

_001D:
    ScrCmd_176 0
    End

_0022:
    ScrCmd_176 1
    End

_0027:
    End

    .byte 0
    .byte 0
    .byte 0
