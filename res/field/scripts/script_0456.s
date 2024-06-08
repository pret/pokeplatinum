    .include "macros/scrcmd.inc"

    .data

    ScriptEntry _001E
    ScriptEntry _0067
    ScriptEntry _0224
    ScriptEntry _0325
    ScriptEntry _0354
    ScriptEntry _0388
    ScriptEntry _0399
    .short 0xFD13

_001E:
    ScrCmd_268 0x4000
    GoToIfEq 0x4000, 0, _004F
    GoToIfEq 0x4000, 1, _004F
    GoToIfLe 0x4000, 5, _005B
    GoTo _004F

_004F:
    ClearFlag 0x28B
    SetVar 0x4116, 0
    End

_005B:
    SetFlag 0x28B
    SetVar 0x4116, 1
    End

_0067:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    GoToIfSet 0xAA2, _0155
    GoToIfEq 0x400B, 1, _0155
    ScrCmd_22D 2, 0x800C
    GoToIfEq 0x800C, 1, _00AA
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
    GoToIfEq 0x800C, 0, _00D8
    GoToIfEq 0x800C, 1, _00CD
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
    GoToIfEq 0x800C, 0, _00FB
    GoToIfEq 0x800C, 1, _00CD
    End

_00FB:
    ScrCmd_1EC
    ScrCmd_1ED 0x8000
    ScrCmd_0DA 0, 0x8000, 0, 0
    ScrCmd_02C 6
    ScrCmd_069 0x8001, 0x8002
    ApplyMovement 2, _01D4
    WaitMovement
    ScrCmd_02C 7
    ApplyMovement 1, _01E4
    WaitMovement
    ScrCmd_02C 8
    ScrCmd_02C 9
    ScrCmd_034
    ApplyMovement 2, _01F0
    WaitMovement
    ScrCmd_065 2
    SetVar 0x400B, 1
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
    GoToIfEq 0x8001, 4, _0199
    GoToIfEq 0x8001, 6, _01A5
    GoToIfEq 0x8002, 6, _01B1
    GoTo _01BD

_0199:
    ApplyMovement 1, _0204
    WaitMovement
    Return

_01A5:
    ApplyMovement 1, _020C
    WaitMovement
    Return

_01B1:
    ApplyMovement 1, _0214
    WaitMovement
    Return

_01BD:
    ApplyMovement 1, _021C
    WaitMovement
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
    GoToIfEq 0x800C, 1, _0244
    GoTo _0270

_0244:
    GoToIfSet 0x164, _0270
    GoTo _0257
    End

_0257:
    ScrCmd_02C 15
    SetFlag 0x164
    ScrCmd_031
    ScrCmd_034
    ApplyMovement 2, _01CC
    WaitMovement
    ScrCmd_061
    End

_0270:
    GoToIfSet 0xAA2, _0304
    ScrCmd_166 0x800C
    GoToIfEq 0x800C, 1, _02C8
    ScrCmd_1B7 0x800C, 2
    CallIfEq 0x800C, 0, _02BE
    CallIfEq 0x800C, 1, _02C3
    ScrCmd_031
    ScrCmd_034
    ApplyMovement 2, _01CC
    WaitMovement
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
    CallIfEq 0x800C, 0, _02FA
    CallIfEq 0x800C, 1, _02FF
    ScrCmd_031
    ScrCmd_034
    ApplyMovement 2, _01CC
    WaitMovement
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
    ApplyMovement 2, _01CC
    WaitMovement
    ScrCmd_061
    End

_0325:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 16
    ScrCmd_031
    ScrCmd_034
    ApplyMovement 3, _0344
    WaitMovement
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
    ApplyMovement 3, _034C
    WaitMovement
    ScrCmd_02C 17
    ScrCmd_034
    ApplyMovement 0xFF, _037C
    ApplyMovement 3, _0344
    WaitMovement
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
    GoToIfEq 0x800C, 0, _03C2
    GoToIfEq 0x800C, 1, _0408
    End

_03C2:
    ScrCmd_02C 20
    GoToIfSet 251, _0408
    ScrCmd_337 0x1EA, 0x800C
    GoToIfEq 0x800C, 1, _03FC
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
