    .include "macros/scrcmd.inc"

    .data

    ScriptEntry _002E
    ScriptEntry _0064
    ScriptEntry _017C
    ScriptEntry _0214
    ScriptEntry _08E0
    ScriptEntry _0948
    ScriptEntry _095E
    ScriptEntry _09D8
    ScriptEntry _09E9
    ScriptEntry _09FA
    ScriptEntry _00E0
    .short 0xFD13

_002E:
    CallIfEq 0x40A4, 3, _0048
    CallIfSet 143, _005E
    End

_0048:
    ScrCmd_186 0, 2, 4
    ScrCmd_189 0, 0
    ScrCmd_188 0, 14
    Return

_005E:
    SetFlag 0x1F1
    Return

_0064:
    ScrCmd_060
    ApplyMovement 0xFF, _00A4
    ApplyMovement 0, _00B0
    WaitMovement
    SetFlag 135
    ScrCmd_0CD 0
    ScrCmd_0CE 1
    ScrCmd_02C 0
    ScrCmd_034
    ScrCmd_003 15, 0x800C
    ApplyMovement 0, _00CC
    WaitMovement
    SetVar 0x40A4, 1
    ScrCmd_061
    End

    .balign 4, 0
_00A4:
    MoveAction_03E
    MoveAction_021
    EndMovement

    .balign 4, 0
_00B0:
    MoveAction_020
    MoveAction_04B
    MoveAction_03F
    MoveAction_00C
    MoveAction_00F 3
    MoveAction_00C 3
    EndMovement

    .balign 4, 0
_00CC:
    MoveAction_00D 2
    MoveAction_00E 3
    MoveAction_00D 2
    MoveAction_020
    EndMovement

_00E0:
    ScrCmd_060
    SetVar 0x410F, 2
    GoToIfSet 0x15C, _014B
    GoToIfUnset 0x15D, _0110
    ScrCmd_22D 2, 0x800C
    GoToIfEq 0x800C, 0, _014B
_0110:
    ApplyMovement 0xFF, _0164
    ApplyMovement 0, _0170
    WaitMovement
    ScrCmd_0CD 0
    ScrCmd_0CE 1
    ScrCmd_22D 2, 0x800C
    CallIfEq 0x800C, 1, _014F
    CallIfEq 0x800C, 0, _0158
    ScrCmd_031
    ScrCmd_034
_014B:
    ScrCmd_061
    End

_014F:
    SetFlag 0x15C
    ScrCmd_02C 35
    Return

_0158:
    SetFlag 0x15D
    ScrCmd_02C 36
    Return

    .balign 4, 0
_0164:
    MoveAction_03E
    MoveAction_021
    EndMovement

    .balign 4, 0
_0170:
    MoveAction_020
    MoveAction_04B
    EndMovement

_017C:
    ScrCmd_060
    ScrCmd_003 30, 0x800C
    ApplyMovement 0, _01D4
    ApplyMovement 0xFF, _01F8
    WaitMovement
    ScrCmd_003 30, 0x800C
    ScrCmd_0CE 0
    ScrCmd_0CD 1
    ScrCmd_02C 6
    ScrCmd_034
    ScrCmd_003 30, 0x800C
    ScrCmd_0CD 0
    ScrCmd_02C 7
    ScrCmd_15A
    ScrCmd_0CD 0
    ScrCmd_02C 8
    ScrCmd_04E 0x486
    ScrCmd_04F
    ScrCmd_02C 9
    ScrCmd_031
    ScrCmd_034
    SetVar 0x40A4, 4
    ScrCmd_061
    End

    .balign 4, 0
_01D4:
    MoveAction_00E
    MoveAction_000
    MoveAction_03F 2
    MoveAction_00F 3
    MoveAction_00D 2
    MoveAction_00F 3
    MoveAction_00D 2
    MoveAction_022
    EndMovement

    .balign 4, 0
_01F8:
    MoveAction_03F 4
    MoveAction_023
    MoveAction_03F 4
    MoveAction_00F 3
    MoveAction_00D 2
    MoveAction_00F
    EndMovement

