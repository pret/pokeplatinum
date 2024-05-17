    .include "macros/scrcmd.inc"

    .data

    .long _00DA-.-4
    .long _00ED-.-4
    .long _0100-.-4
    .long _0130-.-4
    .long _0143-.-4
    .long _015A-.-4
    .long _0171-.-4
    .long _0184-.-4
    .long _03D4-.-4
    .long _043C-.-4
    .long _049C-.-4
    .long _04FC-.-4
    .long _055C-.-4
    .long _003E-.-4
    .long _05BC-.-4
    .short 0xFD13

_003E:
    SetFlag 0x2AA
    SetFlag 0x2AD
    SetFlag 0x2AF
    SetFlag 0x2B2
    SetFlag 0x2B5
    CompareVarToValue 0x404E, 0xFF
    GoToIf 1, _00BA
    CompareVarToValue 0x40C8, 0
    GoToIf 1, _00BA
    CheckFlag 0x9AB
    GoToIf 1, _00BA
    CompareVarToValue 0x404E, 2
    CallIf 1, _00BC
    CompareVarToValue 0x404E, 4
    CallIf 1, _00C2
    CompareVarToValue 0x404E, 5
    CallIf 1, _00C8
    CompareVarToValue 0x404E, 7
    CallIf 1, _00CE
    CompareVarToValue 0x404E, 9
    CallIf 1, _00D4
    End

_00BA:
    End

_00BC:
    ClearFlag 0x2AA
    Return

_00C2:
    ClearFlag 0x2AD
    Return

_00C8:
    ClearFlag 0x2AF
    Return

_00CE:
    ClearFlag 0x2B2
    Return

_00D4:
    ClearFlag 0x2B5
    Return

_00DA:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 0
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00ED:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0100:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    CheckFlag 250
    CallIf 0, _0126
    CheckFlag 250
    CallIf 1, _012B
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0126:
    ScrCmd_02C 2
    Return

_012B:
    ScrCmd_02C 3
    Return

_0130:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 4
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0143:
    ScrCmd_036 25, 0, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    End

_015A:
    ScrCmd_036 26, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    End

_0171:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 5
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0184:
    ScrCmd_060
    ScrCmd_069 0x8004, 0x8005
    CompareVarToValue 0x8005, 0x1D8
    CallIf 1, _0266
    CompareVarToValue 0x8005, 0x1D9
    CallIf 1, _0272
    CompareVarToValue 0x8005, 0x1DA
    CallIf 1, _0274
    ScrCmd_02C 6
    ScrCmd_03E 0x800C
    CompareVarToValue 0x800C, 1
    GoToIf 1, _02BC
    ScrCmd_30C
    ScrCmd_02C 7
    ScrCmd_034
    CompareVarToValue 0x8005, 0x1D8
    CallIf 1, _0280
    CompareVarToValue 0x8005, 0x1D9
    CallIf 1, _0294
    CompareVarToValue 0x8005, 0x1DA
    CallIf 1, _02A8
    ScrCmd_02C 9
    ScrCmd_034
    ApplyMovement 13, _0388
    WaitMovement
    ScrCmd_168 25, 14, 22, 21, 77
    ScrCmd_16B 77
    ScrCmd_169 77
    ApplyMovement 13, _0390
    ApplyMovement 0xFF, _03C0
    WaitMovement
    ScrCmd_16C 77
    ScrCmd_169 77
    ScrCmd_16A 77
    ScrCmd_065 13
    SetVar 0x40C8, 1
    SetVar 0x404E, 0xFF
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_0BE 0x1D0, 0, 10, 6, 2
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    End

_0266:
    ApplyMovement 13, _0328
    WaitMovement
    Return

_0272:
    Return

_0274:
    ApplyMovement 13, _0334
    WaitMovement
    Return

_0280:
    ApplyMovement 13, _0358
    ApplyMovement 0xFF, _039C
    WaitMovement
    Return

_0294:
    ApplyMovement 13, _0368
    ApplyMovement 0xFF, _03A8
    WaitMovement
    Return

_02A8:
    ApplyMovement 13, _0378
    ApplyMovement 0xFF, _03B4
    WaitMovement
    Return

_02BC:
    ScrCmd_02C 8
    ScrCmd_034
    ScrCmd_069 0x8004, 0x8005
    CompareVarToValue 0x8005, 0x1D8
    CallIf 1, _02F2
    CompareVarToValue 0x8005, 0x1D9
    CallIf 1, _0306
    CompareVarToValue 0x8005, 0x1DA
    CallIf 1, _0312
    ScrCmd_061
    End

