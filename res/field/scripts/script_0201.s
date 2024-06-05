    .include "macros/scrcmd.inc"

    .data

    .long _00D8-.-4
    .long _049C-.-4
    .long _04AF-.-4
    .long _04C2-.-4
    .long _04D5-.-4
    .long _04E8-.-4
    .long _050E-.-4
    .long _0521-.-4
    .long _0585-.-4
    .long _059C-.-4
    .long _05B3-.-4
    .long _05CA-.-4
    .long _04FB-.-4
    .long _06F0-.-4
    .long _0066-.-4
    .long _07DC-.-4
    .long _07EF-.-4
    .long _0802-.-4
    .long _081F-.-4
    .long _0864-.-4
    .long _0877-.-4
    .long _088A-.-4
    .long _089D-.-4
    .long _08B0-.-4
    .long _083C-.-4
    .short 0xFD13

_0066:
    GoToIfEq 0x4081, 1, _0082
    GoToIfGe 0x409E, 1, _0098
    End

_0082:
    ScrCmd_186 7, 0x28F, 0x1AA
    ScrCmd_188 7, 14
    ScrCmd_189 7, 0
    End

_0098:
    SetFlag 0x1D3
    End

    .byte 52
    .byte 2
    .byte 0
    .byte 64
    .byte 17
    .byte 0
    .byte 0
    .byte 64
    .byte 0
    .byte 0
    .byte 28
    .byte 0
    .byte 1
    .byte 15
    .byte 0
    .byte 0
    .byte 0
    .byte 17
    .byte 0
    .byte 0
    .byte 64
    .byte 6
    .byte 0
    .byte 28
    .byte 0
    .byte 1
    .byte 2
    .byte 0
    .byte 0
    .byte 0
    .byte 2
    .byte 0
    .byte 134
    .byte 1
    .byte 7
    .byte 0
    .byte 146
    .byte 2
    .byte 174
    .byte 1
    .byte 136
    .byte 1
    .byte 7
    .byte 0
    .byte 15
    .byte 0
    .byte 137
    .byte 1
    .byte 7
    .byte 0
    .byte 1
    .byte 0
    .byte 31
    .byte 0
    .byte 211
    .byte 1
    .byte 2
    .byte 0

_00D8:
    ScrCmd_060
    ScrCmd_32D
    ApplyMovement 7, _0340
    WaitMovement
    ApplyMovement 0xFF, _03DC
    WaitMovement
    ScrCmd_0CE 0
    ScrCmd_0CD 1
    ScrCmd_02C 0
    ScrCmd_034
    ScrCmd_014 0x800
    ApplyMovement 0xFF, _03E4
    ApplyMovement 7, _0354
    WaitMovement
    ScrCmd_014 0x801
    SetVar 0x4081, 1
    ScrCmd_32E
    ScrCmd_02C 1
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _02EE
    Call _014E
    GoToIfEq 0x800C, 0, _0306
    Call _0198
    ScrCmd_061
    End

_014E:
    ScrCmd_0CE 0
    ScrCmd_02C 2
    ScrCmd_034
    ApplyMovement 0xFF, _03F8
    ApplyMovement 7, _0370
    WaitMovement
    ApplyMovement 25, _0448
    WaitMovement
    ScrCmd_02C 7
    ApplyMovement 24, _0458
    WaitMovement
    ScrCmd_02C 8
    ScrCmd_034
    Call _030C
    ScrCmd_2A0 0x8004, 0x399, 0x39A
    ScrCmd_0EC 0x800C
    Return

_0198:
    ApplyMovement 24, _0460
    WaitMovement
    ScrCmd_02C 9
    ScrCmd_02C 10
    ApplyMovement 24, _0468
    WaitMovement
    ScrCmd_02C 11
    ScrCmd_034
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_065 25
    ScrCmd_065 24
    ScrCmd_065 29
    ScrCmd_065 28
    ScrCmd_065 27
    ScrCmd_065 30
    ScrCmd_065 31
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ApplyMovement 7, _0378
    ApplyMovement 0xFF, _0400
    WaitMovement
    ScrCmd_0CE 0
    ScrCmd_02C 12
    ClearFlag 0x1E3
    ScrCmd_064 26
    ScrCmd_04A 0x5DC
    ScrCmd_049 0x602
    ScrCmd_02B 13
    ApplyMovement 26, _03B4
    ApplyMovement 7, _0380
    ApplyMovement 0xFF, _0408
    WaitMovement
    ApplyMovement 26, _03BC
    WaitMovement
    ScrCmd_02C 14
    ScrCmd_034
    ScrCmd_0CE 0
    ScrCmd_02C 15
    ScrCmd_034
    ApplyMovement 7, _039C
    WaitMovement
    ScrCmd_0CE 0
    ScrCmd_0CD 1
    ScrCmd_02C 16
    ScrCmd_02C 17
    ScrCmd_034
    ApplyMovement 26, _03D4
    WaitMovement
    ScrCmd_049 0x603
    ScrCmd_065 26
    ScrCmd_04B 0x603
    ScrCmd_0CE 0
    ScrCmd_02C 18
    ScrCmd_02C 19
    ScrCmd_02C 20
    ScrCmd_034
    ApplyMovement 7, _03A4
    ApplyMovement 0xFF, _0428
    WaitMovement
    ScrCmd_065 7
    ApplyMovement 8, _0478
    ApplyMovement 0xFF, _043C
    WaitMovement
    ScrCmd_02C 22
    ScrCmd_034
    ApplyMovement 8, _0484
    ApplyMovement 0xFF, _041C
    WaitMovement
    ScrCmd_065 8
    ScrCmd_22D 2, 0x800C
    CompareVar 0x800C, 1
    CallIf 1, _02E0
    SetVar 0x4081, 2
    Return

