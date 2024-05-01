    .include "macros/scrcmd.inc"

    .data

    .long _0059-.-4
    .long _06A4-.-4
    .long _06DD-.-4
    .long _06EC-.-4
    .long _0760-.-4
    .long _0075-.-4
    .long _0788-.-4
    .long _079B-.-4
    .long _07AE-.-4
    .long _07C1-.-4
    .long _07D4-.-4
    .long _07E7-.-4
    .long _07FA-.-4
    .long _003A-.-4
    .short 0xFD13

_003A:
    ScrCmd_238 19, 0x4000
    CompareVarToValue 0x4000, 0
    GoToIf 1, _0053
    ClearFlag 0x2C3
    End

_0053:
    SetFlag 0x2C3
    End

_0059:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_028 0x4003, 0
    ScrCmd_028 0x4004, 0
    GoTo _0091
    End

_0075:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_028 0x4003, 0
    ScrCmd_028 0x4004, 1
    GoTo _0091
    End

_0091:
    ScrCmd_313 0
    CompareVarToValue 0x4004, 0
    CallIf 1, _0664
    CompareVarToValue 0x4004, 1
    CallIf 1, _0669
    GoTo _00B7
    End

_00B7:
    CompareVarToValue 0x4004, 0
    CallIf 1, _066E
    CompareVarToValue 0x4004, 1
    CallIf 1, _0686
    ScrCmd_042 41, 2
    ScrCmd_042 42, 3
    ScrCmd_043
    CompareVarToValue 0x800C, 0
    GoToIf 1, _0152
    CompareVarToValue 0x800C, 1
    GoToIf 1, _017F
    CompareVarToValue 0x800C, 2
    GoToIf 1, _0117
    CompareVarToValue 0x800C, 4
    GoToIf 1, _01AC
    GoTo _0139
    End

_0117:
    CompareVarToValue 0x4004, 0
    CallIf 1, _069A
    CompareVarToValue 0x4004, 1
    CallIf 1, _069F
    GoTo _00B7
    End

_0139:
    GoTo _0141
    End

_0141:
    ScrCmd_028 0x40BC, 0
    ScrCmd_02C 6
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0152:
    ScrCmd_028 0x40BD, 0
    ScrCmd_2D2 0, 3, 0x800C
    ScrCmd_0D5 0, 3
    ScrCmd_0D5 1, 3
    CompareVarToValue 0x800C, 0
    GoToIf 1, _01D9
    GoTo _01FF
    End

_017F:
    ScrCmd_028 0x40BD, 1
    ScrCmd_2D2 0, 3, 0x800C
    ScrCmd_0D5 0, 3
    ScrCmd_0D5 1, 3
    CompareVarToValue 0x800C, 0
    GoToIf 1, _01D9
    GoTo _01FF
    End

_01AC:
    ScrCmd_028 0x40BD, 2
    ScrCmd_2D2 0, 2, 0x800C
    ScrCmd_0D5 0, 2
    ScrCmd_0D5 1, 2
    CompareVarToValue 0x800C, 0
    GoToIf 1, _01EC
    GoTo _01FF
    End

_01D9:
    ScrCmd_02C 8
    ScrCmd_1FF 9, 3, 0, 0
    GoTo _0139
    End

_01EC:
    ScrCmd_02C 8
    ScrCmd_1FF 9, 2, 0, 0
    GoTo _0139
    End

_01FF:
    ScrCmd_02C 7
    ScrCmd_034
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_2D2 4, 0x40BD, 0x800C
    ScrCmd_2D4 0x4002, 0x4005, 0x4006
    ScrCmd_0A1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    CompareVarToValue 0x4002, 0xFF
    GoToIf 1, _0139
    ScrCmd_31E 0x4002, 0x800C
    CompareVarToValue 0x800C, 0xFF
    GoToIf 1, _05D5
    ScrCmd_31E 0x4005, 0x800C
    CompareVarToValue 0x800C, 0xFF
    GoToIf 1, _05D5
    ScrCmd_31E 0x4006, 0x800C
    CompareVarToValue 0x800C, 0xFF
    GoToIf 1, _05D5
    ScrCmd_198 0x4002, 0x4001
    CompareVarToValue 0x4001, 0
    GoToIf 1, _0139
    GoTo _028F
    End

_028F:
    GoTo _0297
    End

_0297:
    CompareVarToValue 0x40BD, 0
    CallIf 1, _043C
    CompareVarToValue 0x40BD, 1
    CallIf 1, _043C
    ScrCmd_028 0x4000, 0
    ScrCmd_14E
    ScrCmd_014 0x7D6
    ScrCmd_029 0x800C, 0x4000
    CompareVarToValue 0x800C, 0
    GoToIf 1, _0139
    CompareVarToValue 0x40BD, 2
    GoToIf 1, _02E5
    GoTo _049D
    End

