    .include "macros/scrcmd.inc"

    .data

    .long _003A-.-4
    .long _03CC-.-4
    .long _0409-.-4
    .long _0446-.-4
    .long _0483-.-4
    .long _04C0-.-4
    .long _04FD-.-4
    .long _053A-.-4
    .long _0577-.-4
    .long _05B4-.-4
    .long _05F1-.-4
    .long _062E-.-4
    .long _0676-.-4
    .long _0689-.-4
    .short 0xFD13

_003A:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    SetVar 0x8007, 0
    CheckFlag 136
    CallIf 0, _006F
    CompareVar 0x4001, 0
    GoToIf 1, _0077
    CompareVar 0x4001, 1
    GoToIf 1, _0080
    End

_006F:
    SetVar 0x8007, 1
    Return

_0077:
    ScrCmd_02C 1
    GoTo _00B5

_0080:
    ScrCmd_02C 11
    GoTo _00B5

_0089:
    ScrCmd_02C 3
    ScrCmd_03E 0x800C
    CompareVar 0x800C, 0
    GoToIf 1, _00AC
    CompareVar 0x800C, 1
    GoToIf 1, _00F5
    End

_00AC:
    ScrCmd_02C 6
    GoTo _00D5

_00B5:
    ScrCmd_03E 0x800C
    CompareVar 0x800C, 0
    GoToIf 1, _0089
    CompareVar 0x800C, 1
    GoToIf 1, _02B3
    End

_00D5:
    ScrCmd_03E 0x800C
    CompareVar 0x800C, 0
    GoToIf 1, _00F5
    CompareVar 0x800C, 1
    GoToIf 1, _02B3
    End

_00F5:
    ScrCmd_177 0x800C
    CompareVar 0x800C, 1
    GoToIf 1, _0115
    CompareVar 0x800C, 1
    GoToIf 5, _0121
    End

_0115:
    SetVar 0x4002, 0
    GoTo _016C

_0121:
    ScrCmd_02C 4
    ScrCmd_034
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_191
    ScrCmd_193 0x4002
    ScrCmd_0A1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    CompareVar 0x4002, 0xFF
    GoToIf 1, _02B3
    ScrCmd_198 0x4002, 0x800C
    CompareVar 0x800C, 0
    GoToIf 1, _02BE
    GoTo _016C

_016C:
    ScrCmd_02C 5
    ScrCmd_034
    ScrCmd_1BD 0x8006
    CompareVar 0x8006, 0
    GoToIf 1, _019E
    CompareVar 0x8006, 2
    GoToIf 1, _01B8
    CompareVar 0x8006, 3
    GoToIf 1, _01D2
    End

_019E:
    ApplyMovement 0, _0374
    WaitMovement
    ApplyMovement 0xFF, _0340
    WaitMovement
    GoTo _01EC

_01B8:
    ApplyMovement 0, _0380
    WaitMovement
    ApplyMovement 0xFF, _0348
    WaitMovement
    GoTo _01EC

_01D2:
    ApplyMovement 0, _038C
    WaitMovement
    ApplyMovement 0xFF, _0354
    WaitMovement
    GoTo _01EC

_01EC:
    SetFlag 136
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_0A6 0x4002, 0x8005, 0x8007
    ScrCmd_0A1
    ApplyMovement 0xFF, _0360
    WaitMovement
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    CompareVar 0x8006, 0
    GoToIf 1, _0245
    CompareVar 0x8006, 2
    GoToIf 1, _025F
    CompareVar 0x8006, 3
    GoToIf 1, _0279
    End

_0245:
    ApplyMovement 0xFF, _0368
    WaitMovement
    ApplyMovement 0, _0398
    WaitMovement
    GoTo _0293

_025F:
    ApplyMovement 0xFF, _0368
    WaitMovement
    ApplyMovement 0, _03A4
    WaitMovement
    GoTo _0293

_0279:
    ApplyMovement 0xFF, _0368
    WaitMovement
    ApplyMovement 0, _03B0
    WaitMovement
    GoTo _0293

_0293:
    CompareVar 0x8005, 0
    GoToIf 1, _0335
    SetVar 0x4001, 1
    ScrCmd_02C 7
    ScrCmd_031
    ScrCmd_034
    GoTo _02C7