_0214:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    GoToIfSet 2, _02AF
    GoToIfGe 0x40A4, 7, _0792
    GoToIfEq 0x40A4, 6, _035E
    GoToIfSet 144, _036C
    GoToIfGe 0x40A4, 5, _0788
    GoToIfGe 0x40A4, 4, _0711
    GoToIfSet 248, _075A
    GoToIfGe 0x40A4, 2, _0768
    GoToIfSet 135, _077A
    SetFlag 135
    ScrCmd_0CD 0
    ScrCmd_0CE 1
    ScrCmd_02C 0
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .byte 205
    .byte 0
    .byte 0
    .byte 206
    .byte 0
    .byte 1
    .byte 44
    .byte 0
    .byte 35
    .byte 49
    .byte 0
    .byte 52
    .byte 0
    .byte 97
    .byte 0
    .byte 2
    .byte 0

_02AF:
    GoToIfGe 0x40B2, 2, _0300
    GoTo _02C4
    End

_02C4:
    ScrCmd_1B7 0x800C, 4
    GoToIfEq 0x800C, 0, _031B
    GoToIfEq 0x800C, 1, _0329
    GoToIfEq 0x800C, 2, _0337
    GoToIfEq 0x800C, 3, _0345
    End

_0300:
    GoToIfGe 0x40AA, 2, _02C4
    ScrCmd_0CD 0
    ScrCmd_02C 41
    GoTo _0356
    End

_031B:
    ScrCmd_0CD 0
    ScrCmd_02C 37
    GoTo _0356
    End

_0329:
    ScrCmd_0CD 0
    ScrCmd_02C 38
    GoTo _0356
    End

_0337:
    ScrCmd_0CD 0
    ScrCmd_02C 39
    GoTo _0356
    End

_0345:
    ScrCmd_0CD 0
    ScrCmd_0CE 1
    ScrCmd_02C 40
    GoTo _0356
    End

_0356:
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_035E:
    ScrCmd_0CD 0
    ScrCmd_02C 28
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_036C:
    Call _0688
    ScrCmd_0CD 0
    ScrCmd_02C 15
    SetVar 0x8004, 0x1B1
    SetVar 0x8005, 1
    ScrCmd_014 0x7FC
    ScrCmd_1CC
    ScrCmd_02C 16
    ScrCmd_1BD 0x8007
    GoToIfEq 0x8007, 1, _03A6
    GoTo _03B8
    End

_03A6:
    ApplyMovement 0, _079C
    WaitMovement
    GoTo _03CA
    End

_03B8:
    ApplyMovement 0, _07A4
    WaitMovement
    GoTo _03CA
    End

_03CA:
    ScrCmd_02C 17
    ScrCmd_068
    ScrCmd_0CD 0
    ScrCmd_02C 18
    ScrCmd_034
    ScrCmd_049 0x605
    ClearFlag 0x1F1
    ScrCmd_064 1
    ScrCmd_04B 0x605
    ApplyMovement 0, _07B4
    ApplyMovement 0xFF, _0864
    WaitMovement
    ApplyMovement 1, _07FC
    WaitMovement
    CallIfEq 0x8007, 0, _0465
    ScrCmd_0CE 1
    ScrCmd_02C 19
    ApplyMovement 0, _07C0
    WaitMovement
    ScrCmd_02C 20
    ScrCmd_0CE 1
    ScrCmd_02C 21
    ScrCmd_0CD 0
    ScrCmd_02C 22
    GoToIfEq 0x8007, 0, _0471
    GoToIfEq 0x8007, 1, _048B
    GoToIfEq 0x8007, 2, _04A5
    GoToIfEq 0x8007, 3, _04BF
    End

_0465:
    ApplyMovement 0xFF, _086C
    WaitMovement
    Return

_0471:
    ApplyMovement 0, _07C8
    ApplyMovement 0xFF, _0874
    WaitMovement
    GoTo _04D9
    End

_048B:
    ApplyMovement 0, _07D0
    ApplyMovement 0xFF, _087C
    WaitMovement
    GoTo _04D9
    End

_04A5:
    ApplyMovement 0, _07D8
    ApplyMovement 0xFF, _0884
    WaitMovement
    GoTo _04D9
    End

_04BF:
    ApplyMovement 0, _07E0
    ApplyMovement 0xFF, _088C
    WaitMovement
    GoTo _04D9
    End

_04D9:
    ScrCmd_02C 23
    ScrCmd_034
    GoToIfEq 0x8007, 0, _0514
    GoToIfEq 0x8007, 1, _052E
    GoToIfEq 0x8007, 2, _0548
    GoToIfEq 0x8007, 3, _0562
    End

