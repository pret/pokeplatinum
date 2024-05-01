    .include "macros/scrcmd.inc"

    .data

    .long _0065-.-4
    .long _06B8-.-4
    .long _06F1-.-4
    .long _0700-.-4
    .long _0774-.-4
    .long _0081-.-4
    .long _079C-.-4
    .long _07AF-.-4
    .long _07C2-.-4
    .long _07D5-.-4
    .long _07E8-.-4
    .long _07FB-.-4
    .long _080E-.-4
    .long _0821-.-4
    .long _0046-.-4
    .long _0834-.-4
    .long _0845-.-4
    .short 0xFD13

_0046:
    ScrCmd_238 19, 0x4000
    CompareVarToValue 0x4000, 0
    ScrCmd_01C 1, _005F
    ClearFlag 0x2C3
    End

_005F:
    SetFlag 0x2C3
    End

_0065:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_028 0x4003, 0
    ScrCmd_028 0x4004, 0
    GoTo _009D
    End

_0081:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_028 0x4003, 0
    ScrCmd_028 0x4004, 1
    GoTo _009D
    End

_009D:
    ScrCmd_313 0
    CompareVarToValue 0x4004, 0
    ScrCmd_01D 1, _0678
    CompareVarToValue 0x4004, 1
    ScrCmd_01D 1, _067D
    GoTo _00C3
    End

_00C3:
    CompareVarToValue 0x4004, 0
    ScrCmd_01D 1, _0682
    CompareVarToValue 0x4004, 1
    ScrCmd_01D 1, _069A
    ScrCmd_042 41, 2
    ScrCmd_042 42, 3
    ScrCmd_043
    CompareVarToValue 0x800C, 0
    ScrCmd_01C 1, _015E
    CompareVarToValue 0x800C, 1
    ScrCmd_01C 1, _018B
    CompareVarToValue 0x800C, 2
    ScrCmd_01C 1, _0123
    CompareVarToValue 0x800C, 4
    ScrCmd_01C 1, _01B8
    GoTo _0145
    End

_0123:
    CompareVarToValue 0x4004, 0
    ScrCmd_01D 1, _06AE
    CompareVarToValue 0x4004, 1
    ScrCmd_01D 1, _06B3
    GoTo _00C3
    End

_0145:
    GoTo _014D
    End

_014D:
    ScrCmd_028 0x40BF, 0
    ScrCmd_02C 6
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_015E:
    ScrCmd_028 0x40BE, 0
    ScrCmd_2D9 0, 3, 0x800C
    ScrCmd_0D5 0, 3
    ScrCmd_0D5 1, 3
    CompareVarToValue 0x800C, 0
    ScrCmd_01C 1, _01E5
    GoTo _020B
    End

_018B:
    ScrCmd_028 0x40BE, 1
    ScrCmd_2D9 0, 3, 0x800C
    ScrCmd_0D5 0, 3
    ScrCmd_0D5 1, 3
    CompareVarToValue 0x800C, 0
    ScrCmd_01C 1, _01E5
    GoTo _020B
    End

_01B8:
    ScrCmd_028 0x40BE, 2
    ScrCmd_2D9 0, 2, 0x800C
    ScrCmd_0D5 0, 2
    ScrCmd_0D5 1, 2
    CompareVarToValue 0x800C, 0
    ScrCmd_01C 1, _01F8
    GoTo _020B
    End

_01E5:
    ScrCmd_02C 8
    ScrCmd_1FF 9, 3, 0, 0
    GoTo _0145
    End

_01F8:
    ScrCmd_02C 8
    ScrCmd_1FF 9, 2, 0, 0
    GoTo _0145
    End

_020B:
    ScrCmd_02C 7
    ScrCmd_034
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_2D9 4, 0x40BE, 0x800C
    ScrCmd_2DB 0x4002, 0x4005, 0x4006
    ScrCmd_0A1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    CompareVarToValue 0x4002, 0xFF
    ScrCmd_01C 1, _0145
    ScrCmd_31E 0x4002, 0x800C
    CompareVarToValue 0x800C, 0xFF
    ScrCmd_01C 1, _05E1
    ScrCmd_31E 0x4005, 0x800C
    CompareVarToValue 0x800C, 0xFF
    ScrCmd_01C 1, _05E1
    ScrCmd_31E 0x4006, 0x800C
    CompareVarToValue 0x800C, 0xFF
    ScrCmd_01C 1, _05E1
    ScrCmd_198 0x4002, 0x4001
    CompareVarToValue 0x4001, 0
    ScrCmd_01C 1, _0145
    GoTo _029B
    End

_029B:
    GoTo _02A3
    End

