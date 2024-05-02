    .include "macros/scrcmd.inc"

    .data

    .long _001A-.-4
    .long _0634-.-4
    .long _0647-.-4
    .long _0674-.-4
    .long _0685-.-4
    .long _0747-.-4
    .short 0xFD13

_001A:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    CompareVarToValue 0x40B6, 9
    GoToIf 4, _00B2
    CheckFlag 0x113
    GoToIf 1, _0164
    CheckFlag 121
    GoToIf 1, _007E
    ScrCmd_02C 0
    ScrCmd_028 0x8004, 0x1AC
    ScrCmd_028 0x8005, 1
    ScrCmd_014 0x7FC
    SetFlag 121
    ClearFlag 0x111
    ScrCmd_02C 1
    ScrCmd_03E 0x800C
    CompareVarToValue 0x800C, 1
    GoToIf 1, _009C
    SetFlag 0x113
    GoTo _0164

_007E:
    ScrCmd_02C 2
    ScrCmd_03E 0x800C
    CompareVarToValue 0x800C, 1
    GoToIf 1, _009C
    SetFlag 0x113
    GoTo _0164

_009C:
    ScrCmd_02C 3
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00A7:
    ScrCmd_02C 29
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00B2:
    ScrCmd_02C 33
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00BD:
    SetFlag 0x111
    ScrCmd_02C 4
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00CC:
    SetFlag 0x111
    ScrCmd_02C 8
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00DB:
    SetFlag 0x111
    ScrCmd_02C 12
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00EA:
    SetFlag 0x111
    ScrCmd_02C 16
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00F9:
    SetFlag 0x111
    ScrCmd_02C 20
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0108:
    SetFlag 0x111
    ScrCmd_02C 24
    ScrCmd_034
    Call _057F
    ScrCmd_02C 25
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0122:
    ScrCmd_02C 5
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_012D:
    ScrCmd_02C 9
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0138:
    ScrCmd_02C 13
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0143:
    ScrCmd_02C 17
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_014E:
    ScrCmd_02C 21
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0159:
    ScrCmd_02C 26
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0164:
    CompareVarToValue 0x40B6, 0
    GoToIf 1, _01DF
    CompareVarToValue 0x40B6, 1
    GoToIf 1, _023D
    CompareVarToValue 0x40B6, 2
    GoToIf 1, _029B
    CompareVarToValue 0x40B6, 3
    GoToIf 1, _02D9
    CompareVarToValue 0x40B6, 4
    GoToIf 1, _0347
    CompareVarToValue 0x40B6, 5
    GoToIf 1, _03D9
    CompareVarToValue 0x40B6, 6
    GoToIf 1, _0448
    CompareVarToValue 0x40B6, 7
    GoToIf 1, _04A9
    CompareVarToValue 0x40B6, 8
    GoToIf 1, _050A
    GoTo _00B2