_0514:
    ApplyMovement 1, _0808
    ApplyMovement 0xFF, _0894
    WaitMovement
    GoTo _057C
    End

_052E:
    ApplyMovement 1, _0810
    ApplyMovement 0xFF, _089C
    WaitMovement
    GoTo _057C
    End

_0548:
    ApplyMovement 1, _081C
    ApplyMovement 0xFF, _08A8
    WaitMovement
    GoTo _057C
    End

_0562:
    ApplyMovement 1, _0828
    ApplyMovement 0xFF, _08B4
    WaitMovement
    GoTo _057C
    End

_057C:
    ScrCmd_0CD 0
    ScrCmd_0CE 1
    ScrCmd_14D 0x800C
    GoToIfEq 0x800C, 0, _059B
    GoTo _05A6
    End

_059B:
    ScrCmd_02C 24
    GoTo _05B1
    End

_05A6:
    ScrCmd_02C 25
    GoTo _05B1
    End

_05B1:
    SetVar 0x8004, 0x1CB
    SetVar 0x8005, 1
    ScrCmd_014 0x7FC
    SetFlag 143
    ScrCmd_02C 27
    ScrCmd_0CE 1
    ScrCmd_02C 26
    ScrCmd_034
    GoToIfEq 0x8007, 0, _0606
    GoToIfEq 0x8007, 1, _0620
    GoToIfEq 0x8007, 2, _0642
    GoToIfEq 0x8007, 3, _065C
    End

_0606:
    ApplyMovement 1, _0830
    ApplyMovement 0xFF, _08BC
    WaitMovement
    GoTo _0676
    End

_0620:
    ApplyMovement 1, _083C
    ApplyMovement 0xFF, _08C4
    ApplyMovement 0, _07E8
    WaitMovement
    GoTo _0676
    End

_0642:
    ApplyMovement 1, _0848
    ApplyMovement 0, _07F4
    WaitMovement
    GoTo _0676
    End

_065C:
    ApplyMovement 1, _0858
    ApplyMovement 0xFF, _08D8
    WaitMovement
    GoTo _0676
    End

_0676:
    ScrCmd_049 0x603
    ScrCmd_065 1
    SetVar 0x40A4, 6
    ScrCmd_061
    End

_0688:
    ScrCmd_0CD 0
    ScrCmd_1B6 0x800C
    CallIfEq 0x800C, 0, _06F8
    CallIfEq 0x800C, 1, _06FD
    CallIfEq 0x800C, 2, _0702
    CallIfEq 0x800C, 3, _0707
    CallIfEq 0x800C, 4, _070C
    ScrCmd_034
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_04E 0x48E
    ScrCmd_04F
    ScrCmd_14E
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    SetFlag 2
    Return

_06F8:
    ScrCmd_02C 11
    Return

_06FD:
    ScrCmd_02C 12
    Return

_0702:
    ScrCmd_02C 12
    Return

_0707:
    ScrCmd_02C 13
    Return

_070C:
    ScrCmd_02C 14
    Return

_0711:
    ScrCmd_02C 10
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .byte 206
    .byte 0
    .byte 0
    .byte 205
    .byte 0
    .byte 1
    .byte 44
    .byte 0
    .byte 6
    .byte 52
    .byte 0
    .byte 3
    .byte 0
    .byte 30
    .byte 0
    .byte 12
    .byte 128
    .byte 205
    .byte 0
    .byte 0
    .byte 44
    .byte 0
    .byte 7
    .byte 95
    .byte 1
    .byte 123
    .byte 0
    .byte 17
    .byte 0
    .byte 1
    .byte 0
    .byte 12
    .byte 128
    .byte 205
    .byte 0
    .byte 0
    .byte 44
    .byte 0
    .byte 8
    .byte 78
    .byte 0
    .byte 134
    .byte 4
    .byte 79
    .byte 0
    .byte 44
    .byte 0
    .byte 9
    .byte 49
    .byte 0
    .byte 52
    .byte 0
    .byte 40
    .byte 0
    .byte 164
    .byte 64
    .byte 4
    .byte 0
    .byte 97
    .byte 0
    .byte 2
    .byte 0

_075A:
    ScrCmd_0CE 0
    ScrCmd_02C 5
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0768:
    SetFlag 248
    ScrCmd_0CD 0
    ScrCmd_02C 2
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_077A:
    ScrCmd_0CE 0
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0788:
    Call _0688
    ScrCmd_061
    End

