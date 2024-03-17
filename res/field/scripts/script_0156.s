    .include "macros/scrcmd.inc"

    .data

    .long _0593-.-4
    .long _0680-.-4
    .long _0693-.-4
    .long _06A6-.-4
    .long _06B9-.-4
    .long _06CC-.-4
    .long _06DF-.-4
    .long _0099-.-4
    .long _0530-.-4
    .long _06F2-.-4
    .long _0709-.-4
    .long _071E-.-4
    .long _0735-.-4
    .long _074C-.-4
    .long _0763-.-4
    .long _077A-.-4
    .long _0791-.-4
    .long _0850-.-4
    .long _004E-.-4
    .short 0xFD13

_004E:
    ScrCmd_011 0x40A6, 2
    ScrCmd_01D 1, _0077
    ScrCmd_011 0x40A6, 3
    ScrCmd_01D 1, _0077
    ScrCmd_011 0x407E, 0
    ScrCmd_01C 1, _0083
    ScrCmd_002

_0077:
    ScrCmd_01E 0x199
    ScrCmd_028 0x40A6, 4
    ScrCmd_01B

_0083:
    ScrCmd_186 18, 0x349, 0x316
    ScrCmd_188 18, 16
    ScrCmd_189 18, 2
    ScrCmd_002

_0099:
    ScrCmd_060
    ScrCmd_05E 9, _04E8
    ScrCmd_05F
    ScrCmd_01F 0x255
    ScrCmd_064 20
    ScrCmd_062 20
    ScrCmd_069 0x8004, 0x8005
    ScrCmd_011 0x8004, 0x355
    ScrCmd_01C 1, _00FA
    ScrCmd_011 0x8004, 0x356
    ScrCmd_01C 1, _0114
    ScrCmd_011 0x8004, 0x357
    ScrCmd_01C 1, _012E
    ScrCmd_011 0x8004, 0x358
    ScrCmd_01C 1, _0148
    ScrCmd_011 0x8004, 0x359
    ScrCmd_01C 1, _0162
    ScrCmd_002

_00FA:
    ScrCmd_05E 20, _0454
    ScrCmd_05E 0xFF, _04F4
    ScrCmd_05F
    ScrCmd_016 _017C
    ScrCmd_002

_0114:
    ScrCmd_05E 20, _0464
    ScrCmd_05E 0xFF, _04F4
    ScrCmd_05F
    ScrCmd_016 _017C
    ScrCmd_002

_012E:
    ScrCmd_05E 20, _0474
    ScrCmd_05E 0xFF, _0504
    ScrCmd_05F
    ScrCmd_016 _017C
    ScrCmd_002

_0148:
    ScrCmd_05E 20, _0480
    ScrCmd_05E 0xFF, _050C
    ScrCmd_05F
    ScrCmd_016 _017C
    ScrCmd_002

_0162:
    ScrCmd_05E 20, _0490
    ScrCmd_05E 0xFF, _050C
    ScrCmd_05F
    ScrCmd_016 _017C
    ScrCmd_002

_017C:
    ScrCmd_0CE 0
    ScrCmd_0CD 1
    ScrCmd_02C 10
    ScrCmd_05E 20, _04A0
    ScrCmd_05F
    ScrCmd_02C 11
    ScrCmd_011 0x8004, 0x355
    ScrCmd_01D 1, _02BE
    ScrCmd_011 0x8004, 0x356
    ScrCmd_01D 1, _02CA
    ScrCmd_011 0x8004, 0x357
    ScrCmd_01D 1, _02D6
    ScrCmd_011 0x8004, 0x358
    ScrCmd_01D 1, _02E2
    ScrCmd_011 0x8004, 0x359
    ScrCmd_01D 1, _02EE
    ScrCmd_02C 12
    ScrCmd_034
    ScrCmd_011 0x8004, 0x355
    ScrCmd_01D 1, _02FA
    ScrCmd_011 0x8004, 0x356
    ScrCmd_01D 1, _030E
    ScrCmd_011 0x8004, 0x357
    ScrCmd_01D 1, _0322
    ScrCmd_011 0x8004, 0x358
    ScrCmd_01D 1, _032E
    ScrCmd_011 0x8004, 0x359
    ScrCmd_01D 1, _0342
    ScrCmd_065 20
    ScrCmd_011 0x8004, 0x355
    ScrCmd_01D 1, _0356
    ScrCmd_011 0x8004, 0x356
    ScrCmd_01D 1, _0362
    ScrCmd_011 0x8004, 0x357
    ScrCmd_01D 1, _036E
    ScrCmd_011 0x8004, 0x358
    ScrCmd_01D 1, _037A
    ScrCmd_011 0x8004, 0x359
    ScrCmd_01D 1, _0386
    ScrCmd_05E 0xFF, _0528
    ScrCmd_05F
    ScrCmd_02C 13
    ScrCmd_01A _0577
    ScrCmd_034
    ScrCmd_011 0x8004, 0x355
    ScrCmd_01D 1, _0392
    ScrCmd_011 0x8004, 0x356
    ScrCmd_01D 1, _039E
    ScrCmd_011 0x8004, 0x357
    ScrCmd_01D 1, _03AA
    ScrCmd_011 0x8004, 0x358
    ScrCmd_01D 1, _03B6
    ScrCmd_011 0x8004, 0x359
    ScrCmd_01D 1, _03C2
    ScrCmd_028 0x407E, 3
    ScrCmd_061
    ScrCmd_002

