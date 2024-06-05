    .include "macros/scrcmd.inc"

    .data

    .long _000E-.-4
    .long _0538-.-4
    .long _0585-.-4
    .short 0xFD13

_000E:
    ScrCmd_049 0x5DC
    ScrCmd_060
    GoToIfSet 214, _0596
    GoTo _0027
    End

_0027:
    GoToIfUnset 167, _0040
    ScrCmd_0CD 0
    ScrCmd_02C 15
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0040:
    ScrCmd_0CD 0
    ScrCmd_02C 0
    ScrCmd_034
    SetFlag 167
    ClearFlag 0x229
    ScrCmd_186 0, 4, 11
    ScrCmd_189 0, 0
    ScrCmd_188 0, 14
    ScrCmd_064 0
    ScrCmd_069 0x8004, 0x8005
    CompareVar 0x8004, 9
    CallIf 1, _0110
    CompareVar 0x8004, 10
    CallIf 1, _0126
    ScrCmd_02C 1
    ScrCmd_02C 2
    ScrCmd_034
    ApplyMovement 0, _04B8
    ApplyMovement 0xFF, _0424
    WaitMovement
    ScrCmd_02C 3
    ScrCmd_034
    SetFlag 0x1AC
    ClearFlag 0x29B
    ScrCmd_186 1, 4, 11
    ScrCmd_189 1, 0
    ScrCmd_188 1, 14
    ScrCmd_064 1
    ScrCmd_069 0x8004, 0x8005
    CompareVar 0x8004, 9
    CallIf 1, _0285
    CompareVar 0x8004, 10
    CallIf 1, _0291
    ScrCmd_02C 4
    ScrCmd_02C 5
    ScrCmd_02C 6
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _019D
    GoToIfEq 0x800C, 1, _013C
    End

_0110:
    ApplyMovement 0, _0488
    WaitMovement
    ApplyMovement 0xFF, _03E4
    WaitMovement
    Return

_0126:
    ApplyMovement 0, _04A0
    WaitMovement
    ApplyMovement 0xFF, _03EC
    WaitMovement
    Return

_013C:
    ScrCmd_02C 10
    ScrCmd_034
    ScrCmd_069 0x8004, 0x8005
    CompareVar 0x8004, 9
    CallIf 1, _0165
    CompareVar 0x8004, 10
    CallIf 1, _0181
    ScrCmd_061
    End

_0165:
    ApplyMovement 0, _04C0
    ApplyMovement 0xFF, _03F4
    ApplyMovement 1, _03CC
    WaitMovement
    Return

_0181:
    ApplyMovement 0, _04CC
    ApplyMovement 0xFF, _040C
    ApplyMovement 1, _03D8
    WaitMovement
    Return

_019D:
    ScrCmd_02C 8
    ScrCmd_034
    ScrCmd_0E5 0x391, 0
    ScrCmd_0EC 0x800C
    GoToIfEq 0x800C, 0, _0393
    Call _01C3
    ScrCmd_061
    End

_01C3:
    ClearFlag 0x1BD
    SetVar 0x4074, 1
    ScrCmd_02C 11
    ScrCmd_034
    ScrCmd_003 15, 0x800C
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_065 1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_069 0x8004, 0x8005
    CompareVar 0x8004, 8
    CallIf 1, _029D
    CompareVar 0x8004, 9
    CallIf 1, _02B1
    CompareVar 0x8004, 10
    CallIf 1, _02FA
    CompareVar 0x8004, 11
    CallIf 1, _0343
    ScrCmd_02C 13
    SetVar 0x8004, 0x1A6
    SetVar 0x8005, 1
    ScrCmd_014 0x7FC
    SetFlag 0x1AC
    ClearFlag 0x1C3
    SetFlag 0x98D
    ScrCmd_02C 14
    ScrCmd_034
    ScrCmd_069 0x8004, 0x8005
    CompareVar 0x8004, 9
    CallIf 1, _0357
    CompareVar 0x8004, 10
    CallIf 1, _036B
    CompareVar 0x8004, 11
    CallIf 1, _037F
    ScrCmd_065 0
    Return

_0285:
    ApplyMovement 1, _039C
    WaitMovement
    Return

_0291:
    ApplyMovement 1, _03B4
    WaitMovement
    Return

_029D:
    ApplyMovement 0xFF, _042C
    ApplyMovement 0, _04D8
    WaitMovement
    Return

_02B1:
    GoToIfEq 0x8005, 4, _02D2
    ApplyMovement 0xFF, _0434
    ApplyMovement 0, _04D8
    WaitMovement
    Return

_02D2:
    ApplyMovement 0xFF, _043C
    ApplyMovement 0, _04D8
    WaitMovement
    Return

    .byte 94
    .byte 0
    .byte 0xFF
    .byte 0
    .byte 90
    .byte 1
    .byte 0
    .byte 0
    .byte 94
    .byte 0
    .byte 0
    .byte 0
    .byte 226
    .byte 1
    .byte 0
    .byte 0
    .byte 95
    .byte 0
    .byte 27
    .byte 0