_02E0:
    ScrCmd_065 22
    ScrCmd_065 23
    SetFlag 0x294
    Return

_02EE:
    ApplyMovement 7, _03AC
    WaitMovement
    ScrCmd_0CE 0
    ScrCmd_02C 3
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0306:
    ScrCmd_0EB
    ScrCmd_061
    End

_030C:
    ScrCmd_0DE 0x800C
    SetVar 0x8004, 0x39D
    GoToIfEq 0x800C, 0x186, _033E
    SetVar 0x8004, 0x39C
    GoToIfEq 0x800C, 0x183, _033E
    SetVar 0x8004, 0x39B
    Return

_033E:
    Return

    .balign 4, 0
_0340:
    MoveAction_022
    MoveAction_04B
    EndMovement

    .byte 14
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_0354:
    MoveAction_00F 17
    MoveAction_00C 2
    MoveAction_00F 9
    MoveAction_00C 6
    MoveAction_00F
    MoveAction_020
    EndMovement

    .balign 4, 0
_0370:
    MoveAction_00C
    EndMovement

    .balign 4, 0
_0378:
    MoveAction_026
    EndMovement

    .balign 4, 0
_0380:
    MoveAction_000
    MoveAction_047
    MoveAction_011 2
    MoveAction_048
    EndMovement

    .byte 75
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_039C:
    MoveAction_010 2
    EndMovement

    .balign 4, 0
_03A4:
    MoveAction_011 8
    EndMovement

    .balign 4, 0
_03AC:
    MoveAction_026
    EndMovement

    .balign 4, 0
_03B4:
    MoveAction_011
    EndMovement

    .balign 4, 0
_03BC:
    MoveAction_022
    MoveAction_03F
    MoveAction_023
    MoveAction_03F
    MoveAction_021
    EndMovement

    .balign 4, 0
_03D4:
    MoveAction_010
    EndMovement

    .balign 4, 0
_03DC:
    MoveAction_00F 4
    EndMovement

    .balign 4, 0
_03E4:
    MoveAction_00F 18
    MoveAction_00C 2
    MoveAction_00F 9
    MoveAction_00C 6
    EndMovement

    .balign 4, 0
_03F8:
    MoveAction_00C
    EndMovement

    .balign 4, 0
_0400:
    MoveAction_023
    EndMovement

    .balign 4, 0
_0408:
    MoveAction_03F
    MoveAction_025
    MoveAction_03E
    MoveAction_024
    EndMovement

    .balign 4, 0
_041C:
    MoveAction_03F
    MoveAction_021
    EndMovement

    .balign 4, 0
_0428:
    MoveAction_021
    EndMovement

    .byte 63
    .byte 0
    .byte 1
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
_043C:
    MoveAction_03F 2
    MoveAction_023
    EndMovement

    .balign 4, 0
_0448:
    MoveAction_021
    EndMovement

    .balign 4, 0
_0450:
    MoveAction_001
    EndMovement

    .balign 4, 0
_0458:
    MoveAction_021
    EndMovement

    .balign 4, 0
_0460:
    MoveAction_022
    EndMovement

    .balign 4, 0
_0468:
    MoveAction_021
    EndMovement

    .balign 4, 0
_0470:
    MoveAction_001
    EndMovement

    .balign 4, 0
_0478:
    MoveAction_00C
    MoveAction_00E 2
    EndMovement

    .balign 4, 0
_0484:
    MoveAction_00D 8
    EndMovement

    .byte 34
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 15
    .byte 0
    .byte 10
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

