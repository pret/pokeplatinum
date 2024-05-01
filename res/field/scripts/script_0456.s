    .include "macros/scrcmd.inc"

    .data

    .long _001E-.-4
    .long _0067-.-4
    .long _0224-.-4
    .long _0325-.-4
    .long _0354-.-4
    .long _0388-.-4
    .long _0399-.-4
    .short 0xFD13

_001E:
    ScrCmd_268 0x4000
    CompareVarToValue 0x4000, 0
    ScrCmd_01C 1, _004F
    CompareVarToValue 0x4000, 1
    ScrCmd_01C 1, _004F
    CompareVarToValue 0x4000, 5
    ScrCmd_01C 3, _005B
    GoTo _004F

_004F:
    ClearFlag 0x28B
    ScrCmd_028 0x4116, 0
    End

_005B:
    SetFlag 0x28B
    ScrCmd_028 0x4116, 1
    End

_0067:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    CheckFlag 0xAA2
    ScrCmd_01C 1, _0155
    CompareVarToValue 0x400B, 1
    ScrCmd_01C 1, _0155
    ScrCmd_22D 2, 0x800C
    CompareVarToValue 0x800C, 1
    ScrCmd_01C 1, _00AA
    GoTo _009F

_009F:
    ScrCmd_02C 0
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00AA:
    ScrCmd_02C 3
    ScrCmd_03E 0x800C
    CompareVarToValue 0x800C, 0
    ScrCmd_01C 1, _00D8
    CompareVarToValue 0x800C, 1
    ScrCmd_01C 1, _00CD
    End

_00CD:
    ScrCmd_02C 4
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00D8:
    ScrCmd_02C 5
    ScrCmd_03E 0x800C
    CompareVarToValue 0x800C, 0
    ScrCmd_01C 1, _00FB
    CompareVarToValue 0x800C, 1
    ScrCmd_01C 1, _00CD
    End

_00FB:
    ScrCmd_1EC
    ScrCmd_1ED 0x8000
    ScrCmd_0DA 0, 0x8000, 0, 0
    ScrCmd_02C 6
    ScrCmd_069 0x8001, 0x8002
    ScrCmd_05E 2, _01D4
    ScrCmd_05F
    ScrCmd_02C 7
    ScrCmd_05E 1, _01E4
    ScrCmd_05F
    ScrCmd_02C 8
    ScrCmd_02C 9
    ScrCmd_034
    ScrCmd_05E 2, _01F0
    ScrCmd_05F
    ScrCmd_065 2
    ScrCmd_028 0x400B, 1
    Call _016C
    SetFlag 0xAA2
    GoTo _0155

_0155:
    ScrCmd_1ED 0x8000
    ScrCmd_0DA 0, 0x8000, 0, 0
    ScrCmd_02C 10
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_016C:
    CompareVarToValue 0x8001, 4
    ScrCmd_01C 1, _0199
    CompareVarToValue 0x8001, 6
    ScrCmd_01C 1, _01A5
    CompareVarToValue 0x8002, 6
    ScrCmd_01C 1, _01B1
    GoTo _01BD

_0199:
    ScrCmd_05E 1, _0204
    ScrCmd_05F
    Return

_01A5:
    ScrCmd_05E 1, _020C
    ScrCmd_05F
    Return

_01B1:
    ScrCmd_05E 1, _0214
    ScrCmd_05F
    Return

_01BD:
    ScrCmd_05E 1, _021C
    ScrCmd_05F
    Return

    .balign 4, 0
_01CC:
    MoveAction_001
    EndMovement

    .balign 4, 0
_01D4:
    MoveAction_04B
    MoveAction_041
    MoveAction_003
    EndMovement

    .balign 4, 0
_01E4:
    MoveAction_04B
    MoveAction_022
    EndMovement

    .balign 4, 0
_01F0:
    MoveAction_00D 2
    MoveAction_00F
    MoveAction_001
    MoveAction_045
    EndMovement

    .balign 4, 0