_02A3:
    CompareVarToValue 0x40BE, 0
    ScrCmd_01D 1, _0448
    CompareVarToValue 0x40BE, 1
    ScrCmd_01D 1, _0448
    ScrCmd_028 0x4000, 0
    ScrCmd_14E
    ScrCmd_014 0x7D6
    ScrCmd_029 0x800C, 0x4000
    CompareVarToValue 0x800C, 0
    ScrCmd_01C 1, _0145
    CompareVarToValue 0x40BE, 2
    ScrCmd_01C 1, _02F1
    GoTo _04A9
    End

_02F1:
    ScrCmd_02C 43
    ScrCmd_040 30, 1, 0, 1, 0x800C
    ScrCmd_33A 1
    ScrCmd_042 13, 0
    ScrCmd_042 14, 1
    ScrCmd_042 5, 2
    ScrCmd_043
    ScrCmd_029 0x8008, 0x800C
    CompareVarToValue 0x8008, 0
    ScrCmd_01C 1, _0335
    CompareVarToValue 0x8008, 1
    ScrCmd_01C 1, _0389
    GoTo _0145
    End

_0335:
    ScrCmd_02C 44
    ScrCmd_03E 0x800C
    CompareVarToValue 0x800C, 1
    ScrCmd_01C 1, _02F1
    ScrCmd_034
    ScrCmd_0F2 32, 0, 0, 0x800C
    CompareVarToValue 0x800C, 1
    ScrCmd_01C 1, _0377
    CompareVarToValue 0x800C, 3
    ScrCmd_01C 1, _037F
    GoTo _03DD
    End

_0377:
    GoTo _02F1
    End

_037F:
    ScrCmd_150
    GoTo _02F1
    End

_0389:
    ScrCmd_02C 44
    ScrCmd_03E 0x800C
    CompareVarToValue 0x800C, 1
    ScrCmd_01C 1, _02F1
    ScrCmd_034
    ScrCmd_0F3 32, 0, 0, 0x800C
    CompareVarToValue 0x800C, 1
    ScrCmd_01C 1, _03CB
    CompareVarToValue 0x800C, 3
    ScrCmd_01C 1, _03D3
    GoTo _03DD
    End

_03CB:
    GoTo _02F1
    End

_03D3:
    ScrCmd_150
    GoTo _02F1
    End

_03DD:
    ScrCmd_136
    ScrCmd_135 154
    ScrCmd_198 0x4002, 0x8000
    ScrCmd_198 0x4005, 0x8001
    ScrCmd_2DA 0x8000, 0x8001, 0x800C
    ScrCmd_029 0x8008, 0x800C
    CompareVarToValue 0x8008, 1
    ScrCmd_01C 1, _0450
    CompareVarToValue 0x8008, 2
    ScrCmd_01C 1, _0466
    CompareVarToValue 0x8008, 3
    ScrCmd_01C 1, _047C
    ScrCmd_136
    ScrCmd_135 156
    ScrCmd_02C 45
    CompareVarToValue 0x40BE, 2
    ScrCmd_01D 1, _0448
    Call _06DF
    GoTo _04A9
    End

_0448:
    ScrCmd_028 0x40BF, 0xFF
    Return

_0450:
    Call _049F
    ScrCmd_0D0 0, 0x4002
    ScrCmd_02C 29
    GoTo _0497
    End

_0466:
    Call _049F
    ScrCmd_0D0 0, 0x4005
    ScrCmd_02C 29
    GoTo _0497
    End

_047C:
    Call _049F
    ScrCmd_0D0 0, 0x4002
    ScrCmd_0D0 1, 0x4005
    ScrCmd_02C 30
    GoTo _0497
    End

_0497:
    GoTo _0145
    End

_049F:
    ScrCmd_136
    ScrCmd_135 157
    ScrCmd_150
    Return

_04A9:
    CompareVarToValue 0x40BE, 0
    ScrCmd_01D 1, _0549
    CompareVarToValue 0x40BE, 1
    ScrCmd_01D 1, _0564
    CompareVarToValue 0x40BE, 2
    ScrCmd_01D 1, _057F
    ScrCmd_049 0x603
    GoTo _04DC
    End

_04DC:
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    CompareVarToValue 0x40BE, 0
    ScrCmd_01D 1, _05A5
    CompareVarToValue 0x40BE, 1
    ScrCmd_01D 1, _05B9
    CompareVarToValue 0x40BE, 2
    ScrCmd_01D 1, _05CD
    ScrCmd_1E5 58
    ScrCmd_1CD 40, 0, 0, 0, 0
    ScrCmd_1F8
    ScrCmd_2C4 15
    CompareVarToValue 0x40BE, 2
    ScrCmd_01D 1, _0545
    ScrCmd_0A1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_313 1
    End

_0545:
    ScrCmd_150
    Return

_0549:
    ScrCmd_02C 32
    ScrCmd_030
    ScrCmd_034
    ScrCmd_05E 0xFF, _05F0
    ScrCmd_05E 0x800D, _0610
    ScrCmd_05F
    Return

