    .include "macros/scrcmd.inc"

    .data

    .long _0022-.-4
    .long _0078-.-4
    .long _0422-.-4
    .long _03FC-.-4
    .long _040F-.-4
    .long _0435-.-4
    .long _044C-.-4
    .long _0463-.-4
    .short 0xFD13

_0022:
    GoToIfUnset 0x104, _002F
    End

_002F:
    ScrCmd_15B 3, 0x4000
    GoToIfEq 0x4000, 1, _0044
    End

_0044:
    GoToIfSet 0x103, _0051
    End

_0051:
    CheckFlag 0x118
    CallIf 0, _0062
    ClearFlag 0x21A
    End

_0062:
    ScrCmd_186 30, 0x28E, 0x32C
    ScrCmd_189 30, 3
    ScrCmd_188 30, 17
    Return

_0078:
    ScrCmd_049 0x5DC
    ScrCmd_060
    GoToIfSet 0x118, _0133
    ScrCmd_02C 0
    ScrCmd_034
    ScrCmd_068
    ApplyMovement 30, _0388
    WaitMovement
    ScrCmd_02C 1
    ScrCmd_034
    ScrCmd_1BD 0x8004
    GoToIfEq 0x8004, 2, _00F1
    GoToIfEq 0x8004, 3, _00DF
    GoTo _00C5
    End

_00C5:
    ApplyMovement 30, _0390
    ApplyMovement 0xFF, _03F0
    WaitMovement
    GoTo _010B
    End

_00DF:
    ApplyMovement 30, _0390
    WaitMovement
    GoTo _010B
    End

_00F1:
    ApplyMovement 30, _0398
    ApplyMovement 0xFF, _03F0
    WaitMovement
    GoTo _010B
    End

_010B:
    SetFlag 0x118
    ScrCmd_065 30
    ScrCmd_186 30, 0x2AB, 0x341
    ScrCmd_189 30, 3
    ScrCmd_188 30, 17
    ClearFlag 0x21A
    ScrCmd_064 30
    ScrCmd_061
    End

_0133:
    ScrCmd_1BD 0x8004
    ScrCmd_02C 2
    ScrCmd_034
    ScrCmd_068
    ApplyMovement 30, _0388
    WaitMovement
    ScrCmd_02C 3
    ScrCmd_034
    ScrCmd_1BD 0x8004
    GoToIfEq 0x8004, 2, _0180
    GoTo _0166
    End

_0166:
    ApplyMovement 0xFF, _03C0
    ApplyMovement 30, _03A4
    WaitMovement
    GoTo _019A
    End

_0180:
    ApplyMovement 0xFF, _03C0
    ApplyMovement 30, _03B4
    WaitMovement
    GoTo _019A
    End

_019A:
    ScrCmd_065 30
    SetFlag 0x104
    ClearFlag 0x1E8
    ScrCmd_064 33
    ScrCmd_014 0x807
    ScrCmd_315 0x800C
    CompareVar 0x800C, 2
    CallIf 1, _0261
    CompareVar 0x8004, 2
    CallIf 1, _0267
    CompareVar 0x8004, 3
    CallIf 1, _027B
    CompareVar 0x8004, 0
    CallIf 1, _028F
    CompareVar 0x8004, 1
    CallIf 1, _02A3
    ScrCmd_02C 4
    ApplyMovement 33, _0348
    WaitMovement
    ScrCmd_02C 5
    ScrCmd_02C 6
    ScrCmd_034
    CompareVar 0x8004, 2
    CallIf 1, _02B7
    CompareVar 0x8004, 3
    CallIf 1, _02CB
    CompareVar 0x8004, 0
    CallIf 1, _02DF
    CompareVar 0x8004, 1
    CallIf 1, _02F3
    ScrCmd_065 33
    ScrCmd_014 0x808
    ScrCmd_315 0x800C
    CompareVar 0x800C, 2
    CallIf 1, _0261
    ClearFlag 0x211
    ClearFlag 0x21B
    ScrCmd_061
    End

_0261:
    ScrCmd_049 0x639
    Return

_0267:
    ApplyMovement 33, _0318
    ApplyMovement 0xFF, _03CC
    WaitMovement
    Return

_027B:
    ApplyMovement 33, _0308
    ApplyMovement 0xFF, _03CC
    WaitMovement
    Return

_028F:
    ApplyMovement 33, _0338
    ApplyMovement 0xFF, _03CC
    WaitMovement
    Return

_02A3:
    ApplyMovement 33, _0328
    ApplyMovement 0xFF, _03D8
    WaitMovement
    Return

_02B7:
    ApplyMovement 33, _035C
    ApplyMovement 0xFF, _03E4
    WaitMovement
    Return

_02CB:
    ApplyMovement 33, _0350
    ApplyMovement 0xFF, _03E4
    WaitMovement
    Return

_02DF:
    ApplyMovement 33, _037C
    ApplyMovement 0xFF, _03E4
    WaitMovement
    Return

_02F3:
    ApplyMovement 33, _0368
    ApplyMovement 0xFF, _03E4
    WaitMovement
    Return

    .balign 4, 0
_0308:
    MoveAction_013 10
    MoveAction_010 2
    MoveAction_027
    EndMovement

    .balign 4, 0
_0318:
    MoveAction_013 10
    MoveAction_010 2
    MoveAction_013 2
    EndMovement

    .balign 4, 0
_0328:
    MoveAction_013 10
    MoveAction_010 3
    MoveAction_013
    EndMovement

    .balign 4, 0
_0338:
    MoveAction_013 10
    MoveAction_010
    MoveAction_013
    EndMovement

    .balign 4, 0
_0348:
    MoveAction_025
    EndMovement

    .balign 4, 0
_0350:
    MoveAction_010
    MoveAction_013 10
    EndMovement

    .balign 4, 0
_035C:
    MoveAction_010
    MoveAction_013 10
    EndMovement

    .balign 4, 0
_0368:
    MoveAction_011
    MoveAction_013 4
    MoveAction_010
    MoveAction_013 6
    EndMovement

    .balign 4, 0
_037C:
    MoveAction_010 2
    MoveAction_013 10
    EndMovement

    .balign 4, 0
_0388:
    MoveAction_04B
    EndMovement

    .balign 4, 0
_0390:
    MoveAction_013 10
    EndMovement

    .balign 4, 0
_0398:
    MoveAction_011 2
    MoveAction_013 9
    EndMovement

    .balign 4, 0
_03A4:
    MoveAction_013 4
    MoveAction_010
    MoveAction_013 6
    EndMovement

    .balign 4, 0
_03B4:
    MoveAction_010
    MoveAction_013 10
    EndMovement

    .balign 4, 0
_03C0:
    MoveAction_03F
    MoveAction_003
    EndMovement

    .balign 4, 0
_03CC:
    MoveAction_03E 10
    MoveAction_022
    EndMovement

    .balign 4, 0
_03D8:
    MoveAction_03E 11
    MoveAction_022
    EndMovement

    .balign 4, 0
_03E4:
    MoveAction_03E 3
    MoveAction_023
    EndMovement

    .balign 4, 0
_03F0:
    MoveAction_03F
    MoveAction_023
    EndMovement

_03FC:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 8
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_040F:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 9
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0422:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 7
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0435:
    ScrCmd_036 10, 1, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    End

_044C:
    ScrCmd_036 11, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    End

_0463:
    ScrCmd_036 12, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    End

    .byte 0
    .byte 0
