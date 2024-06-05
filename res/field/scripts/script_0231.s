    .include "macros/scrcmd.inc"

    .data

    .long _000A-.-4
    .long _0022-.-4
    .short 0xFD13

_000A:
    GoToIfSet 0x132, _0040
    GoToIfUnset 0x132, _004A
    End

_0022:
    Call _0118
    GoToIfSet 0x132, _0040
    GoToIfUnset 0x132, _004A
    End

_0040:
    ScrCmd_18A 2, 7, 5
    End

_004A:
    GoToIfGe 0x40AA, 2, _0069
    GoTo _005F
    End

_005F:
    ScrCmd_18A 1, 7, 5
    End

_0069:
    GoToIfUnset 0x145, _005F
    GoToIfSet 208, _00BC
    GoToIfGe 0x40C4, 1, _00BC
    ScrCmd_07E 135, 1, 0x4001
    GoToIfEq 0x4001, 1, _0104
    ScrCmd_32F 135, 0x4001
    GoToIfEq 0x4001, 1, _0104
    GoTo _00BC
    End

_00BC:
    GoToIfSet 209, _005F
    GoToIfGe 0x40C5, 1, _005F
    ScrCmd_07E 136, 1, 0x4001
    GoToIfEq 0x4001, 1, _010E
    ScrCmd_32F 136, 0x4001
    GoToIfEq 0x4001, 1, _010E
    GoTo _005F
    End

_0104:
    ScrCmd_18A 3, 7, 5
    End

_010E:
    ScrCmd_18A 4, 7, 5
    End

_0118:
    ScrCmd_18A 1, 1, 5
    ScrCmd_18A 2, 1, 5
    ScrCmd_18A 3, 1, 5
    ScrCmd_18A 4, 1, 5
    Return

    .byte 0
    .byte 0
