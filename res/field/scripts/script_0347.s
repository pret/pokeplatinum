    .include "macros/scrcmd.inc"

    .data

    .long _003E-.-4
    .long _0055-.-4
    .long _0059-.-4
    .long _014C-.-4
    .long _0173-.-4
    .long _019A-.-4
    .long _01C1-.-4
    .long _01C3-.-4
    .long _01C5-.-4
    .long _01C7-.-4
    .long _03C4-.-4
    .long _03D7-.-4
    .long _03EA-.-4
    .long _0394-.-4
    .long _03FD-.-4
    .short 0xFD13

_003E:
    CheckFlag 0x97D
    GoToIf 1, _004B
    End

_004B:
    ScrCmd_186 0, 9, 6
    End

_0055:
    ScrCmd_25E
    End

_0059:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    CheckFlag 0x97D
    GoToIf 1, _0109
    CheckFlag 173
    GoToIf 1, _0114
    ScrCmd_02C 0
    ScrCmd_034
    ScrCmd_0E5 0x199, 0
    ScrCmd_0EC 0x800C
    CompareVarToValue 0x800C, 0
    GoToIf 1, _011F
    SetFlag 173
    SetVar 0x410D, 1
    ScrCmd_02C 1
    ScrCmd_034
    ScrCmd_1BD 0x8004
    SetVar 0x4002, 0x8004
    CompareVarToValue 0x8004, 0
    GoToIf 1, _00D5
    CompareVarToValue 0x8004, 2
    GoToIf 1, _00E5
    CompareVarToValue 0x8004, 3
    GoToIf 1, _00F5
    End

_00D5:
    ApplyMovement 0, _0128
    WaitMovement
    GoTo _0105

_00E5:
    ApplyMovement 0, _0134
    WaitMovement
    GoTo _0105

_00F5:
    ApplyMovement 0, _0140
    WaitMovement
    GoTo _0105

_0105:
    ScrCmd_061
    End

_0109:
    ScrCmd_02C 3
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0114:
    ScrCmd_02C 2
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_011F:
    ScrCmd_0EB
    ScrCmd_061
    End

    .balign 4, 0
_0128:
    MoveAction_00F
    MoveAction_021
    EndMovement

    .balign 4, 0
_0134:
    MoveAction_00D
    MoveAction_020
    EndMovement

    .balign 4, 0
_0140:
    MoveAction_00F
    MoveAction_022
    EndMovement

_014C:
    ScrCmd_049 0x5DC
    ScrCmd_060
    CheckFlag 0x97D
    GoToIf 1, _0168
    ScrCmd_02C 13
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0168:
    ScrCmd_02C 16
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0173:
    ScrCmd_049 0x5DC
    ScrCmd_060
    CheckFlag 0x97D
    GoToIf 1, _018F
    ScrCmd_02C 14
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_018F:
    ScrCmd_02C 17
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_019A:
    ScrCmd_049 0x5DC
    ScrCmd_060
    CheckFlag 0x97D
    GoToIf 1, _01B6
    ScrCmd_02C 15
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_01B6:
    ScrCmd_02C 18
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_01C1:
    End

_01C3:
    End

_01C5:
    End

_01C7:
    ScrCmd_049 0x5DC
    ScrCmd_060
    CheckFlag 0x97D
    GoToIf 1, _0347
    ScrCmd_02C 10
    ScrCmd_03E 0x800C
    CompareVarToValue 0x800C, 0
    GoToIf 1, _01FB
    CompareVarToValue 0x800C, 1
    GoToIf 1, _0341
    End

_01FB:
    SetVar 0x410D, 0
    ScrCmd_049 0x5E5
    ScrCmd_0CD 0
    ScrCmd_02C 11
    ScrCmd_034
    ClearFlag 0x295
    SetFlag 0x97D
    ScrCmd_25F
    ScrCmd_003 30, 0x800C
    ApplyMovement 2, _036C
    ApplyMovement 1, _0374
    ApplyMovement 3, _037C
    WaitMovement
    ScrCmd_186 2, 2, 6
    ScrCmd_186 1, 14, 6
    ScrCmd_186 3, 8, 12
    Call _0296
    Call _0296
    Call _0296
    ScrCmd_065 2
    ScrCmd_065 1
    ScrCmd_065 3
    CompareVarToValue 0x4002, 0
    GoToIf 1, _02C0
    CompareVarToValue 0x4002, 2
    GoToIf 1, _02DA
    CompareVarToValue 0x4002, 3
    GoToIf 1, _02F4
    End

_0296:
    ScrCmd_065 2
    ScrCmd_065 1
    ScrCmd_065 3
    ScrCmd_003 2, 0x800C
    ClearFlag 0x236
    ScrCmd_064 2
    ScrCmd_064 1
    ScrCmd_064 3
    ScrCmd_003 2, 0x800C
    Return

_02C0:
    ApplyMovement 0, _0354
    ApplyMovement 0xFF, _0384
    WaitMovement
    GoTo _030E
    End

_02DA:
    ApplyMovement 0, _0360
    ApplyMovement 0xFF, _038C
    WaitMovement
    GoTo _030E
    End

_02F4:
    ApplyMovement 0, _0354
    ApplyMovement 0xFF, _0384
    WaitMovement
    GoTo _030E
    End

_030E:
    ScrCmd_02C 3
    ScrCmd_034
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_065 0
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    SetFlag 0x235
    ClearFlag 0x182
    SetVar 0x40A9, 1
    ScrCmd_061
    End

_0341:
    ScrCmd_034
    ScrCmd_061
    End

_0347:
    ScrCmd_02C 12
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .balign 4, 0
_0354:
    MoveAction_03F
    MoveAction_022
    EndMovement

    .balign 4, 0
_0360:
    MoveAction_03F
    MoveAction_020
    EndMovement

    .balign 4, 0
_036C:
    MoveAction_00D 2
    EndMovement

    .balign 4, 0
_0374:
    MoveAction_00D 2
    EndMovement

    .balign 4, 0
_037C:
    MoveAction_00D 2
    EndMovement

    .balign 4, 0
_0384:
    MoveAction_023
    EndMovement

    .balign 4, 0
_038C:
    MoveAction_021
    EndMovement

_0394:
    ScrCmd_060
    ApplyMovement 0, _03BC
    WaitMovement
    ScrCmd_02C 4
    ScrCmd_034
    ApplyMovement 0xFF, _03B4
    WaitMovement
    ScrCmd_061
    End

    .balign 4, 0
_03B4:
    MoveAction_00C
    EndMovement

    .balign 4, 0
_03BC:
    MoveAction_021
    EndMovement

_03C4:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 13
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_03D7:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 14
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_03EA:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 15
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_03FD:
    ScrCmd_049 0x5DC
    ScrCmd_060
    CheckFlag 173
    GoToIf 1, _0450
    ApplyMovement 4, _0470
    WaitMovement
    ScrCmd_02C 5
    ScrCmd_034
    ApplyMovement 0, _0460
    WaitMovement
    ScrCmd_003 20, 0x800C
    ScrCmd_02C 6
    ScrCmd_02C 7
    ScrCmd_034
    ScrCmd_003 20, 0x800C
    ApplyMovement 0, _0468
    WaitMovement
    ScrCmd_02C 8
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0450:
    ScrCmd_068
    ScrCmd_02C 9
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .balign 4, 0
_0460:
    MoveAction_022
    EndMovement

    .balign 4, 0
_0468:
    MoveAction_020
    EndMovement

    .balign 4, 0
_0470:
    MoveAction_020
    EndMovement
