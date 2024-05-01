    .include "macros/scrcmd.inc"

    .data

    .long _001E-.-4
    .long _0031-.-4
    .long _0044-.-4
    .long _0057-.-4
    .long _01D8-.-4
    .long _0390-.-4
    .long _0511-.-4
    .short 0xFD13

_001E:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 0
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0031:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0044:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 2
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0057:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 3
_0062:
    ScrCmd_02C 4
    ScrCmd_040 1, 1, 0, 1, 0x8004
    ScrCmd_132 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _00A2
    ScrCmd_01A _00FE
    ScrCmd_01A _0122
    ScrCmd_01A _0146
    ScrCmd_01A _016A
    ScrCmd_01A _018E
    ScrCmd_01A _01B2
_00A2:
    ScrCmd_29D 0x102, 0
    ScrCmd_043
    ScrCmd_011 0x8004, 1
    ScrCmd_01C 1, _0119
    ScrCmd_011 0x8004, 2
    ScrCmd_01C 1, _013D
    ScrCmd_011 0x8004, 3
    ScrCmd_01C 1, _0161
    ScrCmd_011 0x8004, 4
    ScrCmd_01C 1, _0185
    ScrCmd_011 0x8004, 5
    ScrCmd_01C 1, _01A9
    ScrCmd_011 0x8004, 6
    ScrCmd_01C 1, _01CD
    ScrCmd_034
    ScrCmd_061
    End

_00FE:
    ScrCmd_134 0, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _01D6
    ScrCmd_29D 233, 1
    ScrCmd_01B

_0119:
    ScrCmd_02C 11
    ScrCmd_016 _0062

_0122:
    ScrCmd_134 11, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _01D6
    ScrCmd_29D 237, 2
    ScrCmd_01B

_013D:
    ScrCmd_02C 12
    ScrCmd_016 _0062

_0146:
    ScrCmd_134 23, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _01D6
    ScrCmd_29D 234, 3
    ScrCmd_01B

_0161:
    ScrCmd_02C 14
    ScrCmd_016 _0062

_016A:
    ScrCmd_134 20, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _01D6
    ScrCmd_29D 250, 4
    ScrCmd_01B

_0185:
    ScrCmd_02C 15
    ScrCmd_016 _0062

_018E:
    ScrCmd_134 24, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _01D6
    ScrCmd_29D 249, 5
    ScrCmd_01B

_01A9:
    ScrCmd_02C 13
    ScrCmd_016 _0062

_01B2:
    ScrCmd_134 16, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _01D6
    ScrCmd_29D 254, 6
    ScrCmd_01B

_01CD:
    ScrCmd_02C 16
    ScrCmd_016 _0062

_01D6:
    ScrCmd_01B

_01D8:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 5
_01E3:
    ScrCmd_02C 6
    ScrCmd_040 1, 1, 0, 1, 0x8004
    ScrCmd_132 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0229
    ScrCmd_01A _0292
    ScrCmd_01A _02B6
    ScrCmd_01A _02DA
    ScrCmd_01A _02FE
    ScrCmd_01A _0322
    ScrCmd_01A _0346
    ScrCmd_01A _036A
_0229:
    ScrCmd_29D 0x102, 0
    ScrCmd_043
    ScrCmd_011 0x8004, 1
    ScrCmd_01C 1, _02AD
    ScrCmd_011 0x8004, 2
    ScrCmd_01C 1, _02D1
    ScrCmd_011 0x8004, 3
    ScrCmd_01C 1, _02F5
    ScrCmd_011 0x8004, 4
    ScrCmd_01C 1, _0319
    ScrCmd_011 0x8004, 5
    ScrCmd_01C 1, _033D
    ScrCmd_011 0x8004, 6
    ScrCmd_01C 1, _0361
    ScrCmd_011 0x8004, 7
    ScrCmd_01C 1, _0385
    ScrCmd_034
    ScrCmd_061
    End

_0292:
    ScrCmd_134 1, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _038E
    ScrCmd_29D 235, 1
    ScrCmd_01B

_02AD:
    ScrCmd_02C 17
    ScrCmd_016 _01E3

_02B6:
    ScrCmd_134 2, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _038E
    ScrCmd_29D 236, 2
    ScrCmd_01B

_02D1:
    ScrCmd_02C 24
    ScrCmd_016 _01E3

_02DA:
    ScrCmd_134 5, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _038E
    ScrCmd_29D 240, 3
    ScrCmd_01B

_02F5:
    ScrCmd_02C 19
    ScrCmd_016 _01E3

_02FE:
    ScrCmd_134 8, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _038E
    ScrCmd_29D 244, 4
    ScrCmd_01B

_0319:
    ScrCmd_02C 20
    ScrCmd_016 _01E3

_0322:
    ScrCmd_134 22, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _038E
    ScrCmd_29D 248, 5
    ScrCmd_01B

_033D:
    ScrCmd_02C 21
    ScrCmd_016 _01E3

_0346:
    ScrCmd_134 9, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _038E
    ScrCmd_29D 0x101, 6
    ScrCmd_01B

