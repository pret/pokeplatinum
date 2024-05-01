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
    CompareVarToValue 0x800C, 0
    GoToIf 1, _00A2
    Call _00FE
    Call _0122
    Call _0146
    Call _016A
    Call _018E
    Call _01B2
_00A2:
    ScrCmd_29D 0x102, 0
    ScrCmd_043
    CompareVarToValue 0x8004, 1
    GoToIf 1, _0119
    CompareVarToValue 0x8004, 2
    GoToIf 1, _013D
    CompareVarToValue 0x8004, 3
    GoToIf 1, _0161
    CompareVarToValue 0x8004, 4
    GoToIf 1, _0185
    CompareVarToValue 0x8004, 5
    GoToIf 1, _01A9
    CompareVarToValue 0x8004, 6
    GoToIf 1, _01CD
    ScrCmd_034
    ScrCmd_061
    End

_00FE:
    ScrCmd_134 0, 0x800C
    CompareVarToValue 0x800C, 0
    GoToIf 1, _01D6
    ScrCmd_29D 233, 1
    Return

_0119:
    ScrCmd_02C 11
    GoTo _0062

_0122:
    ScrCmd_134 11, 0x800C
    CompareVarToValue 0x800C, 0
    GoToIf 1, _01D6
    ScrCmd_29D 237, 2
    Return

_013D:
    ScrCmd_02C 12
    GoTo _0062

_0146:
    ScrCmd_134 23, 0x800C
    CompareVarToValue 0x800C, 0
    GoToIf 1, _01D6
    ScrCmd_29D 234, 3
    Return

_0161:
    ScrCmd_02C 14
    GoTo _0062

_016A:
    ScrCmd_134 20, 0x800C
    CompareVarToValue 0x800C, 0
    GoToIf 1, _01D6
    ScrCmd_29D 250, 4
    Return

_0185:
    ScrCmd_02C 15
    GoTo _0062

_018E:
    ScrCmd_134 24, 0x800C
    CompareVarToValue 0x800C, 0
    GoToIf 1, _01D6
    ScrCmd_29D 249, 5
    Return

_01A9:
    ScrCmd_02C 13
    GoTo _0062

_01B2:
    ScrCmd_134 16, 0x800C
    CompareVarToValue 0x800C, 0
    GoToIf 1, _01D6
    ScrCmd_29D 254, 6
    Return

_01CD:
    ScrCmd_02C 16
    GoTo _0062

_01D6:
    Return

_01D8:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 5
_01E3:
    ScrCmd_02C 6
    ScrCmd_040 1, 1, 0, 1, 0x8004
    ScrCmd_132 0x800C
    CompareVarToValue 0x800C, 0
    GoToIf 1, _0229
    Call _0292
    Call _02B6
    Call _02DA
    Call _02FE
    Call _0322
    Call _0346
    Call _036A
_0229:
    ScrCmd_29D 0x102, 0
    ScrCmd_043
    CompareVarToValue 0x8004, 1
    GoToIf 1, _02AD
    CompareVarToValue 0x8004, 2
    GoToIf 1, _02D1
    CompareVarToValue 0x8004, 3
    GoToIf 1, _02F5
    CompareVarToValue 0x8004, 4
    GoToIf 1, _0319
    CompareVarToValue 0x8004, 5
    GoToIf 1, _033D
    CompareVarToValue 0x8004, 6
    GoToIf 1, _0361
    CompareVarToValue 0x8004, 7
    GoToIf 1, _0385
    ScrCmd_034
    ScrCmd_061
    End

_0292:
    ScrCmd_134 1, 0x800C
    CompareVarToValue 0x800C, 0
    GoToIf 1, _038E
    ScrCmd_29D 235, 1
    Return

_02AD:
    ScrCmd_02C 17
    GoTo _01E3

_02B6:
    ScrCmd_134 2, 0x800C
    CompareVarToValue 0x800C, 0
    GoToIf 1, _038E
    ScrCmd_29D 236, 2
    Return

_02D1:
    ScrCmd_02C 24
    GoTo _01E3

_02DA:
    ScrCmd_134 5, 0x800C
    CompareVarToValue 0x800C, 0
    GoToIf 1, _038E
    ScrCmd_29D 240, 3
    Return

_02F5:
    ScrCmd_02C 19
    GoTo _01E3

_02FE:
    ScrCmd_134 8, 0x800C
    CompareVarToValue 0x800C, 0
    GoToIf 1, _038E
    ScrCmd_29D 244, 4
    Return

_0319:
    ScrCmd_02C 20
    GoTo _01E3

_0322:
    ScrCmd_134 22, 0x800C
    CompareVarToValue 0x800C, 0
    GoToIf 1, _038E
    ScrCmd_29D 248, 5
    Return

_033D:
    ScrCmd_02C 21
    GoTo _01E3

_0346:
    ScrCmd_134 9, 0x800C
    CompareVarToValue 0x800C, 0
    GoToIf 1, _038E
    ScrCmd_29D 0x101, 6
    Return

_0361:
    ScrCmd_02C 22
    GoTo _01E3

_036A:
    ScrCmd_134 7, 0x800C
    CompareVarToValue 0x800C, 0
    GoToIf 1, _038E
    ScrCmd_29D 252, 7
    Return

