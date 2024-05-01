    .include "macros/scrcmd.inc"

    .data

    .long _0032-.-4
    .long _0045-.-4
    .long _0058-.-4
    .long _006B-.-4
    .long _007E-.-4
    .long _0091-.-4
    .long _00A4-.-4
    .long _00FE-.-4
    .long _022A-.-4
    .long _06FE-.-4
    .long _00E8-.-4
    .long _0708-.-4
    .short 0xFD13

_0032:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 2
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0045:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 3
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0058:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 4
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_006B:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 5
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_007E:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 6
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0091:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 7
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00A4:
    ScrCmd_049 0x5DC
    ScrCmd_060
    CheckFlag 185
    ScrCmd_01C 1, _00D0
    SetFlag 185
    SetFlag 0x185
    ScrCmd_02C 0
    ScrCmd_068
    ScrCmd_0CD 0
    ScrCmd_02C 1
    GoTo _00E0
    End

_00D0:
    ScrCmd_068
    ScrCmd_0CD 0
    ScrCmd_02C 1
    GoTo _00E0
    End

_00E0:
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00E8:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_014 0x7E3
    ScrCmd_035
    ScrCmd_148 19
    ScrCmd_061
    End

_00FE:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_072 20, 2
    ScrCmd_02C 8
    ScrCmd_041 31, 11, 0, 1, 0x800C
    ScrCmd_33A 1
    ScrCmd_042 14, 0
    ScrCmd_042 15, 1
    ScrCmd_042 16, 2
    ScrCmd_043
    ScrCmd_029 0x8008, 0x800C
    CompareVarToValue 0x8008, 0
    ScrCmd_01C 1, _0150
    CompareVarToValue 0x8008, 1
    ScrCmd_01C 1, _018F
    GoTo _0215
    End

_0150:
    ScrCmd_028 0x8004, 1
    ScrCmd_028 0x8005, 200
    ScrCmd_07D 42, 0x8004, 0x800C
    CompareVarToValue 0x800C, 0
    ScrCmd_01C 1, _01FF
    ScrCmd_1AB 0x800C, 200
    CompareVarToValue 0x800C, 0
    ScrCmd_01C 1, _020A
    ScrCmd_02C 9
    GoTo _01CE
    End

_018F:
    ScrCmd_028 0x8004, 10
    ScrCmd_028 0x8005, 0x7D0
    ScrCmd_07D 42, 0x8004, 0x800C
    CompareVarToValue 0x800C, 0
    ScrCmd_01C 1, _01FF
    ScrCmd_1AB 0x800C, 0x7D0
    CompareVarToValue 0x800C, 0
    ScrCmd_01C 1, _020A
    ScrCmd_02C 10
    GoTo _01CE
    End

_01CE:
    ScrCmd_07B 42, 0x8004, 0x800C
    ScrCmd_049 0x644
    ScrCmd_334 35, 0x8005
    ScrCmd_1A3 0x8005
    ScrCmd_074
    ScrCmd_04B 0x644
    CompareVarToValue 0x4042, 0x2710
    ScrCmd_01D 0, _0700
    GoTo _0220
    End

_01FF:
    ScrCmd_02C 11
    GoTo _0220
    End

_020A:
    ScrCmd_02C 12
    GoTo _0220
    End

_0215:
    ScrCmd_02C 13
    GoTo _0220
    End

_0220:
    ScrCmd_031
    ScrCmd_034
    ScrCmd_073
    ScrCmd_061
    End

_022A:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_072 20, 2
    ScrCmd_02C 17
    ScrCmd_03E 0x800C
    CompareVarToValue 0x800C, 0
    ScrCmd_01C 1, _025B
    CompareVarToValue 0x800C, 1
    ScrCmd_01C 1, _0306
    End

