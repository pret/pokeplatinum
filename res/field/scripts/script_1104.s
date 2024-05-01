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
    ScrCmd_01E 0x2AA
    ScrCmd_01E 0x2AD
    ScrCmd_01E 0x2AF
    ScrCmd_01E 0x2B2
    ScrCmd_01E 0x2B5
    ScrCmd_011 0x404E, 0xFF
    ScrCmd_01C 1, _00BA
    ScrCmd_011 0x40C8, 0
    ScrCmd_01C 1, _00BA
    ScrCmd_020 0x9AB
    ScrCmd_01C 1, _00BA
    ScrCmd_011 0x404E, 2
    ScrCmd_01D 1, _00BC
    ScrCmd_011 0x404E, 4
    ScrCmd_01D 1, _00C2
    ScrCmd_011 0x404E, 5
    ScrCmd_01D 1, _00C8
    ScrCmd_011 0x404E, 7
    ScrCmd_01D 1, _00CE
    ScrCmd_011 0x404E, 9
    ScrCmd_01D 1, _00D4
    End

_00BA:
    End

_00BC:
    ScrCmd_01F 0x2AA
    Return

_00C2:
    ScrCmd_01F 0x2AD
    Return

_00C8:
    ScrCmd_01F 0x2AF
    Return

_00CE:
    ScrCmd_01F 0x2B2
    Return

_00D4:
    ScrCmd_01F 0x2B5
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
    ScrCmd_020 250
    ScrCmd_01D 0, _0126
    ScrCmd_020 250
    ScrCmd_01D 1, _012B
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
    ScrCmd_011 0x8005, 0x1D8
    ScrCmd_01D 1, _0266
    ScrCmd_011 0x8005, 0x1D9
    ScrCmd_01D 1, _0272
    ScrCmd_011 0x8005, 0x1DA
    ScrCmd_01D 1, _0274
    ScrCmd_02C 6
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _02BC
    ScrCmd_30C
    ScrCmd_02C 7
    ScrCmd_034
    ScrCmd_011 0x8005, 0x1D8
    ScrCmd_01D 1, _0280
    ScrCmd_011 0x8005, 0x1D9
    ScrCmd_01D 1, _0294
    ScrCmd_011 0x8005, 0x1DA
    ScrCmd_01D 1, _02A8
    ScrCmd_02C 9
    ScrCmd_034
    ScrCmd_05E 13, _0388
    ScrCmd_05F
    ScrCmd_168 25, 14, 22, 21, 77
    ScrCmd_16B 77
    ScrCmd_169 77
    ScrCmd_05E 13, _0390
    ScrCmd_05E 0xFF, _03C0
    ScrCmd_05F
    ScrCmd_16C 77
    ScrCmd_169 77
    ScrCmd_16A 77
    ScrCmd_065 13
    ScrCmd_028 0x40C8, 1
    ScrCmd_028 0x404E, 0xFF
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_0BE 0x1D0, 0, 10, 6, 2
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    End

_0266:
    ScrCmd_05E 13, _0328
    ScrCmd_05F
    Return

_0272:
    Return

_0274:
    ScrCmd_05E 13, _0334
    ScrCmd_05F
    Return

_0280:
    ScrCmd_05E 13, _0358
    ScrCmd_05E 0xFF, _039C
    ScrCmd_05F
    Return

_0294:
    ScrCmd_05E 13, _0368
    ScrCmd_05E 0xFF, _03A8
    ScrCmd_05F
    Return

_02A8:
    ScrCmd_05E 13, _0378
    ScrCmd_05E 0xFF, _03B4
    ScrCmd_05F
    Return

_02BC:
    ScrCmd_02C 8
    ScrCmd_034
    ScrCmd_069 0x8004, 0x8005
    ScrCmd_011 0x8005, 0x1D8
    ScrCmd_01D 1, _02F2
    ScrCmd_011 0x8005, 0x1D9
    ScrCmd_01D 1, _0306
    ScrCmd_011 0x8005, 0x1DA
    ScrCmd_01D 1, _0312
    ScrCmd_061
    End

_02F2:
    ScrCmd_05E 13, _0340
    ScrCmd_05E 0xFF, _03CC
    ScrCmd_05F
    Return

_0306:
    ScrCmd_05E 0xFF, _03CC
    ScrCmd_05F
    Return

_0312:
    ScrCmd_05E 13, _034C
    ScrCmd_05E 0xFF, _03CC
    ScrCmd_05F
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
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0429
    ScrCmd_02C 11
    ScrCmd_034
    ScrCmd_01E 0x2AA
    ScrCmd_028 0x404E, 2
    ScrCmd_01E 0x9AB
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
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0491
    ScrCmd_02C 14
    ScrCmd_034
    ScrCmd_01E 0x2AD
    ScrCmd_028 0x404E, 4
    ScrCmd_01E 0x9AB
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
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _04F1
    ScrCmd_02C 17
    ScrCmd_034
    ScrCmd_01E 0x2AF
    ScrCmd_028 0x404E, 5
    ScrCmd_01E 0x9AB
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
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0551
    ScrCmd_02C 20
    ScrCmd_034
    ScrCmd_01E 0x2B2
    ScrCmd_028 0x404E, 7
    ScrCmd_01E 0x9AB
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
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _05B1
    ScrCmd_02C 23
    ScrCmd_034
    ScrCmd_01E 0x2B5
    ScrCmd_028 0x404E, 9
    ScrCmd_01E 0x9AB
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