_02FA:
    GoToIfEq 0x8005, 4, _031B
    ApplyMovement 0xFF, _0454
    ApplyMovement 0, _04E0
    WaitMovement
    Return

_031B:
    ApplyMovement 0xFF, _045C
    ApplyMovement 0, _04E0
    WaitMovement
    Return

    .byte 94
    .byte 0
    .byte 0xFF
    .byte 0
    .byte 49
    .byte 1
    .byte 0
    .byte 0
    .byte 94
    .byte 0
    .byte 0
    .byte 0
    .byte 153
    .byte 1
    .byte 0
    .byte 0
    .byte 95
    .byte 0
    .byte 27
    .byte 0

_0343:
    ApplyMovement 0xFF, _0474
    ApplyMovement 0, _04E8
    WaitMovement
    Return

_0357:
    ApplyMovement 0xFF, _047C
    ApplyMovement 0, _04F0
    WaitMovement
    Return

_036B:
    ApplyMovement 0xFF, _047C
    ApplyMovement 0, _0508
    WaitMovement
    Return

_037F:
    ApplyMovement 0xFF, _047C
    ApplyMovement 0, _0520
    WaitMovement
    Return

_0393:
    ScrCmd_0EB
    ScrCmd_061
    End

    .balign 4, 0
_039C:
    MoveAction_00C 6
    MoveAction_00F
    MoveAction_00C
    MoveAction_00F 5
    MoveAction_020
    EndMovement

    .balign 4, 0
_03B4:
    MoveAction_00C 6
    MoveAction_00F
    MoveAction_00C
    MoveAction_00F 4
    MoveAction_020
    EndMovement

    .balign 4, 0
_03CC:
    MoveAction_00E
    MoveAction_00C
    EndMovement

    .balign 4, 0
_03D8:
    MoveAction_00F
    MoveAction_00C
    EndMovement

    .balign 4, 0
_03E4:
    MoveAction_023
    EndMovement

    .balign 4, 0
_03EC:
    MoveAction_022
    EndMovement

    .balign 4, 0
_03F4:
    MoveAction_03F
    MoveAction_003
    MoveAction_047
    MoveAction_012
    MoveAction_048
    EndMovement

    .balign 4, 0
_040C:
    MoveAction_03F
    MoveAction_002
    MoveAction_047
    MoveAction_013
    MoveAction_048
    EndMovement

    .balign 4, 0
_0424:
    MoveAction_021
    EndMovement

    .balign 4, 0
_042C:
    MoveAction_00F
    EndMovement

    .balign 4, 0
_0434:
    MoveAction_023
    EndMovement

    .balign 4, 0
_043C:
    MoveAction_00C
    MoveAction_023
    EndMovement

    .byte 12
    .byte 0
    .byte 2
    .byte 0
    .byte 35
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_0454:
    MoveAction_022
    EndMovement

    .balign 4, 0
_045C:
    MoveAction_00C
    MoveAction_022
    EndMovement

    .byte 12
    .byte 0
    .byte 2
    .byte 0
    .byte 34
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_0474:
    MoveAction_00E
    EndMovement

    .balign 4, 0
_047C:
    MoveAction_03F
    MoveAction_021
    EndMovement

    .balign 4, 0
_0488:
    MoveAction_00C 6
    MoveAction_00F
    MoveAction_00C
    MoveAction_00F 5
    MoveAction_00C
    EndMovement

    .balign 4, 0
_04A0:
    MoveAction_00C 6
    MoveAction_00F
    MoveAction_00C
    MoveAction_00F 4
    MoveAction_00C
    EndMovement

    .balign 4, 0
_04B8:
    MoveAction_021
    EndMovement

    .balign 4, 0
_04C0:
    MoveAction_03F
    MoveAction_022
    EndMovement

    .balign 4, 0
_04CC:
    MoveAction_03F
    MoveAction_023
    EndMovement

    .balign 4, 0
_04D8:
    MoveAction_022
    EndMovement

    .balign 4, 0
_04E0:
    MoveAction_023
    EndMovement

    .balign 4, 0
_04E8:
    MoveAction_023
    EndMovement

    .balign 4, 0
_04F0:
    MoveAction_00D
    MoveAction_00E 5
    MoveAction_00D
    MoveAction_00E
    MoveAction_00D 6
    EndMovement

    .balign 4, 0
_0508:
    MoveAction_00D
    MoveAction_00E 4
    MoveAction_00D
    MoveAction_00E
    MoveAction_00D 6
    EndMovement

    .balign 4, 0
_0520:
    MoveAction_00D
    MoveAction_00E 5
    MoveAction_00D
    MoveAction_00E
    MoveAction_00D 6
    EndMovement

_0538:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 7
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _057A
    ScrCmd_02C 8
    ScrCmd_034
    ScrCmd_0E5 0x391, 0
    ScrCmd_0EC 0x800C
    GoToIfEq 0x800C, 0, _0393
    Call _01C3
    ScrCmd_061
    End