_049C:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 31
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_04AF:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 33
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_04C2:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 34
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_04D5:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 35
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_04E8:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 36
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_04FB:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 37
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_050E:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 41
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0521:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_0D1 0, 0x1BF
    GoToIfSet 107, _057A
    ScrCmd_02C 42
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _056F
    ScrCmd_02C 43
    SetVar 0x8004, 0x1BF
    SetVar 0x8005, 1
    ScrCmd_014 0x7FC
    SetFlag 107
    ScrCmd_02C 44
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_056F:
    ScrCmd_02C 45
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_057A:
    ScrCmd_02C 46
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0585:
    ScrCmd_036 47, 0, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    End

_059C:
    ScrCmd_036 48, 1, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    End

_05B3:
    ScrCmd_036 49, 1, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    End

_05CA:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_068
    ScrCmd_1BD 0x8004
    ScrCmd_02C 38
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _0606
    GoToIfEq 0x800C, 1, _05FB
    End

_05FB:
    ScrCmd_02C 40
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0606:
    ScrCmd_02C 39
    ScrCmd_034
    Call _0646
    CompareVar 0x8004, 1
    CallIf 1, _0660
    CompareVar 0x8004, 3
    CallIf 1, _067A
    CompareVar 0x8004, 2
    CallIf 1, _0694
    ScrCmd_23D 1, 0, 165, 0x164, 246
    ScrCmd_061
    End

_0646:
    ApplyMovement 18, _06B0
    WaitMovement
    ScrCmd_049 0x603
    ApplyMovement 18, _06BC
    WaitMovement
    Return

_0660:
    ApplyMovement 0xFF, _06C4
    WaitMovement
    ScrCmd_049 0x603
    ApplyMovement 0xFF, _06BC
    WaitMovement
    Return

_067A:
    ApplyMovement 0xFF, _06D0
    WaitMovement
    ScrCmd_049 0x603
    ApplyMovement 0xFF, _06BC
    WaitMovement
    Return

_0694:
    ApplyMovement 0xFF, _06E0
    WaitMovement
    ScrCmd_049 0x603
    ApplyMovement 0xFF, _06BC
    WaitMovement
    Return

    .balign 4, 0
_06B0:
    MoveAction_001
    MoveAction_040
    EndMovement

    .balign 4, 0
_06BC:
    MoveAction_045
    EndMovement

    .balign 4, 0
_06C4:
    MoveAction_00D
    MoveAction_040
    EndMovement

    .balign 4, 0
_06D0:
    MoveAction_00F
    MoveAction_001
    MoveAction_040
    EndMovement

    .balign 4, 0
_06E0:
    MoveAction_00E
    MoveAction_001
    MoveAction_040
    EndMovement

_06F0:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ApplyMovement 7, _07A0
    WaitMovement
    ScrCmd_1BD 0x8004
    CompareVar 0x8004, 3
    CallIf 1, _076E
    CompareVar 0x8004, 2
    CallIf 1, _077A
    CompareVar 0x8004, 1
    CallIf 1, _0786
    CompareVar 0x8004, 0
    CallIf 1, _0792
    ScrCmd_0CE 0
    ScrCmd_02C 4
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _02EE
    Call _014E
    GoToIfEq 0x800C, 0, _0306
    Call _0198
    ScrCmd_061
    End

_076E:
    ApplyMovement 0xFF, _07A8
    WaitMovement
    Return

_077A:
    ApplyMovement 0xFF, _07B0
    WaitMovement
    Return

_0786:
    ApplyMovement 0xFF, _07C0
    WaitMovement
    Return

_0792:
    ApplyMovement 0xFF, _07D0
    WaitMovement
    Return

    .balign 4, 0
_07A0:
    MoveAction_020
    EndMovement

    .balign 4, 0
_07A8:
    MoveAction_020
    EndMovement

    .balign 4, 0
_07B0:
    MoveAction_00D
    MoveAction_00E 2
    MoveAction_00C
    EndMovement

    .balign 4, 0
_07C0:
    MoveAction_00E
    MoveAction_00D
    MoveAction_020
    EndMovement

    .balign 4, 0
_07D0:
    MoveAction_00E
    MoveAction_00C
    EndMovement

_07DC:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 29
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_07EF:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 30
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0802:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 5
    ScrCmd_031
    ApplyMovement 25, _0450
    WaitMovement
    ScrCmd_034
    ScrCmd_061
    End

_081F:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 6
    ScrCmd_031
    ApplyMovement 24, _0470
    WaitMovement
    ScrCmd_034
    ScrCmd_061
    End

_083C:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 21
    ScrCmd_031
    ApplyMovement 8, _085C
    WaitMovement
    ScrCmd_034
    ScrCmd_061
    End

    .balign 4, 0
_085C:
    MoveAction_022
    EndMovement

_0864:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 24
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0877:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 25
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_088A:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 26
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_089D:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 27
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_08B0:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 28
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .byte 0