_0361:
    ScrCmd_02C 22
    ScrCmd_016 _01E3

_036A:
    ScrCmd_134 7, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _038E
    ScrCmd_29D 252, 7
    ScrCmd_01B

_0385:
    ScrCmd_02C 23
    ScrCmd_016 _01E3

_038E:
    ScrCmd_01B

_0390:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 7
_039B:
    ScrCmd_02C 8
    ScrCmd_040 1, 1, 0, 1, 0x8004
    ScrCmd_132 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _03DB
    ScrCmd_01A _0437
    ScrCmd_01A _045B
    ScrCmd_01A _047F
    ScrCmd_01A _04A3
    ScrCmd_01A _04C7
    ScrCmd_01A _04EB
_03DB:
    ScrCmd_29D 0x102, 0
    ScrCmd_043
    ScrCmd_011 0x8004, 1
    ScrCmd_01C 1, _0452
    ScrCmd_011 0x8004, 2
    ScrCmd_01C 1, _0476
    ScrCmd_011 0x8004, 3
    ScrCmd_01C 1, _049A
    ScrCmd_011 0x8004, 4
    ScrCmd_01C 1, _04BE
    ScrCmd_011 0x8004, 5
    ScrCmd_01C 1, _04E2
    ScrCmd_011 0x8004, 6
    ScrCmd_01C 1, _0506
    ScrCmd_034
    ScrCmd_061
    End

_0437:
    ScrCmd_134 4, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _050F
    ScrCmd_29D 239, 1
    ScrCmd_01B

_0452:
    ScrCmd_02C 18
    ScrCmd_016 _039B

_045B:
    ScrCmd_134 17, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _050F
    ScrCmd_29D 238, 2
    ScrCmd_01B

_0476:
    ScrCmd_02C 25
    ScrCmd_016 _039B

_047F:
    ScrCmd_134 14, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _050F
    ScrCmd_29D 246, 3
    ScrCmd_01B

_049A:
    ScrCmd_02C 29
    ScrCmd_016 _039B

_04A3:
    ScrCmd_134 18, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _050F
    ScrCmd_29D 245, 4
    ScrCmd_01B

_04BE:
    ScrCmd_02C 28
    ScrCmd_016 _039B

_04C7:
    ScrCmd_134 21, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _050F
    ScrCmd_29D 253, 5
    ScrCmd_01B

_04E2:
    ScrCmd_02C 26
    ScrCmd_016 _039B

_04EB:
    ScrCmd_134 12, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _050F
    ScrCmd_29D 251, 6
    ScrCmd_01B

_0506:
    ScrCmd_02C 27
    ScrCmd_016 _039B

_050F:
    ScrCmd_01B

_0511:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 9
_051C:
    ScrCmd_02C 10
    ScrCmd_040 1, 1, 0, 1, 0x8004
    ScrCmd_132 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _055C
    ScrCmd_01A _05B8
    ScrCmd_01A _05DC
    ScrCmd_01A _0600
    ScrCmd_01A _0624
    ScrCmd_01A _0648
    ScrCmd_01A _066C
_055C:
    ScrCmd_29D 0x102, 0
    ScrCmd_043
    ScrCmd_011 0x8004, 1
    ScrCmd_01C 1, _05D3
    ScrCmd_011 0x8004, 2
    ScrCmd_01C 1, _05F7
    ScrCmd_011 0x8004, 3
    ScrCmd_01C 1, _061B
    ScrCmd_011 0x8004, 4
    ScrCmd_01C 1, _063F
    ScrCmd_011 0x8004, 5
    ScrCmd_01C 1, _0663
    ScrCmd_011 0x8004, 6
    ScrCmd_01C 1, _0687
    ScrCmd_034
    ScrCmd_061
    End

_05B8:
    ScrCmd_134 3, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0690
    ScrCmd_29D 243, 1
    ScrCmd_01B

_05D3:
    ScrCmd_02C 30
    ScrCmd_016 _051C

_05DC:
    ScrCmd_134 10, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0690
    ScrCmd_29D 242, 2
    ScrCmd_01B

_05F7:
    ScrCmd_02C 32
    ScrCmd_016 _051C

_0600:
    ScrCmd_134 19, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0690
    ScrCmd_29D 0x100, 3
    ScrCmd_01B

_061B:
    ScrCmd_02C 33
    ScrCmd_016 _051C

_0624:
    ScrCmd_134 13, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0690
    ScrCmd_29D 0xFF, 4
    ScrCmd_01B

_063F:
    ScrCmd_02C 34
    ScrCmd_016 _051C

_0648:
    ScrCmd_134 15, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0690
    ScrCmd_29D 247, 5
    ScrCmd_01B

_0663:
    ScrCmd_02C 35
    ScrCmd_016 _051C

_066C:
    ScrCmd_134 6, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0690
    ScrCmd_29D 241, 6
    ScrCmd_01B

_0687:
    ScrCmd_02C 31
    ScrCmd_016 _051C

_0690:
    ScrCmd_01B

    .byte 0
    .byte 0
