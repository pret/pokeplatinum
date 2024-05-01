    .include "macros/scrcmd.inc"

    .data

    .long _0026-.-4
    .long _04D0-.-4
    .long _0067-.-4
    .long _00CD-.-4
    .long _05D4-.-4
    .long _05E7-.-4
    .long _0628-.-4
    .long _063F-.-4
    .long _0659-.-4
    .short 0xFD13

_0026:
    ScrCmd_011 0x40F4, 1
    ScrCmd_01D 1, _004F
    ScrCmd_011 0x40A4, 4
    ScrCmd_01D 1, _005F
    ScrCmd_011 0x40A4, 6
    ScrCmd_01D 1, _0057
    End

_004F:
    ScrCmd_028 0x40F4, 2
    Return

_0057:
    ScrCmd_028 0x40A4, 7
    Return

_005F:
    ScrCmd_028 0x40A4, 5
    Return

_0067:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_020 144
    ScrCmd_01C 1, _00A3
    ScrCmd_011 0x4095, 1
    ScrCmd_01C 4, _00AE
    ScrCmd_020 234
    ScrCmd_01C 1, _00BC
    ScrCmd_0CD 0
    ScrCmd_0CE 1
    ScrCmd_02C 4
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00A3:
    ScrCmd_02C 7
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00AE:
    ScrCmd_0CE 0
    ScrCmd_02C 6
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00BC:
    ScrCmd_0CD 0
    ScrCmd_0CE 1
    ScrCmd_02C 5
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00CD:
    ScrCmd_060
    ScrCmd_05E 3, _03B0
    ScrCmd_05F
    ScrCmd_069 0x8004, 0x8005
    ScrCmd_011 0x8004, 108
    ScrCmd_01C 1, _0140
    ScrCmd_011 0x8004, 109
    ScrCmd_01C 1, _0158
    ScrCmd_011 0x8004, 110
    ScrCmd_01C 1, _0170
    ScrCmd_011 0x8004, 111
    ScrCmd_01C 1, _0188
    ScrCmd_011 0x8004, 112
    ScrCmd_01C 1, _01A0
    ScrCmd_011 0x8004, 113
    ScrCmd_01C 1, _01B8
    ScrCmd_011 0x8004, 114
    ScrCmd_01C 1, _01D0
    GoTo _01E8

_0140:
    ScrCmd_05E 0xFF, _02F0
    ScrCmd_05E 3, _03C4
    ScrCmd_05F
    GoTo _0200

_0158:
    ScrCmd_05E 0xFF, _0308
    ScrCmd_05E 3, _03E0
    ScrCmd_05F
    GoTo _0200

_0170:
    ScrCmd_05E 0xFF, _0320
    ScrCmd_05E 3, _03F4
    ScrCmd_05F
    GoTo _0200

_0188:
    ScrCmd_05E 0xFF, _0338
    ScrCmd_05E 3, _0408
    ScrCmd_05F
    GoTo _0200

_01A0:
    ScrCmd_05E 0xFF, _0350
    ScrCmd_05E 3, _041C
    ScrCmd_05F
    GoTo _0200

_01B8:
    ScrCmd_05E 0xFF, _0368
    ScrCmd_05E 3, _0430
    ScrCmd_05F
    GoTo _0200

_01D0:
    ScrCmd_05E 0xFF, _0380
    ScrCmd_05E 3, _0444
    ScrCmd_05F
    GoTo _0200

_01E8:
    ScrCmd_05E 0xFF, _0398
    ScrCmd_05E 3, _0458
    ScrCmd_05F
    GoTo _0200

