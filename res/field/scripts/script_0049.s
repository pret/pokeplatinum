    .include "macros/scrcmd.inc"

    .data

    .long _0029-.-4
    .long _000A-.-4
    .short 0xFD13

_000A:
    ScrCmd_238 10, 0x4000
    CompareVar 0x4000, 0
    GoToIf 1, _0023
    ClearFlag 0x216
    End

_0023:
    SetFlag 0x216
    End

_0029:
    End

    .byte 0
