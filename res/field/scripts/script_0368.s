    .include "macros/scrcmd.inc"

    .data

    .long _0012-.-4
    .long _0146-.-4
    .long _015C-.-4
    .long _0172-.-4
    .short 0xFD13

_0012:
    CompareVar 0x40DB, 0
    CallIf 5, _008A
    ScrCmd_1DD 43, 0, 0x400A
    Call _008E
    CompareVar 0x400A, 2
    CallIf 1, _009E
    CompareVar 0x400A, 3
    CallIf 1, _009E
    CompareVar 0x400A, 0
    CallIf 1, _008E
    CompareVar 0x400A, 1
    CallIf 1, _008E
    CompareVar 0x400A, 4
    CallIf 1, _0096
    CompareVar 0x400A, 5
    CallIf 1, _0096
    CompareVar 0x400A, 6
    CallIf 1, _0096
    End

_008A:
    ScrCmd_265
    Return

_008E:
    SetVar 0x402A, 231
    Return

_0096:
    SetVar 0x402A, 235
    Return

_009E:
    SetVar 0x402A, 232
    Return

_00A6:
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_1DD 43, 0, 0x800C
    GoToIfEq 0x800C, 4, _01F8
    GoToIfEq 0x800C, 5, _01F8
    ScrCmd_1F8
    ScrCmd_2C4 5
    ScrCmd_0A1
    ScrCmd_0BE 0x146, 0, 15, 6, 0
    End

_00E9:
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_1F8
    ScrCmd_2C4 6
    ScrCmd_0A1
    ScrCmd_0BE 0x146, 0, 11, 6, 0
    End

_010A:
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_0BE 0x1ED, 0, 8, 2, 1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_061
    End

_0132:
    Call _0188
    ScrCmd_23C 0x4000, 3
    Call _0194
    Return

_0146:
    ScrCmd_060
    SetVar 0x4000, 0
    Call _0132
    GoTo _00A6
    End

_015C:
    ScrCmd_060
    SetVar 0x4000, 0
    Call _0132
    GoTo _00E9
    End

_0172:
    ScrCmd_060
    SetVar 0x4000, 1
    Call _0132
    GoTo _010A
    End

_0188:
    ApplyMovement 0xFF, _01BC
    WaitMovement
    Return

_0194:
    ApplyMovement 0, _01C8
    ApplyMovement 0xFF, _01E4
    WaitMovement
    Return

    .byte 12
    .byte 0
    .byte 2
    .byte 0
    .byte 3
    .byte 0
    .byte 1
    .byte 0
    .byte 15
    .byte 0
    .byte 1
    .byte 0
    .byte 1
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_01BC:
    MoveAction_00C 2
    MoveAction_001
    EndMovement

    .balign 4, 0
_01C8:
    MoveAction_00D
    MoveAction_002
    MoveAction_00E
    MoveAction_001
    MoveAction_00D
    MoveAction_045
    EndMovement

    .balign 4, 0
_01E4:
    MoveAction_03F 2
    MoveAction_03D
    MoveAction_00D 2
    MoveAction_045
    EndMovement

_01F8:
    ScrCmd_1F8
    ScrCmd_2C4 5
    ScrCmd_0A1
    ScrCmd_0BE 0x146, 0, 19, 6, 0
    End

    .byte 0
    .byte 0
    .byte 0
