    .include "macros/scrcmd.inc"

    .data

    .long _000E-.-4
    .long _0068-.-4
    .long _008D-.-4
    .short 0xFD13

_000E:
    ScrCmd_011 0x40DD, 0
    ScrCmd_01C 1, _0048
    ScrCmd_207 0x4000
    ScrCmd_011 0x4000, 1
    ScrCmd_01C 1, _004A
    ScrCmd_1DD 55, 0, 0x4000
    ScrCmd_029 0x4020, 0x4000
    ScrCmd_1DD 55, 1, 0x4000
    ScrCmd_029 0x4021, 0x4000
_0048:
    End

_004A:
    ScrCmd_1DD 55, 0, 0x4000
    ScrCmd_029 0x4021, 0x4000
    ScrCmd_1DD 55, 1, 0x4000
    ScrCmd_029 0x4020, 0x4000
    End

_0068:
    ScrCmd_011 0x40DD, 0
    ScrCmd_01D 5, _007F
    ScrCmd_1B2 2
    ScrCmd_1B2 3
    End

_007F:
    ScrCmd_1B2 0xFF
    ScrCmd_06B 8, 0, 0
    ScrCmd_01B

_008D:
    ScrCmd_060
    ScrCmd_01A _00C9
    ScrCmd_01A _012B
    ScrCmd_01A _014F
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_0BE 0x14B, 0, 7, 5, 0
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_061
    End

_00C9:
    ScrCmd_168 0, 0, 3, 2, 77
    ScrCmd_168 0, 0, 14, 2, 78
    ScrCmd_16B 77
    ScrCmd_16B 78
    ScrCmd_169 77
    ScrCmd_169 78
    ScrCmd_05E 0, _0174
    ScrCmd_05E 1, _0174
    ScrCmd_05F
    ScrCmd_1B1 2
    ScrCmd_1B1 3
    ScrCmd_05E 2, _0180
    ScrCmd_05E 3, _0180
    ScrCmd_05F
    ScrCmd_16C 77
    ScrCmd_16C 78
    ScrCmd_169 77
    ScrCmd_169 78
    ScrCmd_16A 77
    ScrCmd_16A 78
    ScrCmd_01B

_012B:
    ScrCmd_05E 0, _01AC
    ScrCmd_05E 2, _0188
    ScrCmd_05E 1, _01CC
    ScrCmd_05E 3, _0194
    ScrCmd_05F
    ScrCmd_01B

_014F:
    ScrCmd_05E 0, _01EC
    ScrCmd_05E 1, _01EC
    ScrCmd_05E 2, _01A0
    ScrCmd_05E 3, _01A0
    ScrCmd_05F
    ScrCmd_01B

    .balign 4, 0
_0174:
    MoveAction_00D 3
    MoveAction_000
    EndMovement

    .balign 4, 0
_0180:
    MoveAction_00D 2
    EndMovement

    .balign 4, 0
_0188:
    MoveAction_00D
    MoveAction_00F 5
    EndMovement

    .balign 4, 0
_0194:
    MoveAction_00D
    MoveAction_00E 5
    EndMovement

    .balign 4, 0
_01A0:
    MoveAction_00C 2
    MoveAction_045
    EndMovement

    .balign 4, 0
_01AC:
    MoveAction_00F 5
    MoveAction_00C
    MoveAction_03F
    MoveAction_003
    MoveAction_03E
    MoveAction_000
    MoveAction_03E
    EndMovement

    .balign 4, 0
_01CC:
    MoveAction_00E 5
    MoveAction_00C
    MoveAction_03F
    MoveAction_002
    MoveAction_03E
    MoveAction_000
    MoveAction_03E
    EndMovement

    .balign 4, 0
_01EC:
    MoveAction_00C
    MoveAction_045
    EndMovement
