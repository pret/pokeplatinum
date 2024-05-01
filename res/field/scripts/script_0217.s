    .include "macros/scrcmd.inc"

    .data

    .long _0022-.-4
    .long _005F-.-4
    .long _00AC-.-4
    .long _00BF-.-4
    .long _037C-.-4
    .long _03A7-.-4
    .long _03D2-.-4
    .long _03DA-.-4
    .short 0xFD13

_0022:
    SetFlag 0x9C3
    CompareVarToValue 0x4089, 2
    ScrCmd_01C 4, _0035
    End

_0035:
    ScrCmd_186 5, 21, 5
    ScrCmd_189 5, 2
    ScrCmd_188 5, 16
    ScrCmd_186 2, 18, 4
    ScrCmd_189 2, 1
    ScrCmd_188 2, 15
    End

_005F:
    ScrCmd_060
    ScrCmd_05E 0, _0090
    ScrCmd_05F
    ScrCmd_02C 0
    ScrCmd_034
    ScrCmd_05E 0, _0098
    ScrCmd_05E 0xFF, _00A0
    ScrCmd_05F
    ScrCmd_065 0
    ScrCmd_028 0x40CF, 1
    ScrCmd_061
    End

    .balign 4, 0
_0090:
    MoveAction_04B
    EndMovement

    .balign 4, 0
_0098:
    MoveAction_012 9
    EndMovement

    .balign 4, 0
_00A0:
    MoveAction_03F
    MoveAction_022
    EndMovement

_00AC:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00BF:
    ScrCmd_060
    ScrCmd_069 0x8004, 0x8005
    CompareVarToValue 0x8005, 6
    ScrCmd_01C 1, _00E3
    CompareVarToValue 0x8005, 7
    ScrCmd_01C 1, _00F5
    End

_00E3:
    ScrCmd_05E 1, _0348
    ScrCmd_05F
    GoTo _0107
    End

_00F5:
    ScrCmd_05E 1, _0358
    ScrCmd_05F
    GoTo _0107
    End

_0107:
    ScrCmd_02C 2
    ScrCmd_034
    ScrCmd_0E5 0x127, 0
    ScrCmd_0EC 0x800C
    CompareVarToValue 0x800C, 0
    ScrCmd_01C 1, _02B9
    ScrCmd_02C 3
    ScrCmd_034
    ScrCmd_05E 7, _0374
    ScrCmd_05F
    ScrCmd_003 15, 0x800C
    ScrCmd_02C 4
    ScrCmd_05E 1, _0364
    ScrCmd_05F
    ScrCmd_02C 5
    ScrCmd_05E 1, _036C
    ScrCmd_05F
    ScrCmd_02C 6
    ScrCmd_034
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_065 1
    ScrCmd_065 7
    ScrCmd_065 6
    ScrCmd_065 3
    ScrCmd_065 4
    SetFlag 0x1A2
    ClearFlag 0x17F
    ScrCmd_028 0x4089, 2
    SetFlag 0xAA8
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_069 0x8004, 0x8005
    CompareVarToValue 0x8005, 6
    ScrCmd_01C 1, _01B7
    CompareVarToValue 0x8005, 7
    ScrCmd_01C 1, _01C9
    End

_01B7:
    ScrCmd_05E 2, _02E8
    ScrCmd_05F
    GoTo _01DB
    End

_01C9:
    ScrCmd_05E 2, _02F4
    ScrCmd_05F
    GoTo _01DB
    End

_01DB:
    ScrCmd_02C 7
    ScrCmd_034
    SetFlag 0x1F8
    ClearFlag 0x1F9
    ScrCmd_188 5, 16
    ScrCmd_064 5
    ScrCmd_062 5
    ScrCmd_069 0x8004, 0x8005
    CompareVarToValue 0x8005, 6
    ScrCmd_01C 1, _0218
    CompareVarToValue 0x8005, 7
    ScrCmd_01C 1, _0232
    End

_0218:
    ScrCmd_05E 5, _02C0
    ScrCmd_05E 2, _0300
    ScrCmd_05F
    GoTo _024C
    End

_0232:
    ScrCmd_05E 5, _02D4
    ScrCmd_05E 2, _030C
    ScrCmd_05F
    GoTo _024C
    End

_024C:
    ScrCmd_02C 8
    ScrCmd_034
    ScrCmd_069 0x8004, 0x8005
    CompareVarToValue 0x8005, 6
    ScrCmd_01C 1, _0273
    CompareVarToValue 0x8005, 7
    ScrCmd_01C 1, _0285
    End

_0273:
    ScrCmd_05E 2, _0318
    ScrCmd_05F
    GoTo _0297
    End

_0285:
    ScrCmd_05E 2, _0330
    ScrCmd_05F
    GoTo _0297
    End

_0297:
    ScrCmd_02C 9
    ScrCmd_02C 10
    ScrCmd_031
    ScrCmd_034
    ScrCmd_028 0x411E, 1
    ClearFlag 0x1FA
    ScrCmd_028 0x40CF, 2
    SetFlag 0x988
    ScrCmd_061
    End

_02B9:
    ScrCmd_0EB
    ScrCmd_061
    End

    .balign 4, 0
_02C0:
    MoveAction_013 4
    MoveAction_010
    MoveAction_013 6
    MoveAction_024
    EndMovement

    .balign 4, 0
_02D4:
    MoveAction_013 4
    MoveAction_010 2
    MoveAction_013 6
    MoveAction_025
    EndMovement

    .balign 4, 0
_02E8:
    MoveAction_00D 3
    MoveAction_00E
    EndMovement

    .balign 4, 0
_02F4:
    MoveAction_00D 4
    MoveAction_00E
    EndMovement

    .balign 4, 0
_0300:
    MoveAction_03F 6
    MoveAction_021
    EndMovement

    .balign 4, 0
_030C:
    MoveAction_03F 6
    MoveAction_020
    EndMovement

    .balign 4, 0
_0318:
    MoveAction_003
    MoveAction_03F 2
    MoveAction_002
    MoveAction_03F 2
    MoveAction_001
    EndMovement

    .balign 4, 0
_0330:
    MoveAction_003
    MoveAction_03F 2
    MoveAction_002
    MoveAction_03F 2
    MoveAction_000
    EndMovement

    .balign 4, 0
_0348:
    MoveAction_04B
    MoveAction_00C
    MoveAction_022
    EndMovement

    .balign 4, 0
_0358:
    MoveAction_04B
    MoveAction_022
    EndMovement

    .balign 4, 0
_0364:
    MoveAction_020
    EndMovement

    .balign 4, 0
_036C:
    MoveAction_022
    EndMovement

    .balign 4, 0
_0374:
    MoveAction_021
    EndMovement

_037C:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    CompareVarToValue 0x40CF, 3
    ScrCmd_01C 4, _039C
    ScrCmd_02C 11
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_039C:
    ScrCmd_02C 12
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_03A7:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    CompareVarToValue 0x40CF, 3
    ScrCmd_01C 4, _03C7
    ScrCmd_02C 10
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_03C7:
    ScrCmd_02C 13
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_03D2:
    GoTo _03E2
    End

_03DA:
    GoTo _03E2
    End

_03E2:
    ScrCmd_049 0x5DC
    ScrCmd_060
    CompareVarToValue 0x40AA, 2
    ScrCmd_01C 4, _0400
    ScrCmd_02C 14
    GoTo _040B
    End

_0400:
    ScrCmd_02C 15
    GoTo _040B
    End

_040B:
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .byte 0
