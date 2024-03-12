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
    ScrCmd_002

_004F:
    ScrCmd_028 0x40F4, 2
    ScrCmd_01B

_0057:
    ScrCmd_028 0x40A4, 7
    ScrCmd_01B

_005F:
    ScrCmd_028 0x40A4, 5
    ScrCmd_01B

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
    ScrCmd_002

_00A3:
    ScrCmd_02C 7
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_00AE:
    ScrCmd_0CE 0
    ScrCmd_02C 6
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_00BC:
    ScrCmd_0CD 0
    ScrCmd_0CE 1
    ScrCmd_02C 5
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

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
    ScrCmd_016 _01E8

_0140:
    ScrCmd_05E 0xFF, _02F0
    ScrCmd_05E 3, _03C4
    ScrCmd_05F
    ScrCmd_016 _0200

_0158:
    ScrCmd_05E 0xFF, _0308
    ScrCmd_05E 3, _03E0
    ScrCmd_05F
    ScrCmd_016 _0200

_0170:
    ScrCmd_05E 0xFF, _0320
    ScrCmd_05E 3, _03F4
    ScrCmd_05F
    ScrCmd_016 _0200

_0188:
    ScrCmd_05E 0xFF, _0338
    ScrCmd_05E 3, _0408
    ScrCmd_05F
    ScrCmd_016 _0200

_01A0:
    ScrCmd_05E 0xFF, _0350
    ScrCmd_05E 3, _041C
    ScrCmd_05F
    ScrCmd_016 _0200

_01B8:
    ScrCmd_05E 0xFF, _0368
    ScrCmd_05E 3, _0430
    ScrCmd_05F
    ScrCmd_016 _0200

_01D0:
    ScrCmd_05E 0xFF, _0380
    ScrCmd_05E 3, _0444
    ScrCmd_05F
    ScrCmd_016 _0200

_01E8:
    ScrCmd_05E 0xFF, _0398
    ScrCmd_05E 3, _0458
    ScrCmd_05F
    ScrCmd_016 _0200

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
    ScrCmd_016 _02DC

_026C:
    ScrCmd_05E 3, _046C
    ScrCmd_05F
    ScrCmd_016 _02EC

_027C:
    ScrCmd_05E 3, _047C
    ScrCmd_05F
    ScrCmd_016 _02EC

_028C:
    ScrCmd_05E 3, _0488
    ScrCmd_05F
    ScrCmd_016 _02EC

_029C:
    ScrCmd_05E 3, _0494
    ScrCmd_05F
    ScrCmd_016 _02EC

_02AC:
    ScrCmd_05E 3, _04A0
    ScrCmd_05F
    ScrCmd_016 _02EC

_02BC:
    ScrCmd_05E 3, _04AC
    ScrCmd_05F
    ScrCmd_016 _02EC

_02CC:
    ScrCmd_05E 3, _04B8
    ScrCmd_05F
    ScrCmd_016 _02EC

_02DC:
    ScrCmd_05E 3, _04C4
    ScrCmd_05F
    ScrCmd_016 _02EC

_02EC:
    ScrCmd_061
    ScrCmd_002

    .balign 4, 0
_02F0:
    .short 62, 6
    .short 71, 1
    .short 13, 1
    .short 72, 1
    .short 36, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0308:
    .short 62, 5
    .short 71, 1
    .short 13, 1
    .short 72, 1
    .short 36, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0320:
    .short 62, 6
    .short 71, 1
    .short 13, 1
    .short 72, 1
    .short 36, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0338:
    .short 62, 7
    .short 71, 1
    .short 13, 1
    .short 72, 1
    .short 36, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0350:
    .short 62, 8
    .short 71, 1
    .short 13, 1
    .short 72, 1
    .short 36, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0368:
    .short 62, 9
    .short 71, 1
    .short 13, 1
    .short 72, 1
    .short 36, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0380:
    .short 62, 10
    .short 71, 1
    .short 13, 1
    .short 72, 1
    .short 36, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0398:
    .short 62, 11
    .short 71, 1
    .short 13, 1
    .short 72, 1
    .short 36, 1
    .short 0xFE, 0x00

    .balign 4, 0
_03B0:
    .short 36, 1
    .short 75, 1
    .short 63, 1
    .short 62, 1
    .short 0xFE, 0x00

    .balign 4, 0
_03C4:
    .short 16, 1
    .short 19, 1
    .short 16, 2
    .short 18, 1
    .short 37, 1
    .short 13, 1
    .short 0xFE, 0x00

    .balign 4, 0
_03E0:
    .short 16, 3
    .short 19, 1
    .short 37, 1
    .short 13, 1
    .short 0xFE, 0x00

    .balign 4, 0
_03F4:
    .short 16, 3
    .short 19, 2
    .short 37, 1
    .short 13, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0408:
    .short 16, 3
    .short 19, 3
    .short 37, 1
    .short 13, 1
    .short 0xFE, 0x00

    .balign 4, 0
_041C:
    .short 16, 3
    .short 19, 4
    .short 37, 1
    .short 13, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0430:
    .short 16, 3
    .short 19, 5
    .short 37, 1
    .short 13, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0444:
    .short 16, 3
    .short 19, 6
    .short 37, 1
    .short 13, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0458:
    .short 16, 3
    .short 19, 7
    .short 37, 1
    .short 13, 1
    .short 0xFE, 0x00

    .balign 4, 0
_046C:
    .short 15, 1
    .short 13, 2
    .short 14, 1
    .short 0xFE, 0x00

    .balign 4, 0
_047C:
    .short 14, 1
    .short 13, 2
    .short 0xFE, 0x00

    .balign 4, 0
_0488:
    .short 14, 2
    .short 13, 2
    .short 0xFE, 0x00

    .balign 4, 0
_0494:
    .short 14, 3
    .short 13, 2
    .short 0xFE, 0x00

    .balign 4, 0
_04A0:
    .short 14, 4
    .short 13, 2
    .short 0xFE, 0x00

    .balign 4, 0
_04AC:
    .short 14, 5
    .short 13, 2
    .short 0xFE, 0x00

    .balign 4, 0
_04B8:
    .short 14, 6
    .short 13, 2
    .short 0xFE, 0x00

    .balign 4, 0
_04C4:
    .short 14, 7
    .short 13, 2
    .short 0xFE, 0x00

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
    ScrCmd_002

    .balign 4, 0
_0570:
    .short 63, 1
    .short 62, 1
    .short 35, 1
    .short 63, 5
    .short 32, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0588:
    .short 0, 1
    .short 71, 1
    .short 13, 1
    .short 72, 1
    .short 0xFE, 0x00

    .balign 4, 0
_059C:
    .short 75, 1
    .short 0xFE, 0x00

    .balign 4, 0
_05A4:
    .short 17, 1
    .short 36, 1
    .short 0xFE, 0x00

    .balign 4, 0
_05B0:
    .short 19, 4
    .short 75, 1
    .short 63, 1
    .short 18, 4
    .short 37, 1
    .short 0xFE, 0x00

    .balign 4, 0
_05C8:
    .short 12, 1
    .short 69, 1
    .short 0xFE, 0x00

_05D4:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 11
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

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
    ScrCmd_002

_0612:
    ScrCmd_02C 10
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_061D:
    ScrCmd_02C 9
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0628:
    ScrCmd_036 12, 0, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    ScrCmd_002

_063F:
    ScrCmd_0CD 0
    ScrCmd_036 13, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    ScrCmd_002

_0659:
    ScrCmd_0CE 0
    ScrCmd_036 14, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    ScrCmd_002

    .byte 0