_0200:
    ScrCmd_0CD 0
    ScrCmd_0CE 1
    ScrCmd_02C 3
    ScrCmd_034
    ScrCmd_011 0x8004, 108
    ScrCmd_01C 1, _026C
    ScrCmd_011 0x8004, 109
    ScrCmd_01C 1, _027C
    ScrCmd_011 0x8004, 110
    ScrCmd_01C 1, _028C
    ScrCmd_011 0x8004, 111
    ScrCmd_01C 1, _029C
    ScrCmd_011 0x8004, 112
    ScrCmd_01C 1, _02AC
    ScrCmd_011 0x8004, 113
    ScrCmd_01C 1, _02BC
    ScrCmd_011 0x8004, 114
    ScrCmd_01C 1, _02CC
    GoTo _02DC

_026C:
    ScrCmd_05E 3, _046C
    ScrCmd_05F
    GoTo _02EC

_027C:
    ScrCmd_05E 3, _047C
    ScrCmd_05F
    GoTo _02EC

_028C:
    ScrCmd_05E 3, _0488
    ScrCmd_05F
    GoTo _02EC

_029C:
    ScrCmd_05E 3, _0494
    ScrCmd_05F
    GoTo _02EC

_02AC:
    ScrCmd_05E 3, _04A0
    ScrCmd_05F
    GoTo _02EC

_02BC:
    ScrCmd_05E 3, _04AC
    ScrCmd_05F
    GoTo _02EC

_02CC:
    ScrCmd_05E 3, _04B8
    ScrCmd_05F
    GoTo _02EC

_02DC:
    ScrCmd_05E 3, _04C4
    ScrCmd_05F
    GoTo _02EC

_02EC:
    ScrCmd_061
    End

    .balign 4, 0
_02F0:
    MoveAction_03E 6
    MoveAction_047
    MoveAction_00D
    MoveAction_048
    MoveAction_024
    EndMovement

    .balign 4, 0
_0308:
    MoveAction_03E 5
    MoveAction_047
    MoveAction_00D
    MoveAction_048
    MoveAction_024
    EndMovement

    .balign 4, 0
_0320:
    MoveAction_03E 6
    MoveAction_047
    MoveAction_00D
    MoveAction_048
    MoveAction_024
    EndMovement

    .balign 4, 0
_0338:
    MoveAction_03E 7
    MoveAction_047
    MoveAction_00D
    MoveAction_048
    MoveAction_024
    EndMovement

    .balign 4, 0
_0350:
    MoveAction_03E 8
    MoveAction_047
    MoveAction_00D
    MoveAction_048
    MoveAction_024
    EndMovement

    .balign 4, 0
_0368:
    MoveAction_03E 9
    MoveAction_047
    MoveAction_00D
    MoveAction_048
    MoveAction_024
    EndMovement

    .balign 4, 0
_0380:
    MoveAction_03E 10
    MoveAction_047
    MoveAction_00D
    MoveAction_048
    MoveAction_024
    EndMovement

    .balign 4, 0
_0398:
    MoveAction_03E 11
    MoveAction_047
    MoveAction_00D
    MoveAction_048
    MoveAction_024
    EndMovement

    .balign 4, 0
_03B0:
    MoveAction_024
    MoveAction_04B
    MoveAction_03F
    MoveAction_03E
    EndMovement

    .balign 4, 0
_03C4:
    MoveAction_010
    MoveAction_013
    MoveAction_010 2
    MoveAction_012
    MoveAction_025
    MoveAction_00D
    EndMovement

    .balign 4, 0
_03E0:
    MoveAction_010 3
    MoveAction_013
    MoveAction_025
    MoveAction_00D
    EndMovement

    .balign 4, 0
_03F4:
    MoveAction_010 3
    MoveAction_013 2
    MoveAction_025
    MoveAction_00D
    EndMovement

    .balign 4, 0
_0408:
    MoveAction_010 3
    MoveAction_013 3
    MoveAction_025
    MoveAction_00D
    EndMovement

    .balign 4, 0
_041C:
    MoveAction_010 3
    MoveAction_013 4
    MoveAction_025
    MoveAction_00D
    EndMovement

    .balign 4, 0
_0430:
    MoveAction_010 3
    MoveAction_013 5
    MoveAction_025
    MoveAction_00D
    EndMovement

    .balign 4, 0
