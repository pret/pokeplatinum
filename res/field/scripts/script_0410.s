    .include "macros/scrcmd.inc"

    .data

    .long _0006-.-4
    .short 0xFD13

_0006:
    ScrCmd_060
    ScrCmd_1B7 0x8000, 5
    ScrCmd_029 0x8008, 0x8000
    CompareVarToValue 0x8008, 0
    ScrCmd_01C 1, _0057
    CompareVarToValue 0x8008, 1
    ScrCmd_01C 1, _0071
    CompareVarToValue 0x8008, 2
    ScrCmd_01C 1, _008B
    CompareVarToValue 0x8008, 3
    ScrCmd_01C 1, _00A5
    CompareVarToValue 0x8008, 4
    ScrCmd_01C 1, _00BF
    End

_0057:
    ScrCmd_05E 0xFF, _0148
    ScrCmd_05E 0, _01F0
    ScrCmd_05F
    GoTo _00D9
    End

_0071:
    ScrCmd_05E 0xFF, _0154
    ScrCmd_05E 0, _0200
    ScrCmd_05F
    GoTo _00D9
    End

_008B:
    ScrCmd_05E 0xFF, _0160
    ScrCmd_05E 0, _0210
    ScrCmd_05F
    GoTo _00D9
    End

_00A5:
    ScrCmd_05E 0xFF, _016C
    ScrCmd_05E 0, _0220
    ScrCmd_05F
    GoTo _00D9
    End

_00BF:
    ScrCmd_05E 0xFF, _0178
    ScrCmd_05E 0, _0230
    ScrCmd_05F
    GoTo _00D9
    End

_00D9:
    ScrCmd_02C 0
    ScrCmd_030
    ScrCmd_034
    ScrCmd_05E 0xFF, _0184
    ScrCmd_05E 0, _0240
    ScrCmd_05F
    ScrCmd_049 0x64F
    ScrCmd_05E 0xFF, _01E8
    ScrCmd_05F
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_028 0x4003, 1
    ScrCmd_0BE 0x405C, 0, 5, 2, 1
    ScrCmd_1F8
    ScrCmd_0B3 0x800C
    ScrCmd_029 0x8004, 0x800C
    ScrCmd_2F7 0x8004
    ScrCmd_0A1
    ScrCmd_028 0x4080, 1
    ScrCmd_1B2 0xFF
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    End

    .balign 4, 0
_0148:
    MoveAction_00C 7
    MoveAction_00E 11
    EndMovement

    .balign 4, 0
_0154:
    MoveAction_00C 7
    MoveAction_00E 9
    EndMovement

    .balign 4, 0
_0160:
    MoveAction_00C 7
    MoveAction_00E 7
    EndMovement

    .balign 4, 0
_016C:
    MoveAction_00C 7
    MoveAction_00E 5
    EndMovement

    .balign 4, 0
_0178:
    MoveAction_00C 7
    MoveAction_00E 3
    EndMovement

    .balign 4, 0
_0184:
    MoveAction_00C
    MoveAction_002
    MoveAction_03D
    MoveAction_001
    MoveAction_03D
    MoveAction_003
    MoveAction_03D
    MoveAction_000
    MoveAction_03D
    MoveAction_002
    MoveAction_03D
    MoveAction_001
    MoveAction_03D
    MoveAction_003
    MoveAction_03D
    MoveAction_000
    MoveAction_03D
    MoveAction_002
    MoveAction_03D
    MoveAction_001
    MoveAction_03D
    MoveAction_003
    MoveAction_03D
    MoveAction_000
    EndMovement

    .balign 4, 0
_01E8:
    MoveAction_043
    EndMovement

    .balign 4, 0
_01F0:
    MoveAction_00C 6
    MoveAction_00E 12
    MoveAction_023
    EndMovement

    .balign 4, 0
_0200:
    MoveAction_00C 6
    MoveAction_00E 10
    MoveAction_023
    EndMovement

    .balign 4, 0
_0210:
    MoveAction_00C 6
    MoveAction_00E 8
    MoveAction_023
    EndMovement

    .balign 4, 0
_0220:
    MoveAction_00C 6
    MoveAction_00E 6
    MoveAction_023
    EndMovement

    .balign 4, 0
_0230:
    MoveAction_00C 6
    MoveAction_00E 4
    MoveAction_023
    EndMovement

    .balign 4, 0
_0240:
    MoveAction_020
    EndMovement