_0385:
    ScrCmd_02C 23
    GoTo _01E3

_038E:
    Return

_0390:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 7
_039B:
    ScrCmd_02C 8
    ScrCmd_040 1, 1, 0, 1, 0x8004
    ScrCmd_132 0x800C
    CompareVarToValue 0x800C, 0
    GoToIf 1, _03DB
    Call _0437
    Call _045B
    Call _047F
    Call _04A3
    Call _04C7
    Call _04EB
_03DB:
    ScrCmd_29D 0x102, 0
    ScrCmd_043
    CompareVarToValue 0x8004, 1
    GoToIf 1, _0452
    CompareVarToValue 0x8004, 2
    GoToIf 1, _0476
    CompareVarToValue 0x8004, 3
    GoToIf 1, _049A
    CompareVarToValue 0x8004, 4
    GoToIf 1, _04BE
    CompareVarToValue 0x8004, 5
    GoToIf 1, _04E2
    CompareVarToValue 0x8004, 6
    GoToIf 1, _0506
    ScrCmd_034
    ScrCmd_061
    End

_0437:
    ScrCmd_134 4, 0x800C
    CompareVarToValue 0x800C, 0
    GoToIf 1, _050F
    ScrCmd_29D 239, 1
    Return

_0452:
    ScrCmd_02C 18
    GoTo _039B

_045B:
    ScrCmd_134 17, 0x800C
    CompareVarToValue 0x800C, 0
    GoToIf 1, _050F
    ScrCmd_29D 238, 2
    Return

_0476:
    ScrCmd_02C 25
    GoTo _039B

_047F:
    ScrCmd_134 14, 0x800C
    CompareVarToValue 0x800C, 0
    GoToIf 1, _050F
    ScrCmd_29D 246, 3
    Return

_049A:
    ScrCmd_02C 29
    GoTo _039B

_04A3:
    ScrCmd_134 18, 0x800C
    CompareVarToValue 0x800C, 0
    GoToIf 1, _050F
    ScrCmd_29D 245, 4
    Return

_04BE:
    ScrCmd_02C 28
    GoTo _039B

_04C7:
    ScrCmd_134 21, 0x800C
    CompareVarToValue 0x800C, 0
    GoToIf 1, _050F
    ScrCmd_29D 253, 5
    Return

_04E2:
    ScrCmd_02C 26
    GoTo _039B

_04EB:
    ScrCmd_134 12, 0x800C
    CompareVarToValue 0x800C, 0
    GoToIf 1, _050F
    ScrCmd_29D 251, 6
    Return

_0506:
    ScrCmd_02C 27
    GoTo _039B

_050F:
    Return

_0511:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 9
_051C:
    ScrCmd_02C 10
    ScrCmd_040 1, 1, 0, 1, 0x8004
    ScrCmd_132 0x800C
    CompareVarToValue 0x800C, 0
    GoToIf 1, _055C
    Call _05B8
    Call _05DC
    Call _0600
    Call _0624
    Call _0648
    Call _066C
_055C:
    ScrCmd_29D 0x102, 0
    ScrCmd_043
    CompareVarToValue 0x8004, 1
    GoToIf 1, _05D3
    CompareVarToValue 0x8004, 2
    GoToIf 1, _05F7
    CompareVarToValue 0x8004, 3
    GoToIf 1, _061B
    CompareVarToValue 0x8004, 4
    GoToIf 1, _063F
    CompareVarToValue 0x8004, 5
    GoToIf 1, _0663
    CompareVarToValue 0x8004, 6
    GoToIf 1, _0687
    ScrCmd_034
    ScrCmd_061
    End

_05B8:
    ScrCmd_134 3, 0x800C
    CompareVarToValue 0x800C, 0
    GoToIf 1, _0690
    ScrCmd_29D 243, 1
    Return

_05D3:
    ScrCmd_02C 30
    GoTo _051C

_05DC:
    ScrCmd_134 10, 0x800C
    CompareVarToValue 0x800C, 0
    GoToIf 1, _0690
    ScrCmd_29D 242, 2
    Return

_05F7:
    ScrCmd_02C 32
    GoTo _051C

_0600:
    ScrCmd_134 19, 0x800C
    CompareVarToValue 0x800C, 0
    GoToIf 1, _0690
    ScrCmd_29D 0x100, 3
    Return

_061B:
    ScrCmd_02C 33
    GoTo _051C

_0624:
    ScrCmd_134 13, 0x800C
    CompareVarToValue 0x800C, 0
    GoToIf 1, _0690
    ScrCmd_29D 0xFF, 4
    Return

_063F:
    ScrCmd_02C 34
    GoTo _051C

_0648:
    ScrCmd_134 15, 0x800C
    CompareVarToValue 0x800C, 0
    GoToIf 1, _0690
    ScrCmd_29D 247, 5
    Return

_0663:
    ScrCmd_02C 35
    GoTo _051C

_066C:
    ScrCmd_134 6, 0x800C
    CompareVarToValue 0x800C, 0
    GoToIf 1, _0690
    ScrCmd_29D 241, 6
    Return

_0687:
    ScrCmd_02C 31
    GoTo _051C

_0690:
    Return

    .byte 0
    .byte 0