_025B:
    ScrCmd_07E 0x1C1, 1, 0x800C
    CompareVarToValue 0x800C, 0
    ScrCmd_01C 1, _0537
    Call _0697
    ScrCmd_029 0x8008, 0x800C
    CompareVarToValue 0x8008, 0
    ScrCmd_01C 1, _031B
    CompareVarToValue 0x8008, 1
    ScrCmd_01C 1, _0344
    CompareVarToValue 0x8008, 2
    ScrCmd_01C 1, _036D
    CompareVarToValue 0x8008, 3
    ScrCmd_01C 1, _0396
    CompareVarToValue 0x8008, 4
    ScrCmd_01C 1, _03BF
    CompareVarToValue 0x8008, 5
    ScrCmd_01C 1, _03E8
    CompareVarToValue 0x8008, 6
    ScrCmd_01C 1, _0411
    CompareVarToValue 0x8008, 7
    ScrCmd_01C 1, _043A
    CompareVarToValue 0x8008, 8
    ScrCmd_01C 1, _0463
    CompareVarToValue 0x8008, 9
    ScrCmd_01C 1, _048C
    GoTo _0306
    End

_0306:
    ScrCmd_02C 23
    GoTo _0311
    End

_0311:
    ScrCmd_031
    ScrCmd_034
    ScrCmd_073
    ScrCmd_061
    End

_031B:
    ScrCmd_071 0x800C, 0x1900
    CompareVarToValue 0x800C, 0
    ScrCmd_01C 1, _052C
    ScrCmd_028 0x8005, 1
    Call _0557
    GoTo _04B5
    End

_0344:
    ScrCmd_071 0x800C, 0x1900
    CompareVarToValue 0x800C, 0
    ScrCmd_01C 1, _052C
    ScrCmd_028 0x8005, 1
    Call _0577
    GoTo _04B5
    End

_036D:
    ScrCmd_071 0x800C, 0x1900
    CompareVarToValue 0x800C, 0
    ScrCmd_01C 1, _052C
    ScrCmd_028 0x8005, 1
    Call _0597
    GoTo _04B5
    End

_0396:
    ScrCmd_071 0x800C, 0x1900
    CompareVarToValue 0x800C, 0
    ScrCmd_01C 1, _052C
    ScrCmd_028 0x8005, 1
    Call _05B7
    GoTo _04B5
    End

_03BF:
    ScrCmd_071 0x800C, 0x1900
    CompareVarToValue 0x800C, 0
    ScrCmd_01C 1, _052C
    ScrCmd_028 0x8005, 1
    Call _05D7
    GoTo _04B5
    End

_03E8:
    ScrCmd_071 0x800C, 0x1900
    CompareVarToValue 0x800C, 0
    ScrCmd_01C 1, _052C
    ScrCmd_028 0x8005, 1
    Call _05F7
    GoTo _04B5
    End

_0411:
    ScrCmd_071 0x800C, 0x1900
    CompareVarToValue 0x800C, 0
    ScrCmd_01C 1, _052C
    ScrCmd_028 0x8005, 1
    Call _0617
    GoTo _04B5
    End

_043A:
    ScrCmd_071 0x800C, 0x1900
    CompareVarToValue 0x800C, 0
    ScrCmd_01C 1, _052C
    ScrCmd_028 0x8005, 1
    Call _0637
    GoTo _04B5
    End

_0463:
    ScrCmd_071 0x800C, 0x1900
    CompareVarToValue 0x800C, 0
    ScrCmd_01C 1, _052C
    ScrCmd_028 0x8005, 1
    Call _0657
    GoTo _04B5
    End

_048C:
    ScrCmd_071 0x800C, 0x1900
    CompareVarToValue 0x800C, 0
    ScrCmd_01C 1, _052C
    ScrCmd_028 0x8005, 1
    Call _0677
    GoTo _04B5
    End

_04B5:
    ScrCmd_307 0x800C
    CompareVarToVar 0x800C, 0x8005
    ScrCmd_01C 0, _0521
    GoTo _04CE
    End

_04CE:
    CompareVarToValue 0x8005, 0
    ScrCmd_01C 1, _0503
    ScrCmd_289 0x800C, 0x8007, 0x8000, 0x8001, 0x8002, 0x8003
    ScrCmd_014 0x334
    ScrCmd_023 0x1900
    ScrCmd_1A3 0x1900
    ScrCmd_027 0x8005, 1
    GoTo _04CE
    End