_01DF:
    CheckFlag 0x111
    GoToIf 0, _00BD
    CheckFlag 0x96E
    GoToIf 0, _0122
    ScrCmd_028 0x40B6, 1
    ClearFlag 0x111
    ScrCmd_02C 6
    ScrCmd_028 0x8004, 1
    ScrCmd_028 0x8005, 1
    ScrCmd_014 0x7DD
    ScrCmd_028 0x8004, 23
    ScrCmd_028 0x8005, 1
    ScrCmd_014 0x7DD
    ScrCmd_028 0x8004, 28
    ScrCmd_028 0x8005, 1
    ScrCmd_014 0x7DD
    ScrCmd_02C 7
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_023D:
    CheckFlag 0x111
    GoToIf 0, _00CC
    CheckFlag 0x96F
    GoToIf 0, _012D
    ScrCmd_028 0x40B6, 2
    ClearFlag 0x111
    ScrCmd_02C 10
    ScrCmd_028 0x8004, 1
    ScrCmd_028 0x8005, 1
    ScrCmd_014 0x7DE
    ScrCmd_028 0x8004, 3
    ScrCmd_028 0x8005, 1
    ScrCmd_014 0x7DE
    ScrCmd_028 0x8004, 4
    ScrCmd_028 0x8005, 1
    ScrCmd_014 0x7DE
    ScrCmd_02C 11
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_029B:
    CheckFlag 0x111
    GoToIf 0, _00DB
    CheckFlag 0x970
    GoToIf 0, _0138
    ScrCmd_028 0x40B6, 3
    ClearFlag 0x111
    ScrCmd_02C 14
    ScrCmd_028 0x8004, 33
    ScrCmd_028 0x8005, 1
    ScrCmd_014 0x7DD
    ScrCmd_02C 15
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_02D9:
    CheckFlag 0x111
    GoToIf 0, _00EA
    CheckFlag 0x971
    GoToIf 0, _0143
    ScrCmd_028 0x40B6, 4
    ClearFlag 0x111
    ScrCmd_02C 18
    ScrCmd_028 0x8004, 11
    ScrCmd_028 0x8005, 1
    ScrCmd_014 0x7FE
    ScrCmd_028 0x8004, 9
    ScrCmd_028 0x8005, 1
    ScrCmd_014 0x7FE
    ScrCmd_028 0x8004, 17
    ScrCmd_028 0x8005, 1
    ScrCmd_014 0x7FE
    ScrCmd_028 0x8004, 113
    ScrCmd_028 0x8005, 1
    ScrCmd_014 0x7FE
    ScrCmd_02C 19
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0347:
    CheckFlag 0x111
    GoToIf 0, _00F9
    CheckFlag 0x972
    GoToIf 0, _014E
    ScrCmd_028 0x40B6, 5
    ClearFlag 0x111
    ClearFlag 252
    ScrCmd_02C 22
    Call _037F
    ScrCmd_02C 23
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_037F:
    ScrCmd_0DE 0x800C
    CompareVarToValue 0x800C, 0x186
    GoToIf 1, _03A3
    CompareVarToValue 0x800C, 0x183
    GoToIf 1, _03B5
    GoTo _03C7

_03A3:
    ScrCmd_028 0x8004, 101
    ScrCmd_028 0x8005, 1
    ScrCmd_014 0x7FE
    Return

_03B5:
    ScrCmd_028 0x8004, 102
    ScrCmd_028 0x8005, 1
    ScrCmd_014 0x7FE
    Return

_03C7:
    ScrCmd_028 0x8004, 103
    ScrCmd_028 0x8005, 1
    ScrCmd_014 0x7FE
    Return

_03D9:
    CheckFlag 0x111
    GoToIf 0, _0108
    CheckFlag 0x973
    GoToIf 0, _0159
    CheckFlag 252
    CallIf 1, _057A
    CheckFlag 252
    CallIf 0, _0443
    ScrCmd_028 0x8004, 81
    ScrCmd_028 0x8005, 1
    ScrCmd_085 0x8004, 0x8005, 0x800C
    CompareVarToValue 0x800C, 0
    GoToIf 1, _056B
    ScrCmd_014 0x7FE
    ScrCmd_028 0x40B6, 6
    ClearFlag 0x111
    ClearFlag 252
    ScrCmd_02C 28
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0443:
    ScrCmd_02C 27
    Return

_0448:
    ScrCmd_24A 0x800C
    CompareVarToValue 0x800C, 3
    GoToIf 0, _00A7
    CheckFlag 252
    CallIf 1, _057A
    CheckFlag 252
    CallIf 0, _04A4
    ScrCmd_028 0x8004, 82
    ScrCmd_028 0x8005, 1
    ScrCmd_085 0x8004, 0x8005, 0x800C
    CompareVarToValue 0x800C, 0
    GoToIf 1, _056B
    ScrCmd_014 0x7DC
    ScrCmd_028 0x40B6, 7
    ClearFlag 252
    ScrCmd_034
    ScrCmd_061
    End

_04A4:
    ScrCmd_02C 30
    Return

_04A9:
    ScrCmd_24A 0x800C
    CompareVarToValue 0x800C, 10
    GoToIf 0, _00A7
    CheckFlag 252
    CallIf 1, _057A
    CheckFlag 252
    CallIf 0, _0505
    ScrCmd_028 0x8004, 83
    ScrCmd_028 0x8005, 1
    ScrCmd_085 0x8004, 0x8005, 0x800C
    CompareVarToValue 0x800C, 0
    GoToIf 1, _056B
    ScrCmd_014 0x7DC
    ScrCmd_028 0x40B6, 8
    ClearFlag 252
    ScrCmd_034
    ScrCmd_061
    End