_0564:
    ScrCmd_02C 32
    ScrCmd_030
    ScrCmd_034
    ScrCmd_05E 0xFF, _05F0
    ScrCmd_05E 0x800D, _0610
    ScrCmd_05F
    Return

_057F:
    ScrCmd_02E 32
    ScrCmd_003 10, 0x800C
    ScrCmd_136
    ScrCmd_135 155
    ScrCmd_034
    ScrCmd_05E 0xFF, _0604
    ScrCmd_05E 0x800D, _0624
    ScrCmd_05F
    Return

_05A5:
    ScrCmd_05E 0xFF, _0630
    ScrCmd_05E 0x800D, _0658
    ScrCmd_05F
    Return

_05B9:
    ScrCmd_05E 0xFF, _0630
    ScrCmd_05E 0x800D, _0658
    ScrCmd_05F
    Return

_05CD:
    ScrCmd_05E 0xFF, _0648
    ScrCmd_05E 0x800D, _066C
    ScrCmd_05F
    Return

_05E1:
    ScrCmd_028 0x40BF, 0
    ScrCmd_014 0x809
    End

    .balign 4, 0
_05F0:
    MoveAction_00C 2
    MoveAction_00F
    MoveAction_00C 2
    MoveAction_045
    EndMovement

    .balign 4, 0
_0604:
    MoveAction_00C 4
    MoveAction_045
    EndMovement

    .balign 4, 0
_0610:
    MoveAction_00C
    MoveAction_00F
    MoveAction_00C 2
    MoveAction_045
    EndMovement

    .balign 4, 0
_0624:
    MoveAction_00C 3
    MoveAction_045
    EndMovement

    .balign 4, 0
_0630:
    MoveAction_015 2
    MoveAction_016
    MoveAction_015 2
    MoveAction_000
    MoveAction_046
    EndMovement

    .balign 4, 0
_0648:
    MoveAction_015 4
    MoveAction_000
    MoveAction_046
    EndMovement

    .balign 4, 0
_0658:
    MoveAction_015
    MoveAction_016
    MoveAction_015 2
    MoveAction_046
    EndMovement

    .balign 4, 0
_066C:
    MoveAction_015 3
    MoveAction_046
    EndMovement

_0678:
    ScrCmd_02C 0
    Return

_067D:
    ScrCmd_02C 3
    Return

_0682:
    ScrCmd_041 31, 9, 0, 1, 0x800C
    ScrCmd_33A 1
    ScrCmd_042 38, 0
    ScrCmd_042 39, 1
    ScrCmd_02C 1
    Return

_069A:
    ScrCmd_041 31, 11, 0, 1, 0x800C
    ScrCmd_33A 1
    ScrCmd_042 40, 4
    ScrCmd_02C 4
    Return

_06AE:
    ScrCmd_02C 2
    Return

_06B3:
    ScrCmd_02C 5
    Return

_06B8:
    ScrCmd_313 0
    ScrCmd_028 0x4003, 1
    ScrCmd_028 0x40BF, 0
    ScrCmd_02C 33
    Call _0448
    Call _06DF
    GoTo _04A9
    End

_06DF:
    ScrCmd_18D
    ScrCmd_12D 0x800C
    ScrCmd_18E
    ScrCmd_049 0x61B
    ScrCmd_04B 0x61B
    Return

_06F1:
    ScrCmd_02C 34
    ScrCmd_2DC 0x40BE
    GoTo _0145
    End

_0700:
    CompareVarToValue 0x40BE, 0
    ScrCmd_01D 1, _073C
    CompareVarToValue 0x40BE, 1
    ScrCmd_01D 1, _073C
    CompareVarToValue 0x4053, 1
    ScrCmd_01D 1, _0742
    CompareVarToValue 0x4053, 3
    ScrCmd_01D 1, _0759
    GoTo _0145
    End

_073C:
    ScrCmd_30A 41
    Return

_0742:
    ScrCmd_02C 35
    ScrCmd_0CD 0
    ScrCmd_02C 37
    ScrCmd_04E 0x486
    ScrCmd_04F
    ScrCmd_028 0x4053, 2
    Return

_0759:
    ScrCmd_02C 35
    ScrCmd_0CD 0
    ScrCmd_02C 36
    ScrCmd_04E 0x486
    ScrCmd_04F
    ScrCmd_028 0x4053, 4
    ScrCmd_014 0x806
    Return

_0774:
    GoTo _0145

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

_079C:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 46
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_07AF:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 47
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_07C2:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 48
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_07D5:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 49
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_07E8:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 50
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_07FB:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 51
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_080E:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 52
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0821:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 53
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0834:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 54
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0845:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 55
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .byte 0
    .byte 0