_02E5:
    ScrCmd_02C 43
    ScrCmd_040 30, 1, 0, 1, 0x800C
    ScrCmd_33A 1
    ScrCmd_042 13, 0
    ScrCmd_042 14, 1
    ScrCmd_042 5, 2
    ScrCmd_043
    ScrCmd_029 0x8008, 0x800C
    CompareVarToValue 0x8008, 0
    GoToIf 1, _0329
    CompareVarToValue 0x8008, 1
    GoToIf 1, _037D
    GoTo _0139
    End

_0329:
    ScrCmd_02C 44
    ScrCmd_03E 0x800C
    CompareVarToValue 0x800C, 1
    GoToIf 1, _02E5
    ScrCmd_034
    ScrCmd_0F2 31, 0, 0, 0x800C
    CompareVarToValue 0x800C, 1
    GoToIf 1, _036B
    CompareVarToValue 0x800C, 3
    GoToIf 1, _0373
    GoTo _03D1
    End

_036B:
    GoTo _02E5
    End

_0373:
    ScrCmd_150
    GoTo _02E5
    End

_037D:
    ScrCmd_02C 44
    ScrCmd_03E 0x800C
    CompareVarToValue 0x800C, 1
    GoToIf 1, _02E5
    ScrCmd_034
    ScrCmd_0F3 31, 0, 0, 0x800C
    CompareVarToValue 0x800C, 1
    GoToIf 1, _03BF
    CompareVarToValue 0x800C, 3
    GoToIf 1, _03C7
    GoTo _03D1
    End

_03BF:
    GoTo _02E5
    End

_03C7:
    ScrCmd_150
    GoTo _02E5
    End

_03D1:
    ScrCmd_136
    ScrCmd_135 136
    ScrCmd_198 0x4002, 0x8000
    ScrCmd_198 0x4005, 0x8001
    ScrCmd_2D3 0x8000, 0x8001, 0x800C
    ScrCmd_029 0x8008, 0x800C
    CompareVarToValue 0x8008, 1
    GoToIf 1, _0444
    CompareVarToValue 0x8008, 2
    GoToIf 1, _045A
    CompareVarToValue 0x8008, 3
    GoToIf 1, _0470
    ScrCmd_136
    ScrCmd_135 138
    ScrCmd_02C 45
    CompareVarToValue 0x40BD, 2
    CallIf 1, _043C
    Call _06CB
    GoTo _049D
    End

_043C:
    ScrCmd_028 0x40BC, 0xFF
    Return

_0444:
    Call _0493
    ScrCmd_0D0 0, 0x4002
    ScrCmd_02C 29
    GoTo _048B
    End

_045A:
    Call _0493
    ScrCmd_0D0 0, 0x4005
    ScrCmd_02C 29
    GoTo _048B
    End

_0470:
    Call _0493
    ScrCmd_0D0 0, 0x4002
    ScrCmd_0D0 1, 0x4005
    ScrCmd_02C 30
    GoTo _048B
    End

_048B:
    GoTo _0139
    End

_0493:
    ScrCmd_136
    ScrCmd_135 139
    ScrCmd_150
    Return

_049D:
    CompareVarToValue 0x40BD, 0
    CallIf 1, _053D
    CompareVarToValue 0x40BD, 1
    CallIf 1, _0558
    CompareVarToValue 0x40BD, 2
    CallIf 1, _0573
    ScrCmd_049 0x603
    GoTo _04D0
    End

_04D0:
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    CompareVarToValue 0x40BD, 0
    CallIf 1, _0599
    CompareVarToValue 0x40BD, 1
    CallIf 1, _05AD
    CompareVarToValue 0x40BD, 2
    CallIf 1, _05C1
    ScrCmd_1E5 58
    ScrCmd_1CD 38, 0, 0, 0, 0
    ScrCmd_1F8
    ScrCmd_2C4 11
    CompareVarToValue 0x40BD, 2
    CallIf 1, _0539
    ScrCmd_0A1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_313 1
    End

_0539:
    ScrCmd_150
    Return

_053D:
    ScrCmd_02C 32
    ScrCmd_030
    ScrCmd_034
    ScrCmd_05E 0xFF, _05E4
    ScrCmd_05E 0x800D, _0604
    ScrCmd_05F
    Return

_0558:
    ScrCmd_02C 32
    ScrCmd_030
    ScrCmd_034
    ScrCmd_05E 0xFF, _05E4
    ScrCmd_05E 0x800D, _0604
    ScrCmd_05F
    Return

