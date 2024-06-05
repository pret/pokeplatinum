    .include "macros/scrcmd.inc"

    .data

    .long _000A-.-4
    .long _0022-.-4
    .short 0xFD13

_000A:
    CheckFlag 0x132
    GoToIf 1, _0040
    CheckFlag 0x132
    GoToIf 0, _004A
    End

_0022:
    Call _0118
    CheckFlag 0x132
    GoToIf 1, _0040
    CheckFlag 0x132
    GoToIf 0, _004A
    End

_0040:
    ScrCmd_18A 2, 7, 5
    End

_004A:
    CompareVar 0x40AA, 2
    GoToIf 4, _0069
    GoTo _005F
    End

_005F:
    ScrCmd_18A 1, 7, 5
    End

_0069:
    CheckFlag 0x145
    GoToIf 0, _005F
    CheckFlag 208
    GoToIf 1, _00BC
    CompareVar 0x40C4, 1
    GoToIf 4, _00BC
    ScrCmd_07E 135, 1, 0x4001
    CompareVar 0x4001, 1
    GoToIf 1, _0104
    ScrCmd_32F 135, 0x4001
    CompareVar 0x4001, 1
    GoToIf 1, _0104
    GoTo _00BC
    End

_00BC:
    CheckFlag 209
    GoToIf 1, _005F
    CompareVar 0x40C5, 1
    GoToIf 4, _005F
    ScrCmd_07E 136, 1, 0x4001
    CompareVar 0x4001, 1
    GoToIf 1, _010E
    ScrCmd_32F 136, 0x4001
    CompareVar 0x4001, 1
    GoToIf 1, _010E
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