_0204:
    MoveAction_022
    EndMovement

    .balign 4, 0
_020C:
    MoveAction_023
    EndMovement

    .balign 4, 0
_0214:
    MoveAction_020
    EndMovement

    .balign 4, 0
_021C:
    MoveAction_021
    EndMovement

_0224:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_22D 2, 0x800C
    CompareVarToValue 0x800C, 1
    ScrCmd_01C 1, _0244
    GoTo _0270

_0244:
    CheckFlag 0x164
    ScrCmd_01C 1, _0270
    GoTo _0257
    End

_0257:
    ScrCmd_02C 15
    SetFlag 0x164
    ScrCmd_031
    ScrCmd_034
    ScrCmd_05E 2, _01CC
    ScrCmd_05F
    ScrCmd_061
    End

_0270:
    CheckFlag 0xAA2
    ScrCmd_01C 1, _0304
    ScrCmd_166 0x800C
    CompareVarToValue 0x800C, 1
    ScrCmd_01C 1, _02C8
    ScrCmd_1B7 0x800C, 2
    CompareVarToValue 0x800C, 0
    ScrCmd_01D 1, _02BE
    CompareVarToValue 0x800C, 1
    ScrCmd_01D 1, _02C3
    ScrCmd_031
    ScrCmd_034
    ScrCmd_05E 2, _01CC
    ScrCmd_05F
    ScrCmd_061
    End

_02BE:
    ScrCmd_02C 11
    Return

_02C3:
    ScrCmd_02C 12
    Return

_02C8:
    ScrCmd_1B7 0x800C, 2
    CompareVarToValue 0x800C, 0
    ScrCmd_01D 1, _02FA
    CompareVarToValue 0x800C, 1
    ScrCmd_01D 1, _02FF
    ScrCmd_031
    ScrCmd_034
    ScrCmd_05E 2, _01CC
    ScrCmd_05F
    ScrCmd_061
    End

_02FA:
    ScrCmd_02C 11
    Return

_02FF:
    ScrCmd_02C 13
    Return

_0304:
    ScrCmd_1ED 0x8000
    ScrCmd_0DA 0, 0x8000, 0, 0
    ScrCmd_02C 14
    ScrCmd_031
    ScrCmd_034
    ScrCmd_05E 2, _01CC
    ScrCmd_05F
    ScrCmd_061
    End

_0325:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 16
    ScrCmd_031
    ScrCmd_034
    ScrCmd_05E 3, _0344
    ScrCmd_05F
    ScrCmd_061
    End

    .balign 4, 0
_0344:
    MoveAction_001
    EndMovement

    .balign 4, 0
_034C:
    MoveAction_002
    EndMovement

_0354:
    ScrCmd_060
    ScrCmd_05E 3, _034C
    ScrCmd_05F
    ScrCmd_02C 17
    ScrCmd_034
    ScrCmd_05E 0xFF, _037C
    ScrCmd_05E 3, _0344
    ScrCmd_05F
    ScrCmd_061
    End

    .balign 4, 0
_037C:
    MoveAction_00D
    MoveAction_000
    EndMovement

_0388:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 18
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0399:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 19
    ScrCmd_03E 0x800C
    CompareVarToValue 0x800C, 0
    ScrCmd_01C 1, _03C2
    CompareVarToValue 0x800C, 1
    ScrCmd_01C 1, _0408
    End

_03C2:
    ScrCmd_02C 20
    CheckFlag 251
    ScrCmd_01C 1, _0408
    ScrCmd_337 0x1EA, 0x800C
    CompareVarToValue 0x800C, 1
    ScrCmd_01C 1, _03FC
    ScrCmd_208 0x1EA, 0
    ScrCmd_030
    ScrCmd_209
    SetFlag 251
    ScrCmd_02C 21
    GoTo _0416
    End

_03FC:
    SetFlag 251
    GoTo _0408
    End

_0408:
    ScrCmd_0CD 0
    ScrCmd_02C 22
    GoTo _0416
    End

_0416:
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .byte 0
    .byte 0