_02BE:
    ScrCmd_05E 20, _04A8
    ScrCmd_05F
    ScrCmd_01B

_02CA:
    ScrCmd_05E 20, _04A8
    ScrCmd_05F
    ScrCmd_01B

_02D6:
    ScrCmd_05E 20, _04B0
    ScrCmd_05F
    ScrCmd_01B

_02E2:
    ScrCmd_05E 20, _04B8
    ScrCmd_05F
    ScrCmd_01B

_02EE:
    ScrCmd_05E 20, _04B8
    ScrCmd_05F
    ScrCmd_01B

_02FA:
    ScrCmd_05E 20, _04C0
    ScrCmd_05E 0xFF, _051C
    ScrCmd_05F
    ScrCmd_01B

_030E:
    ScrCmd_05E 20, _04C8
    ScrCmd_05E 0xFF, _051C
    ScrCmd_05F
    ScrCmd_01B

_0322:
    ScrCmd_05E 20, _04D0
    ScrCmd_05F
    ScrCmd_01B

_032E:
    ScrCmd_05E 20, _04D8
    ScrCmd_05E 0xFF, _051C
    ScrCmd_05F
    ScrCmd_01B

_0342:
    ScrCmd_05E 20, _04E0
    ScrCmd_05E 0xFF, _051C
    ScrCmd_05F
    ScrCmd_01B

_0356:
    ScrCmd_05E 9, _03D0
    ScrCmd_05F
    ScrCmd_01B

_0362:
    ScrCmd_05E 9, _03DC
    ScrCmd_05F
    ScrCmd_01B

_036E:
    ScrCmd_05E 9, _03E8
    ScrCmd_05F
    ScrCmd_01B

_037A:
    ScrCmd_05E 9, _03F4
    ScrCmd_05F
    ScrCmd_01B

_0386:
    ScrCmd_05E 9, _0400
    ScrCmd_05F
    ScrCmd_01B

_0392:
    ScrCmd_05E 9, _0408
    ScrCmd_05F
    ScrCmd_01B

_039E:
    ScrCmd_05E 9, _0418
    ScrCmd_05F
    ScrCmd_01B

_03AA:
    ScrCmd_05E 9, _0428
    ScrCmd_05F
    ScrCmd_01B

_03B6:
    ScrCmd_05E 9, _0438
    ScrCmd_05F
    ScrCmd_01B

_03C2:
    ScrCmd_05E 9, _0448
    ScrCmd_05F
    ScrCmd_01B

    .balign 4, 0
_03D0:
    MoveAction_00E 4
    MoveAction_00D
    EndMovement

    .balign 4, 0
_03DC:
    MoveAction_00E 3
    MoveAction_00D
    EndMovement

    .balign 4, 0
_03E8:
    MoveAction_00E 2
    MoveAction_00D
    EndMovement

    .balign 4, 0
_03F4:
    MoveAction_00E
    MoveAction_00D
    EndMovement

    .balign 4, 0
_0400:
    MoveAction_00D
    EndMovement

    .balign 4, 0
_0408:
    MoveAction_00C
    MoveAction_00F 4
    MoveAction_021
    EndMovement

    .balign 4, 0