_0573:
    ScrCmd_02E 32
    ScrCmd_003 10, 0x800C
    ScrCmd_136
    ScrCmd_135 137
    ScrCmd_034
    ScrCmd_05E 0xFF, _05F0
    ScrCmd_05E 0x800D, _0610
    ScrCmd_05F
    Return

_0599:
    ScrCmd_05E 0xFF, _0624
    ScrCmd_05E 0x800D, _0648
    ScrCmd_05F
    Return

_05AD:
    ScrCmd_05E 0xFF, _0624
    ScrCmd_05E 0x800D, _0648
    ScrCmd_05F
    Return

_05C1:
    ScrCmd_05E 0xFF, _0634
    ScrCmd_05E 0x800D, _0654
    ScrCmd_05F
    Return

_05D5:
    ScrCmd_028 0x40BC, 0
    ScrCmd_014 0x809
    End

    .balign 4, 0
_05E4:
    MoveAction_00E 6
    MoveAction_045
    EndMovement

    .balign 4, 0
_05F0:
    MoveAction_00E 3
    MoveAction_00C
    MoveAction_00E 3
    MoveAction_045
    EndMovement

    .balign 4, 0
_0604:
    MoveAction_00E 5
    MoveAction_045
    EndMovement

    .balign 4, 0
_0610:
    MoveAction_00E 2
    MoveAction_00C
    MoveAction_00E 3
    MoveAction_045
    EndMovement

    .balign 4, 0
_0624:
    MoveAction_017 6
    MoveAction_046
    MoveAction_002
    EndMovement

    .balign 4, 0
_0634:
    MoveAction_017 6
    MoveAction_015
    MoveAction_046
    MoveAction_002
    EndMovement

    .balign 4, 0
_0648:
    MoveAction_017 5
    MoveAction_046
    EndMovement

    .balign 4, 0
_0654:
    MoveAction_015
    MoveAction_017 5
    MoveAction_046
    EndMovement

_0664:
    ScrCmd_02C 0
    Return

_0669:
    ScrCmd_02C 3
    Return

_066E:
    ScrCmd_041 31, 9, 0, 1, 0x800C
    ScrCmd_33A 1
    ScrCmd_042 38, 0
    ScrCmd_042 39, 1
    ScrCmd_02C 1
    Return

_0686:
    ScrCmd_041 31, 11, 0, 1, 0x800C
    ScrCmd_33A 1
    ScrCmd_042 40, 4
    ScrCmd_02C 4
    Return

_069A:
    ScrCmd_02C 2
    Return

_069F:
    ScrCmd_02C 5
    Return

_06A4:
    ScrCmd_313 0
    ScrCmd_028 0x4003, 1
    ScrCmd_028 0x40BC, 0
    ScrCmd_02C 33
    Call _043C
    Call _06CB
    GoTo _049D
    End

_06CB:
    ScrCmd_18D
    ScrCmd_12D 0x800C
    ScrCmd_18E
    ScrCmd_049 0x61B
    ScrCmd_04B 0x61B
    Return

_06DD:
    ScrCmd_02C 34
    ScrCmd_2D5 0x40BD
    GoTo _0139
    End

_06EC:
    CompareVarToValue 0x40BD, 0
    CallIf 1, _0728
    CompareVarToValue 0x40BD, 1
    CallIf 1, _0728
    CompareVarToValue 0x4052, 1
    CallIf 1, _072E
    CompareVarToValue 0x4052, 3
    CallIf 1, _0745
    GoTo _0139
    End

_0728:
    ScrCmd_30A 39
    Return

_072E:
    ScrCmd_02C 35
    ScrCmd_0CD 0
    ScrCmd_02C 37
    ScrCmd_04E 0x486
    ScrCmd_04F
    ScrCmd_028 0x4052, 2
    Return

_0745:
    ScrCmd_02C 35
    ScrCmd_0CD 0
    ScrCmd_02C 36
    ScrCmd_04E 0x486
    ScrCmd_04F
    ScrCmd_028 0x4052, 4
    ScrCmd_014 0x806
    Return

_0760:
    GoTo _0139

    .byte 2
    .byte 0
    .byte 12
    .byte 0
    .byte 2
    .byte 0
    .byte 63
    .byte 0
    .byte 1
    .byte 0
    .byte 12
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 12
    .byte 0
    .byte 2
    .byte 0
    .byte 63
    .byte 0
    .byte 1
    .byte 0
    .byte 12
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

_0788:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 46
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_079B:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 47
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_07AE:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 48
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_07C1:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 49
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_07D4:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 50
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_07E7:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 51
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_07FA:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 52
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .byte 0
    .byte 0
    .byte 0