_0444:
    MoveAction_010 3
    MoveAction_013 6
    MoveAction_025
    MoveAction_00D
    EndMovement

    .balign 4, 0
_0458:
    MoveAction_010 3
    MoveAction_013 7
    MoveAction_025
    MoveAction_00D
    EndMovement

    .balign 4, 0
_046C:
    MoveAction_00F
    MoveAction_00D 2
    MoveAction_00E
    EndMovement

    .balign 4, 0
_047C:
    MoveAction_00E
    MoveAction_00D 2
    EndMovement

    .balign 4, 0
_0488:
    MoveAction_00E 2
    MoveAction_00D 2
    EndMovement

    .balign 4, 0
_0494:
    MoveAction_00E 3
    MoveAction_00D 2
    EndMovement

    .balign 4, 0
_04A0:
    MoveAction_00E 4
    MoveAction_00D 2
    EndMovement

    .balign 4, 0
_04AC:
    MoveAction_00E 5
    MoveAction_00D 2
    EndMovement

    .balign 4, 0
_04B8:
    MoveAction_00E 6
    MoveAction_00D 2
    EndMovement

    .balign 4, 0
_04C4:
    MoveAction_00E 7
    MoveAction_00D 2
    EndMovement

_04D0:
    ScrCmd_060
    ScrCmd_168 3, 27, 9, 11, 77
    ScrCmd_16B 77
    ScrCmd_169 77
    ScrCmd_01F 0x174
    ScrCmd_064 2
    ScrCmd_05E 2, _05A4
    ScrCmd_05E 0xFF, _0588
    ScrCmd_05F
    ScrCmd_049 0x602
    ScrCmd_02C 0
    ScrCmd_003 30, 0x800C
    ScrCmd_014 0x7FA
    ScrCmd_05E 2, _059C
    ScrCmd_05F
    ScrCmd_0CE 0
    ScrCmd_0CD 1
    ScrCmd_02C 1
    ScrCmd_034
    ScrCmd_05E 0xFF, _0570
    ScrCmd_05E 2, _05B0
    ScrCmd_05F
    ScrCmd_003 15, 0x800C
    ScrCmd_0CE 0
    ScrCmd_02C 2
    ScrCmd_034
    ScrCmd_05E 2, _05C8
    ScrCmd_05F
    ScrCmd_16C 77
    ScrCmd_169 77
    ScrCmd_16A 77
    ScrCmd_065 2
    ScrCmd_014 0x7FB
    ScrCmd_028 0x4070, 1
    ScrCmd_028 0x40E6, 1
    ScrCmd_061
    End

    .balign 4, 0
_0570:
    MoveAction_03F
    MoveAction_03E
    MoveAction_023
    MoveAction_03F 5
    MoveAction_020
    EndMovement

    .balign 4, 0
_0588:
    MoveAction_000
    MoveAction_047
    MoveAction_00D
    MoveAction_048
    EndMovement

    .balign 4, 0
_059C:
    MoveAction_04B
    EndMovement

    .balign 4, 0
_05A4:
    MoveAction_011
    MoveAction_024
    EndMovement

    .balign 4, 0
_05B0:
    MoveAction_013 4
    MoveAction_04B
    MoveAction_03F
    MoveAction_012 4
    MoveAction_025
    EndMovement

    .balign 4, 0
_05C8:
    MoveAction_00C
    MoveAction_045
    EndMovement

_05D4:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 11
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_05E7:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_020 144
    ScrCmd_01C 1, _0612
    ScrCmd_011 0x4095, 1
    ScrCmd_01C 4, _061D
    ScrCmd_02C 8
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0612:
    ScrCmd_02C 10
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_061D:
    ScrCmd_02C 9
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0628:
    ScrCmd_036 12, 0, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    End

_063F:
    ScrCmd_0CD 0
    ScrCmd_036 13, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    End

_0659:
    ScrCmd_0CE 0
    ScrCmd_036 14, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    End

    .byte 0