_0418:
    MoveAction_00C
    MoveAction_00F 3
    MoveAction_021
    EndMovement

    .balign 4, 0
_0428:
    MoveAction_00C
    MoveAction_00F 2
    MoveAction_021
    EndMovement

    .balign 4, 0
_0438:
    MoveAction_00C
    MoveAction_00F
    MoveAction_021
    EndMovement

    .balign 4, 0
_0448:
    MoveAction_00C
    MoveAction_021
    EndMovement

    .balign 4, 0
_0454:
    MoveAction_03F
    MoveAction_010 4
    MoveAction_012
    EndMovement

    .balign 4, 0
_0464:
    MoveAction_03F
    MoveAction_010 4
    MoveAction_026
    EndMovement

    .balign 4, 0
_0474:
    MoveAction_03F
    MoveAction_010 3
    EndMovement

    .balign 4, 0
_0480:
    MoveAction_03F
    MoveAction_010 4
    MoveAction_027
    EndMovement

    .balign 4, 0
_0490:
    MoveAction_03F
    MoveAction_010 4
    MoveAction_013
    EndMovement

    .balign 4, 0
_04A0:
    MoveAction_025
    EndMovement

    .balign 4, 0
_04A8:
    MoveAction_026
    EndMovement

    .balign 4, 0
_04B0:
    MoveAction_024
    EndMovement

    .balign 4, 0
_04B8:
    MoveAction_027
    EndMovement

    .balign 4, 0
_04C0:
    MoveAction_011 8
    EndMovement

    .balign 4, 0
_04C8:
    MoveAction_011 8
    EndMovement

    .balign 4, 0
_04D0:
    MoveAction_011 8
    EndMovement

    .balign 4, 0
_04D8:
    MoveAction_011 8
    EndMovement

    .balign 4, 0
_04E0:
    MoveAction_011 8
    EndMovement

    .balign 4, 0
_04E8:
    MoveAction_021
    MoveAction_04B
    EndMovement

    .balign 4, 0
_04F4:
    MoveAction_021
    MoveAction_03F
    MoveAction_023
    EndMovement

    .balign 4, 0
_0504:
    MoveAction_021
    EndMovement

    .balign 4, 0
_050C:
    MoveAction_021
    MoveAction_03F 2
    MoveAction_022
    EndMovement

    .balign 4, 0
_051C:
    MoveAction_03F
    MoveAction_021
    EndMovement

    .balign 4, 0
_0528:
    MoveAction_020
    EndMovement

_0530:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_020 154
    ScrCmd_01C 1, _056C
    ScrCmd_02C 8
    ScrCmd_15B 7, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0561
    ScrCmd_016 _056C
    ScrCmd_002

_0561:
    ScrCmd_02C 5
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_056C:
    ScrCmd_02C 9
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0577:
    ScrCmd_02C 6
    ScrCmd_028 0x8004, 0x1AA
    ScrCmd_028 0x8005, 1
    ScrCmd_014 0x7FC
    ScrCmd_01E 154
    ScrCmd_02C 7
    ScrCmd_01B

_0593:
    ScrCmd_060
    ScrCmd_069 0x8004, 0x8005
    ScrCmd_011 0x8005, 0x316
    ScrCmd_01C 1, _05B7
    ScrCmd_011 0x8005, 0x317
    ScrCmd_01C 1, _05C7
    ScrCmd_002

_05B7:
    ScrCmd_05E 18, _063C
    ScrCmd_05F
    ScrCmd_016 _05D7

_05C7:
    ScrCmd_05E 18, _0650
    ScrCmd_05F
    ScrCmd_016 _05D7

_05D7:
    ScrCmd_02C 0
    ScrCmd_034
    ScrCmd_05E 18, _0668
    ScrCmd_05F
    ScrCmd_003 15, 0x800C
    ScrCmd_05E 18, _0670
    ScrCmd_05F
    ScrCmd_02C 1
    ScrCmd_034
    ScrCmd_003 15, 0x800C
    ScrCmd_05E 18, _0678
    ScrCmd_05F
    ScrCmd_065 18
    ScrCmd_003 1, 0x800C
    ScrCmd_186 18, 0x34D, 0x2EC
    ScrCmd_188 18, 15
    ScrCmd_189 18, 1
    ScrCmd_01F 0x239
    ScrCmd_064 18
    ScrCmd_028 0x407E, 1
    ScrCmd_061
    ScrCmd_002

    .balign 4, 0
