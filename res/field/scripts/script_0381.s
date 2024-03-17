    .include "macros/scrcmd.inc"

    .data

    .long _000E-.-4
    .long _0012-.-4
    .long _004B-.-4
    .short 0xFD13

_000E:
    ScrCmd_2F2
    ScrCmd_002

_0012:
    ScrCmd_060
    ScrCmd_05E 0xFF, _0078
    ScrCmd_05E 128, _00A8
    ScrCmd_05F
    ScrCmd_02C 0
    ScrCmd_034
    ScrCmd_05E 128, _00B4
    ScrCmd_05E 0xFF, _0080
    ScrCmd_05F
    ScrCmd_312 128
    ScrCmd_028 0x4055, 3
    ScrCmd_061
    ScrCmd_002

_004B:
    ScrCmd_060
    ScrCmd_04C 0x1E1, 0
    ScrCmd_02C 1
    ScrCmd_034
    ScrCmd_04D
    ScrCmd_311 129
    ScrCmd_05E 0xFF, _0090
    ScrCmd_05E 129, _00D8
    ScrCmd_05F
    ScrCmd_312 129
    ScrCmd_061
    ScrCmd_002

    .balign 4, 0
_0078:
    MoveAction_020
    EndMovement

    .balign 4, 0
_0080:
    MoveAction_041
    MoveAction_03F
    MoveAction_022
    EndMovement

    .balign 4, 0
_0090:
    MoveAction_002
    MoveAction_03C 8
    MoveAction_042
    MoveAction_041
    MoveAction_020
    EndMovement

    .balign 4, 0
_00A8:
    MoveAction_041 3
    MoveAction_021
    EndMovement

    .balign 4, 0
_00B4:
    MoveAction_00E
    MoveAction_00D 2
    MoveAction_022
    MoveAction_041
    MoveAction_077 2
    MoveAction_076
    MoveAction_077
    MoveAction_041
    EndMovement

    .balign 4, 0
_00D8:
    MoveAction_041 3
    MoveAction_008
    MoveAction_00C
    MoveAction_010
    MoveAction_014 8
    EndMovement