_0792:
    Call _0688
    ScrCmd_061
    End

    .balign 4, 0
_079C:
    MoveAction_021
    EndMovement

    .balign 4, 0
_07A4:
    MoveAction_020
    EndMovement

    .byte 34
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_07B4:
    MoveAction_021
    MoveAction_04B
    EndMovement

    .balign 4, 0
_07C0:
    MoveAction_021
    EndMovement

    .balign 4, 0
_07C8:
    MoveAction_021
    EndMovement

    .balign 4, 0
_07D0:
    MoveAction_020
    EndMovement

    .balign 4, 0
_07D8:
    MoveAction_023
    EndMovement

    .balign 4, 0
_07E0:
    MoveAction_022
    EndMovement

    .balign 4, 0
_07E8:
    MoveAction_03F
    MoveAction_021
    EndMovement

    .balign 4, 0
_07F4:
    MoveAction_021
    EndMovement

    .balign 4, 0
_07FC:
    MoveAction_00C
    MoveAction_023
    EndMovement

    .balign 4, 0
_0808:
    MoveAction_023
    EndMovement

    .balign 4, 0
_0810:
    MoveAction_00C 2
    MoveAction_023
    EndMovement

    .balign 4, 0
_081C:
    MoveAction_00F 2
    MoveAction_020
    EndMovement

    .balign 4, 0
_0828:
    MoveAction_020
    EndMovement

    .balign 4, 0
_0830:
    MoveAction_00D
    MoveAction_021
    EndMovement

    .balign 4, 0
_083C:
    MoveAction_00D 3
    MoveAction_021
    EndMovement

    .balign 4, 0
_0848:
    MoveAction_00E 2
    MoveAction_00D
    MoveAction_021
    EndMovement

    .balign 4, 0
_0858:
    MoveAction_00D
    MoveAction_021
    EndMovement

    .balign 4, 0
_0864:
    MoveAction_021
    EndMovement

    .balign 4, 0
_086C:
    MoveAction_022
    EndMovement

    .balign 4, 0
_0874:
    MoveAction_020
    EndMovement

    .balign 4, 0
_087C:
    MoveAction_021
    EndMovement

    .balign 4, 0
_0884:
    MoveAction_022
    EndMovement

    .balign 4, 0
_088C:
    MoveAction_023
    EndMovement

    .balign 4, 0
_0894:
    MoveAction_022
    EndMovement

    .balign 4, 0
_089C:
    MoveAction_03F 2
    MoveAction_022
    EndMovement

    .balign 4, 0
_08A8:
    MoveAction_03F 2
    MoveAction_021
    EndMovement

    .balign 4, 0
_08B4:
    MoveAction_021
    EndMovement

    .balign 4, 0
_08BC:
    MoveAction_021
    EndMovement

    .balign 4, 0
_08C4:
    MoveAction_021
    EndMovement

    .byte 63
    .byte 0
    .byte 2
    .byte 0
    .byte 33
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_08D8:
    MoveAction_021
    EndMovement

_08E0:
    ScrCmd_060
    GoTo _08EA
    End

_08EA:
    ApplyMovement 0xFF, _0918
    ApplyMovement 0, _0930
    WaitMovement
    GoTo _0904
    End

_0904:
    SetVar 0x40A4, 2
    ScrCmd_0CD 0
    ScrCmd_02C 4
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .balign 4, 0
_0918:
    MoveAction_03F 2
    MoveAction_020
    EndMovement

    .byte 62
    .byte 0
    .byte 2
    .byte 0
    .byte 32
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_0930:
    MoveAction_021
    EndMovement

    .byte 33
    .byte 0
    .byte 1
    .byte 0
    .byte 14
    .byte 0
    .byte 2
    .byte 0
    .byte 13
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

_0948:
    ScrCmd_0CE 1
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 26
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_095E:
    ScrCmd_1B6 0x800C
    GoToIfEq 0x800C, 0, _09A5
    GoToIfEq 0x800C, 1, _09B6
    GoToIfEq 0x800C, 2, _09B6
    GoToIfEq 0x800C, 3, _09C7
    GoToIfEq 0x800C, 4, _09C7
    End

_09A5:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 29
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_09B6:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 30
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_09C7:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 31
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_09D8:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 32
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_09E9:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 33
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_09FA:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 34
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .byte 0