_063C:
    MoveAction_00E 3
    MoveAction_022
    MoveAction_04B
    MoveAction_00E 5
    EndMovement

    .balign 4, 0
_0650:
    MoveAction_00D
    MoveAction_00E 3
    MoveAction_022
    MoveAction_04B
    MoveAction_00E 5
    EndMovement

    .balign 4, 0
_0668:
    MoveAction_021
    EndMovement

    .balign 4, 0
_0670:
    MoveAction_022
    EndMovement

    .balign 4, 0
_0678:
    MoveAction_00F 9
    EndMovement

_0680:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 14
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0693:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 20
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_06A6:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 15
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_06B9:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 17
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_06CC:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 18
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_06DF:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 19
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_06F2:
    ScrCmd_036 21, 0, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    ScrCmd_002

_0709:
    ScrCmd_037 3, 0
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03A 22, 0x800C
    ScrCmd_014 0x7D0
    ScrCmd_002

_071E:
    ScrCmd_036 23, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    ScrCmd_002

_0735:
    ScrCmd_036 24, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    ScrCmd_002

_074C:
    ScrCmd_036 25, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    ScrCmd_002

_0763:
    ScrCmd_036 26, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    ScrCmd_002

_077A:
    ScrCmd_036 27, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    ScrCmd_002

_0791:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_014 0x7E3
    ScrCmd_035
    ScrCmd_234 0x800C
    ScrCmd_029 0x8008, 0x800C
    ScrCmd_011 0x8008, 0
    ScrCmd_01C 1, _0806
    ScrCmd_011 0x8008, 1
    ScrCmd_01C 1, _0810
    ScrCmd_011 0x8008, 2
    ScrCmd_01C 1, _081A
    ScrCmd_011 0x8008, 3
    ScrCmd_01C 1, _0824
    ScrCmd_011 0x8008, 4
    ScrCmd_01C 1, _082E
    ScrCmd_011 0x8008, 5
    ScrCmd_01C 1, _0838
    ScrCmd_011 0x8008, 6
    ScrCmd_01C 1, _0842
    ScrCmd_002

_0806:
    ScrCmd_14A 0
    ScrCmd_016 _084C

_0810:
    ScrCmd_14A 1
    ScrCmd_016 _084C

_081A:
    ScrCmd_14A 2
    ScrCmd_016 _084C

_0824:
    ScrCmd_14A 3
    ScrCmd_016 _084C

_082E:
    ScrCmd_14A 4
    ScrCmd_016 _084C

_0838:
    ScrCmd_14A 5
    ScrCmd_016 _084C

_0842:
    ScrCmd_14A 6
    ScrCmd_016 _084C

_084C:
    ScrCmd_061
    ScrCmd_002

_0850:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_020 0x162
    ScrCmd_01C 1, _086E
    ScrCmd_02C 2
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_086E:
    ScrCmd_02C 3
    ScrCmd_034
    ScrCmd_003 15, 0x800C
    ScrCmd_1BD 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _08A6
    ScrCmd_011 0x800C, 2
    ScrCmd_01C 1, _08BE
    ScrCmd_011 0x800C, 3
    ScrCmd_01C 1, _08D6
    ScrCmd_002

_08A6:
    ScrCmd_05E 18, _08F8
    ScrCmd_05E 0xFF, _0914
    ScrCmd_05F
    ScrCmd_016 _08EE

_08BE:
    ScrCmd_05E 18, _0908
    ScrCmd_05E 0xFF, _0920
    ScrCmd_05F
    ScrCmd_016 _08EE

_08D6:
    ScrCmd_05E 18, _0908
    ScrCmd_05E 0xFF, _0914
    ScrCmd_05F
    ScrCmd_016 _08EE

_08EE:
    ScrCmd_065 18
    ScrCmd_061
    ScrCmd_002

    .balign 4, 0
_08F8:
    MoveAction_00F
    MoveAction_00D 2
    MoveAction_00F 8
    EndMovement

    .balign 4, 0
_0908:
    MoveAction_00D 2
    MoveAction_00F 9
    EndMovement

    .balign 4, 0
_0914:
    MoveAction_03F
    MoveAction_003
    EndMovement

    .balign 4, 0
_0920:
    MoveAction_03F
    MoveAction_021
    MoveAction_023
    EndMovement