_057A:
    ScrCmd_02C 9
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0585:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 12
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0596:
    GoToIfSet 0x124, _0027
    SetFlag 0x124
    ClearFlag 0x1A6
    ScrCmd_186 2, 4, 11
    ScrCmd_064 2
    ScrCmd_069 0x8004, 0x8005
    CompareVar 0x8004, 9
    CallIf 1, _06CF
    CompareVar 0x8004, 10
    CallIf 1, _06E5
    ScrCmd_02C 16
    ScrCmd_069 0x8004, 0x8005
    CompareVar 0x8004, 9
    CallIf 1, _0713
    CompareVar 0x8004, 10
    CallIf 1, _071F
    ScrCmd_02C 17
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _0753
    ScrCmd_034
    ApplyMovement 2, _07F0
    ApplyMovement 0xFF, _0858
    WaitMovement
    ScrCmd_003 15, 0x800C
    ScrCmd_02C 18
    ScrCmd_069 0x8004, 0x8005
    CompareVar 0x8004, 9
    CallIf 1, _0713
    CompareVar 0x8004, 10
    CallIf 1, _071F
    CompareVar 0x8004, 9
    CallIf 1, _06FB
    CompareVar 0x8004, 10
    CallIf 1, _0707
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _0753
    ScrCmd_02C 19
    ScrCmd_034
    ApplyMovement 0xFF, _0864
    ApplyMovement 2, _07F8
    WaitMovement
    ScrCmd_02C 20
    ScrCmd_034
    ScrCmd_069 0x8004, 0x8005
    CompareVar 0x8004, 9
    CallIf 1, _072B
    CompareVar 0x8004, 10
    CallIf 1, _073F
    ScrCmd_02C 21
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _0753
    ScrCmd_02C 22
    GoTo _075E
    End

_06CF:
    ApplyMovement 2, _07B0
    WaitMovement
    ApplyMovement 0xFF, _0848
    WaitMovement
    Return

_06E5:
    ApplyMovement 2, _07C8
    WaitMovement
    ApplyMovement 0xFF, _0850
    WaitMovement
    Return

_06FB:
    ApplyMovement 0xFF, _0848
    WaitMovement
    Return

_0707:
    ApplyMovement 0xFF, _0850
    WaitMovement
    Return

_0713:
    ApplyMovement 2, _07E0
    WaitMovement
    Return

_071F:
    ApplyMovement 2, _07E8
    WaitMovement
    Return

_072B:
    ApplyMovement 2, _0800
    ApplyMovement 0xFF, _0870
    WaitMovement
    Return

_073F:
    ApplyMovement 2, _080C
    ApplyMovement 0xFF, _087C
    WaitMovement
    Return

_0753:
    ScrCmd_02C 23
    GoTo _075E
    End

_075E:
    ScrCmd_034
    ScrCmd_069 0x8004, 0x8005
    CompareVar 0x8004, 9
    CallIf 1, _0788
    CompareVar 0x8004, 10
    CallIf 1, _079C
    ScrCmd_065 2
    ScrCmd_061
    End

_0788:
    ApplyMovement 2, _0818
    ApplyMovement 0xFF, _0888
    WaitMovement
    Return

_079C:
    ApplyMovement 2, _0830
    ApplyMovement 0xFF, _0888
    WaitMovement
    Return

    .balign 4, 0
_07B0:
    MoveAction_00C 6
    MoveAction_00F
    MoveAction_00C
    MoveAction_00F 5
    MoveAction_00C
    EndMovement

    .balign 4, 0
_07C8:
    MoveAction_00C 6
    MoveAction_00F
    MoveAction_00C
    MoveAction_00F 4
    MoveAction_00C
    EndMovement

    .balign 4, 0
_07E0:
    MoveAction_022
    EndMovement

    .balign 4, 0
_07E8:
    MoveAction_023
    EndMovement

    .balign 4, 0
_07F0:
    MoveAction_020
    EndMovement

    .balign 4, 0
_07F8:
    MoveAction_00D
    EndMovement

    .balign 4, 0
_0800:
    MoveAction_00C
    MoveAction_022
    EndMovement

    .balign 4, 0
_080C:
    MoveAction_00C
    MoveAction_023
    EndMovement

    .balign 4, 0
_0818:
    MoveAction_00D
    MoveAction_00E 5
    MoveAction_00D
    MoveAction_00E
    MoveAction_00D 6
    EndMovement

    .balign 4, 0
_0830:
    MoveAction_00D
    MoveAction_00E 4
    MoveAction_00D
    MoveAction_00E
    MoveAction_00D 6
    EndMovement

    .balign 4, 0
_0848:
    MoveAction_023
    EndMovement

    .balign 4, 0
_0850:
    MoveAction_022
    EndMovement

    .balign 4, 0
_0858:
    MoveAction_03F
    MoveAction_020
    EndMovement

    .balign 4, 0
_0864:
    MoveAction_03F
    MoveAction_021
    EndMovement

    .balign 4, 0
_0870:
    MoveAction_03F
    MoveAction_023
    EndMovement

    .balign 4, 0
_087C:
    MoveAction_03F
    MoveAction_022
    EndMovement

    .balign 4, 0
_0888:
    MoveAction_03F 2
    MoveAction_002
    EndMovement