_0503:
    ScrCmd_049 0x644
    ScrCmd_074
    CompareVarToValue 0x4042, 0x2710
    ScrCmd_01D 0, _0700
    ScrCmd_02C 20
    GoTo _054D
    End

_0521:
    ScrCmd_02C 22
    GoTo _054D
    End

_052C:
    ScrCmd_02C 21
    GoTo _054D
    End

_0537:
    ScrCmd_02C 24
    GoTo _054D

    .byte 2
    .byte 0
    .byte 44
    .byte 0
    .byte 23
    .byte 22
    .byte 0
    .byte 2
    .byte 0
    .byte 0
    .byte 0
    .byte 2
    .byte 0

_054D:
    ScrCmd_031
    ScrCmd_034
    ScrCmd_073
    ScrCmd_061
    End

_0557:
    ScrCmd_028 0x8007, 32
    ScrCmd_028 0x8000, 32
    ScrCmd_028 0x8001, 0
    ScrCmd_028 0x8002, 0
    ScrCmd_028 0x8003, 0
    Return

_0577:
    ScrCmd_028 0x8007, 32
    ScrCmd_028 0x8000, 0
    ScrCmd_028 0x8001, 32
    ScrCmd_028 0x8002, 0
    ScrCmd_028 0x8003, 0
    Return

_0597:
    ScrCmd_028 0x8007, 32
    ScrCmd_028 0x8000, 0
    ScrCmd_028 0x8001, 0
    ScrCmd_028 0x8002, 32
    ScrCmd_028 0x8003, 0
    Return

_05B7:
    ScrCmd_028 0x8007, 32
    ScrCmd_028 0x8000, 0
    ScrCmd_028 0x8001, 0
    ScrCmd_028 0x8002, 0
    ScrCmd_028 0x8003, 32
    Return

_05D7:
    ScrCmd_028 0x8007, 0
    ScrCmd_028 0x8000, 32
    ScrCmd_028 0x8001, 32
    ScrCmd_028 0x8002, 0
    ScrCmd_028 0x8003, 0
    Return

_05F7:
    ScrCmd_028 0x8007, 0
    ScrCmd_028 0x8000, 32
    ScrCmd_028 0x8001, 0
    ScrCmd_028 0x8002, 32
    ScrCmd_028 0x8003, 0
    Return

_0617:
    ScrCmd_028 0x8007, 0
    ScrCmd_028 0x8000, 32
    ScrCmd_028 0x8001, 0
    ScrCmd_028 0x8002, 0
    ScrCmd_028 0x8003, 32
    Return

_0637:
    ScrCmd_028 0x8007, 0
    ScrCmd_028 0x8000, 0
    ScrCmd_028 0x8001, 32
    ScrCmd_028 0x8002, 32
    ScrCmd_028 0x8003, 0
    Return

_0657:
    ScrCmd_028 0x8007, 0
    ScrCmd_028 0x8000, 0
    ScrCmd_028 0x8001, 32
    ScrCmd_028 0x8002, 0
    ScrCmd_028 0x8003, 32
    Return

_0677:
    ScrCmd_028 0x8007, 0
    ScrCmd_028 0x8000, 0
    ScrCmd_028 0x8001, 0
    ScrCmd_028 0x8002, 32
    ScrCmd_028 0x8003, 32
    Return

_0697:
    ScrCmd_02C 18
    ScrCmd_045 1, 1, 0, 1, 0x800C
    ScrCmd_046 25, 0xFF, 0
    ScrCmd_046 26, 0xFF, 1
    ScrCmd_046 27, 0xFF, 2
    ScrCmd_046 28, 0xFF, 3
    ScrCmd_046 29, 0xFF, 4
    ScrCmd_046 30, 0xFF, 5
    ScrCmd_046 31, 0xFF, 6
    ScrCmd_046 32, 0xFF, 7
    ScrCmd_046 33, 0xFF, 8
    ScrCmd_046 34, 0xFF, 9
    ScrCmd_046 35, 0xFF, 10
    ScrCmd_047
    Return

_06FE:
    End

_0700:
    ScrCmd_026 0x4042, 1
    Return

_0708:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 37
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .byte 0
    .byte 0
    .byte 0
