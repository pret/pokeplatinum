    .include "macros/scrcmd.inc"

    .data

    ScriptEntry _001A
    ScriptEntry _0634
    ScriptEntry _0647
    ScriptEntry _0674
    ScriptEntry _0685
    ScriptEntry _0747
    .short 0xFD13

_001A:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    GoToIfGe 0x40B6, 9, _00B2
    GoToIfSet 0x113, _0164
    GoToIfSet 121, _007E
    ScrCmd_02C 0
    SetVar 0x8004, 0x1AC
    SetVar 0x8005, 1
    ScrCmd_014 0x7FC
    SetFlag 121
    ClearFlag 0x111
    ScrCmd_02C 1
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _009C
    SetFlag 0x113
    GoTo _0164

_007E:
    ScrCmd_02C 2
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _009C
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
    GoToIfEq 0x40B6, 0, _01DF
    GoToIfEq 0x40B6, 1, _023D
    GoToIfEq 0x40B6, 2, _029B
    GoToIfEq 0x40B6, 3, _02D9
    GoToIfEq 0x40B6, 4, _0347
    GoToIfEq 0x40B6, 5, _03D9
    GoToIfEq 0x40B6, 6, _0448
    GoToIfEq 0x40B6, 7, _04A9
    GoToIfEq 0x40B6, 8, _050A
    GoTo _00B2

_01DF:
    GoToIfUnset 0x111, _00BD
    GoToIfUnset 0x96E, _0122
    SetVar 0x40B6, 1
    ClearFlag 0x111
    ScrCmd_02C 6
    SetVar 0x8004, 1
    SetVar 0x8005, 1
    ScrCmd_014 0x7DD
    SetVar 0x8004, 23
    SetVar 0x8005, 1
    ScrCmd_014 0x7DD
    SetVar 0x8004, 28
    SetVar 0x8005, 1
    ScrCmd_014 0x7DD
    ScrCmd_02C 7
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_023D:
    GoToIfUnset 0x111, _00CC
    GoToIfUnset 0x96F, _012D
    SetVar 0x40B6, 2
    ClearFlag 0x111
    ScrCmd_02C 10
    SetVar 0x8004, 1
    SetVar 0x8005, 1
    ScrCmd_014 0x7DE
    SetVar 0x8004, 3
    SetVar 0x8005, 1
    ScrCmd_014 0x7DE
    SetVar 0x8004, 4
    SetVar 0x8005, 1
    ScrCmd_014 0x7DE
    ScrCmd_02C 11
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_029B:
    GoToIfUnset 0x111, _00DB
    GoToIfUnset 0x970, _0138
    SetVar 0x40B6, 3
    ClearFlag 0x111
    ScrCmd_02C 14
    SetVar 0x8004, 33
    SetVar 0x8005, 1
    ScrCmd_014 0x7DD
    ScrCmd_02C 15
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_02D9:
    GoToIfUnset 0x111, _00EA
    GoToIfUnset 0x971, _0143
    SetVar 0x40B6, 4
    ClearFlag 0x111
    ScrCmd_02C 18
    SetVar 0x8004, 11
    SetVar 0x8005, 1
    ScrCmd_014 0x7FE
    SetVar 0x8004, 9
    SetVar 0x8005, 1
    ScrCmd_014 0x7FE
    SetVar 0x8004, 17
    SetVar 0x8005, 1
    ScrCmd_014 0x7FE
    SetVar 0x8004, 113
    SetVar 0x8005, 1
    ScrCmd_014 0x7FE
    ScrCmd_02C 19
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0347:
    GoToIfUnset 0x111, _00F9
    GoToIfUnset 0x972, _014E
    SetVar 0x40B6, 5
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
    GoToIfEq 0x800C, 0x186, _03A3
    GoToIfEq 0x800C, 0x183, _03B5
    GoTo _03C7

_03A3:
    SetVar 0x8004, 101
    SetVar 0x8005, 1
    ScrCmd_014 0x7FE
    Return

_03B5:
    SetVar 0x8004, 102
    SetVar 0x8005, 1
    ScrCmd_014 0x7FE
    Return

_03C7:
    SetVar 0x8004, 103
    SetVar 0x8005, 1
    ScrCmd_014 0x7FE
    Return

_03D9:
    GoToIfUnset 0x111, _0108
    GoToIfUnset 0x973, _0159
    CallIfSet 252, _057A
    CallIfUnset 252, _0443
    SetVar 0x8004, 81
    SetVar 0x8005, 1
    ScrCmd_085 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _056B
    ScrCmd_014 0x7FE
    SetVar 0x40B6, 6
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
    GoToIfLt 0x800C, 3, _00A7
    CallIfSet 252, _057A
    CallIfUnset 252, _04A4
    SetVar 0x8004, 82
    SetVar 0x8005, 1
    ScrCmd_085 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _056B
    ScrCmd_014 0x7DC
    SetVar 0x40B6, 7
    ClearFlag 252
    ScrCmd_034
    ScrCmd_061
    End

_04A4:
    ScrCmd_02C 30
    Return

_04A9:
    ScrCmd_24A 0x800C
    GoToIfLt 0x800C, 10, _00A7
    CallIfSet 252, _057A
    CallIfUnset 252, _0505
    SetVar 0x8004, 83
    SetVar 0x8005, 1
    ScrCmd_085 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _056B
    ScrCmd_014 0x7DC
    SetVar 0x40B6, 8
    ClearFlag 252
    ScrCmd_034
    ScrCmd_061
    End

_0505:
    ScrCmd_02C 31
    Return

_050A:
    ScrCmd_24A 0x800C
    GoToIfLt 0x800C, 50, _00A7
    CallIfSet 252, _057A
    CallIfUnset 252, _0566
    SetVar 0x8004, 84
    SetVar 0x8005, 1
    ScrCmd_085 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _056B
    ScrCmd_014 0x7DC
    SetVar 0x40B6, 9
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
    GoToIfEq 0x8004, 5, _05B2
    GoToIfEq 0x8004, 7, _05BE
    GoToIfEq 0x8005, 4, _05CA
    GoTo _05D6

_05B2:
    ApplyMovement 2, _05E4
    WaitMovement
    Return

_05BE:
    ApplyMovement 2, _05F8
    WaitMovement
    Return

_05CA:
    ApplyMovement 2, _060C
    WaitMovement
    Return

_05D6:
    ApplyMovement 2, _0620
    WaitMovement
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
    GoToIfSet 189, _0669
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
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, 0, _070A
    GoToIfEq 0x8008, 1, _0715
    GoToIfEq 0x8008, 2, _0720
    GoToIfEq 0x8008, 3, _072B
    GoToIfEq 0x8008, 4, _0736
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