_02F2:
    ApplyMovement 13, _0340
    ApplyMovement 0xFF, _03CC
    WaitMovement
    Return

_0306:
    ApplyMovement 0xFF, _03CC
    WaitMovement
    Return

_0312:
    ApplyMovement 13, _034C
    ApplyMovement 0xFF, _03CC
    WaitMovement
    Return

    .balign 4, 0
_0328:
    MoveAction_00C
    MoveAction_022
    EndMovement

    .balign 4, 0
_0334:
    MoveAction_00D
    MoveAction_022
    EndMovement

    .balign 4, 0
_0340:
    MoveAction_00D
    MoveAction_022
    EndMovement

    .balign 4, 0
_034C:
    MoveAction_00C
    MoveAction_022
    EndMovement

    .balign 4, 0
_0358:
    MoveAction_00F 6
    MoveAction_00C 2
    MoveAction_021
    EndMovement

    .balign 4, 0
_0368:
    MoveAction_00F 6
    MoveAction_00C 3
    MoveAction_021
    EndMovement

    .balign 4, 0
_0378:
    MoveAction_00F 6
    MoveAction_00C 4
    MoveAction_021
    EndMovement

    .balign 4, 0
_0388:
    MoveAction_020
    EndMovement

    .balign 4, 0
_0390:
    MoveAction_00C
    MoveAction_045
    EndMovement

    .balign 4, 0
_039C:
    MoveAction_00F 7
    MoveAction_00C
    EndMovement

    .balign 4, 0
_03A8:
    MoveAction_00F 7
    MoveAction_00C 2
    EndMovement

    .balign 4, 0
_03B4:
    MoveAction_00F 7
    MoveAction_00C 3
    EndMovement

    .balign 4, 0
_03C0:
    MoveAction_00C 2
    MoveAction_045
    EndMovement

    .balign 4, 0
_03CC:
    MoveAction_00E
    EndMovement

_03D4:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 10
    ScrCmd_03E 0x800C
    CompareVarToValue 0x800C, 1
    GoToIf 1, _0429
    ScrCmd_02C 11
    ScrCmd_034
    SetFlag 0x2AA
    SetVar 0x404E, 2
    SetFlag 0x9AB
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_0BE 0x1D0, 0, 11, 11, 0
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    End

_0429:
    ScrCmd_02C 12
    GoTo _0434
    End

_0434:
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_043C:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 13
    ScrCmd_03E 0x800C
    CompareVarToValue 0x800C, 1
    GoToIf 1, _0491
    ScrCmd_02C 14
    ScrCmd_034
    SetFlag 0x2AD
    SetVar 0x404E, 4
    SetFlag 0x9AB
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_0BE 0x1D0, 0, 11, 11, 0
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    End

_0491:
    ScrCmd_02C 15
    GoTo _0434
    End

_049C:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 16
    ScrCmd_03E 0x800C
    CompareVarToValue 0x800C, 1
    GoToIf 1, _04F1
    ScrCmd_02C 17
    ScrCmd_034
    SetFlag 0x2AF
    SetVar 0x404E, 5
    SetFlag 0x9AB
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_0BE 0x1D0, 0, 11, 11, 0
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    End

_04F1:
    ScrCmd_02C 18
    GoTo _0434
    End

_04FC:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 19
    ScrCmd_03E 0x800C
    CompareVarToValue 0x800C, 1
    GoToIf 1, _0551
    ScrCmd_02C 20
    ScrCmd_034
    SetFlag 0x2B2
    SetVar 0x404E, 7
    SetFlag 0x9AB
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_0BE 0x1D0, 0, 11, 11, 0
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    End

_0551:
    ScrCmd_02C 21
    GoTo _0434
    End

_055C:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 22
    ScrCmd_03E 0x800C
    CompareVarToValue 0x800C, 1
    GoToIf 1, _05B1
    ScrCmd_02C 23
    ScrCmd_034
    SetFlag 0x2B5
    SetVar 0x404E, 9
    SetFlag 0x9AB
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_0BE 0x1D0, 0, 11, 11, 0
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    End

_05B1:
    ScrCmd_02C 24
    GoTo _0434
    End

_05BC:
    ScrCmd_036 27, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    End

    .byte 0