_02B3:
    ScrCmd_02C 2
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_02BE:
    ScrCmd_02C 13
    GoTo _0121

_02C7:
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_243 0, 0x800C, 0x8004
    ScrCmd_0A1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    CompareVar 0x800C, 0
    GoToIf 1, _0328
    ScrCmd_130 0x8004
    ScrCmd_1E5 54
    ScrCmd_316
    ScrCmd_245 0, 0x8004
    ScrCmd_02C 8
    ApplyMovement 0, _03BC
    WaitMovement
    ScrCmd_02C 14
    ScrCmd_031
    ScrCmd_034
    ApplyMovement 0, _03C4
    WaitMovement
    ScrCmd_061
    End

_0328:
    ScrCmd_02C 9
    ScrCmd_031
    ScrCmd_034
    GoTo _02C7

_0335:
    ScrCmd_02C 10
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .balign 4, 0
_0340:
    MoveAction_008 2
    EndMovement

    .balign 4, 0
_0348:
    MoveAction_00A
    MoveAction_008
    EndMovement

    .balign 4, 0
_0354:
    MoveAction_00B
    MoveAction_008
    EndMovement

    .balign 4, 0
_0360:
    MoveAction_001
    EndMovement

    .balign 4, 0
_0368:
    MoveAction_009 2
    MoveAction_000
    EndMovement

    .balign 4, 0
_0374:
    MoveAction_00E
    MoveAction_003
    EndMovement

    .balign 4, 0
_0380:
    MoveAction_00E
    MoveAction_003
    EndMovement

    .balign 4, 0
_038C:
    MoveAction_00F
    MoveAction_002
    EndMovement

    .balign 4, 0
_0398:
    MoveAction_00F
    MoveAction_001
    EndMovement

    .balign 4, 0
_03A4:
    MoveAction_00F
    MoveAction_001
    EndMovement

    .balign 4, 0
_03B0:
    MoveAction_00E
    MoveAction_001
    EndMovement

    .balign 4, 0
_03BC:
    MoveAction_003
    EndMovement

    .balign 4, 0
_03C4:
    MoveAction_001
    EndMovement

_03CC:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_12E 0, 0x800C
    CompareVar 0x800C, 0
    GoToIf 1, _066B
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_0A7 0, 0x800C
    ScrCmd_0A1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_061
    End

_0409:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_12E 1, 0x800C
    CompareVar 0x800C, 0
    GoToIf 1, _066B
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_0A7 1, 0x800C
    ScrCmd_0A1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_061
    End

_0446:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_12E 2, 0x800C
    CompareVar 0x800C, 0
    GoToIf 1, _066B
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_0A7 2, 0x800C
    ScrCmd_0A1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_061
    End

_0483:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_12E 3, 0x800C
    CompareVar 0x800C, 0
    GoToIf 1, _066B
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_0A7 3, 0x800C
    ScrCmd_0A1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_061
    End

_04C0:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_12E 4, 0x800C
    CompareVar 0x800C, 0
    GoToIf 1, _066B
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_0A7 4, 0x800C
    ScrCmd_0A1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_061
    End

_04FD:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_12E 5, 0x800C
    CompareVar 0x800C, 0
    GoToIf 1, _066B
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_0A7 5, 0x800C
    ScrCmd_0A1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_061
    End

_053A:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_12E 6, 0x800C
    CompareVar 0x800C, 0
    GoToIf 1, _066B
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_0A7 6, 0x800C
    ScrCmd_0A1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_061
    End

_0577:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_12E 7, 0x800C
    CompareVar 0x800C, 0
    GoToIf 1, _066B
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_0A7 7, 0x800C
    ScrCmd_0A1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_061
    End

_05B4:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_12E 8, 0x800C
    CompareVar 0x800C, 0
    GoToIf 1, _066B
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_0A7 8, 0x800C
    ScrCmd_0A1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_061
    End

_05F1:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_12E 9, 0x800C
    CompareVar 0x800C, 0
    GoToIf 1, _066B
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_0A7 9, 0x800C
    ScrCmd_0A1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_061
    End

_062E:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_12E 10, 0x800C
    CompareVar 0x800C, 0
    GoToIf 1, _066B
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_0A7 10, 0x800C
    ScrCmd_0A1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_061
    End

_066B:
    ScrCmd_02C 15
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0676:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 16
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0689:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 17
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End