_0505:
    ScrCmd_02C 31
    Return

_050A:
    ScrCmd_24A 0x800C
    CompareVarToValue 0x800C, 50
    GoToIf 0, _00A7
    CheckFlag 252
    CallIf 1, _057A
    CheckFlag 252
    CallIf 0, _0566
    ScrCmd_028 0x8004, 84
    ScrCmd_028 0x8005, 1
    ScrCmd_085 0x8004, 0x8005, 0x800C
    CompareVarToValue 0x800C, 0
    GoToIf 1, _056B
    ScrCmd_014 0x7DC
    ScrCmd_028 0x40B6, 9
    ClearFlag 252
    ScrCmd_034
    ScrCmd_061
    End

_0566:
    ScrCmd_02C 32
    Return

_056B:
    SetFlag 252
    ScrCmd_02C 34
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_057A:
    ScrCmd_02C 35
    Return

_057F:
    ScrCmd_069 0x8004, 0x8005
    CompareVarToValue 0x8004, 5
    GoToIf 1, _05B2
    CompareVarToValue 0x8004, 7
    GoToIf 1, _05BE
    CompareVarToValue 0x8005, 4
    GoToIf 1, _05CA
    GoTo _05D6

_05B2:
    ScrCmd_05E 2, _05E4
    ScrCmd_05F
    Return

_05BE:
    ScrCmd_05E 2, _05F8
    ScrCmd_05F
    Return

_05CA:
    ScrCmd_05E 2, _060C
    ScrCmd_05F
    Return

_05D6:
    ScrCmd_05E 2, _0620
    ScrCmd_05F
    Return

    .balign 4, 0
_05E4:
    MoveAction_008
    MoveAction_009 2
    MoveAction_008
    MoveAction_026
    EndMovement

    .balign 4, 0
_05F8:
    MoveAction_008
    MoveAction_009 2
    MoveAction_008
    MoveAction_027
    EndMovement

    .balign 4, 0
_060C:
    MoveAction_00A
    MoveAction_00B 2
    MoveAction_00A
    MoveAction_024
    EndMovement

    .balign 4, 0
_0620:
    MoveAction_00A
    MoveAction_00B 2
    MoveAction_00A
    MoveAction_025
    EndMovement

_0634:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 36
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0647:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    CheckFlag 189
    GoToIf 1, _0669
    SetFlag 189
    ScrCmd_02C 38
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0669:
    ScrCmd_02C 39
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0674:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 40
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0685:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 41
    GoTo _0696
    End

_0696:
    ScrCmd_02C 42
    ScrCmd_040 1, 1, 0, 1, 0x800C
    ScrCmd_042 180, 0
    ScrCmd_042 181, 1
    ScrCmd_042 182, 2
    ScrCmd_042 183, 3
    ScrCmd_042 184, 4
    ScrCmd_042 12, 5
    ScrCmd_043
    ScrCmd_029 0x8008, 0x800C
    CompareVarToValue 0x8008, 0
    GoToIf 1, _070A
    CompareVarToValue 0x8008, 1
    GoToIf 1, _0715
    CompareVarToValue 0x8008, 2
    GoToIf 1, _0720
    CompareVarToValue 0x8008, 3
    GoToIf 1, _072B
    CompareVarToValue 0x8008, 4
    GoToIf 1, _0736
    GoTo _0741
    End

_070A:
    ScrCmd_02C 43
    GoTo _0696
    End

_0715:
    ScrCmd_02C 44
    GoTo _0696
    End

_0720:
    ScrCmd_02C 45
    GoTo _0696
    End

_072B:
    ScrCmd_02C 46
    GoTo _0696
    End

_0736:
    ScrCmd_02C 47
    GoTo _0696
    End

_0741:
    ScrCmd_034
    ScrCmd_061
    End

_0747:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 37
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .byte 0
    .byte 0
