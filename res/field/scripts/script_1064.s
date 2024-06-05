    .include "macros/scrcmd.inc"

    .data

    .long _003E-.-4
    .long _01AE-.-4
    .long _008C-.-4
    .long _01AC-.-4
    .long _04F0-.-4
    .long _0544-.-4
    .long _0592-.-4
    .long _0594-.-4
    .long _05A5-.-4
    .long _05B6-.-4
    .long _05C7-.-4
    .long _05D8-.-4
    .long _05EC-.-4
    .long _05FD-.-4
    .long _0114-.-4
    .short 0xFD13

_003E:
    CallIfEq 0x40A6, 2, _005A
    CallIfEq 0x40A6, 3, _005A
    End

_005A:
    ClearFlag 0x198
    ScrCmd_186 0, 7, 14
    ScrCmd_189 0, 1
    ScrCmd_188 0, 15
    ClearFlag 0x199
    ScrCmd_186 3, 6, 14
    ScrCmd_189 3, 1
    ScrCmd_188 3, 15
    Return

_008C:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    Call _08A0
    GoToIfEq 0x8006, 1, _0106
    GoTo _00B7
    End

_00AF:
    SetVar 0x40AA, 3
    Return

_00B7:
    ScrCmd_22D 2, 0x800C
    GoToIfEq 0x800C, 1, _07AE
    GoToIfUnset 0x9BA, _00E5
    ScrCmd_1E8 0x800C
    GoToIfEq 0x800C, 1, _060E
_00E5:
    GoToIfGe 0x4071, 2, _0100
    ScrCmd_0CD 0
    ScrCmd_02C 18
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0100:
    ScrCmd_014 0x26DE
    End

_0106:
    ScrCmd_0CD 0
    ScrCmd_02C 55
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0114:
    ScrCmd_060
    CallIfEq 0x40AA, 2, _00AF
    ScrCmd_0CD 1
    ScrCmd_02C 51
    ScrCmd_034
    ApplyMovement 3, _019C
    WaitMovement
    ScrCmd_14D 0x800C
    GoToIfEq 0x800C, 0, _014E
    GoTo _015C
    End

_014E:
    ScrCmd_0CD 1
    ScrCmd_02C 52
    GoTo _016A
    End

_015C:
    ScrCmd_0CD 1
    ScrCmd_02C 53
    GoTo _016A
    End

_016A:
    ScrCmd_11E 0x800C
    ScrCmd_0D5 1, 0x800C
    ScrCmd_02C 54
    ScrCmd_031
    ScrCmd_034
    SetFlag 0x27D
    SetVar 0x4112, 1
    ClearFlag 0x1DF
    ClearFlag 0x1E0
    ClearFlag 0x1E1
    SetVar 0x40A6, 3
    ScrCmd_061
    End

    .balign 4, 0
_019C:
    MoveAction_023
    MoveAction_03E
    MoveAction_021
    EndMovement

_01AC:
    End

_01AE:
    ScrCmd_060
    ApplyMovement 3, _0484
    ApplyMovement 0xFF, _04A8
    WaitMovement
    ScrCmd_0CD 0
    ScrCmd_02C 0
    ScrCmd_034
    ScrCmd_0CB 0x100
    ScrCmd_0CC
    ApplyMovement 0xFF, _04E0
    WaitMovement
    SetVar 0x8004, 0
    ScrCmd_198 0x8004, 0x800C
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, 0x183, _0219
    GoToIfEq 0x8008, 0x186, _0219
    GoToIfEq 0x8008, 0x189, _0219
    GoTo _0222

_0219:
    ScrCmd_02C 1
    GoTo _022B

_0222:
    ScrCmd_02C 2
    GoTo _022B

_022B:
    ScrCmd_034
    ApplyMovement 0xFF, _04E8
    WaitMovement
    ScrCmd_0CB 1
    ScrCmd_0CC
    ScrCmd_0D0 0, 0
    ScrCmd_02C 3
    ScrCmd_02C 4
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _02BC
    GoTo _0261
    End

_0261:
    SetVar 0x800C, 0
    ScrCmd_034
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_0BB 0, 0x800C
    SetVar 0x8002, 0x800C
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_02C 5
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _0261
    CallIfNe 0x8002, 1, _02B6
    GoTo _02BC
    End

_02B6:
    ScrCmd_1E5 49
    Return

_02BC:
    ScrCmd_0D0 0, 0
    ScrCmd_0CE 1
    ScrCmd_02C 6
    ScrCmd_034
    ApplyMovement 3, _0498
    WaitMovement
    ApplyMovement 0xFF, _04BC
    WaitMovement
    ScrCmd_003 15, 0x800C
    ScrCmd_14D 0x800C
    GoToIfEq 0x800C, 0, _02FC
    GoTo _0316
    End

_02FC:
    ScrCmd_0CF 0
    ScrCmd_02C 7
    ScrCmd_034
    ApplyMovement 3, _04D0
    WaitMovement
    GoTo _0330
    End

_0316:
    ScrCmd_0CF 0
    ScrCmd_02C 8
    ScrCmd_034
    ApplyMovement 3, _04D0
    WaitMovement
    GoTo _0330
    End

_0330:
    ScrCmd_054 0, 40
    ApplyMovement 0, _047C
    ApplyMovement 0xFF, _04B4
    WaitMovement
    ScrCmd_003 35, 0x800C
    SetFlag 0x993
    ScrCmd_050 0x44A
    ScrCmd_02C 9
    ScrCmd_02C 10
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _0375
    GoTo _0394
    End

_0375:
    ScrCmd_0CD 0
    ScrCmd_02C 11
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _0375
    GoTo _0394
    End

_0394:
    ScrCmd_02C 12
    ScrCmd_158
    SetFlag 144
    ScrCmd_0CD 0
    ScrCmd_02C 13
    ScrCmd_04E 0x486
    ScrCmd_04F
    ScrCmd_0CD 0
    ScrCmd_02C 14
    ScrCmd_034
    ApplyMovement 3, _04A0
    WaitMovement
    ScrCmd_003 15, 0x800C
    ScrCmd_14D 0x800C
    GoToIfEq 0x800C, 0, _03DA
    GoTo _03E8
    End

_03DA:
    ScrCmd_0CF 0
    ScrCmd_02C 15
    GoTo _03F6
    End

_03E8:
    ScrCmd_0CF 0
    ScrCmd_02C 16
    GoTo _03F6
    End

_03F6:
    ScrCmd_0CD 0
    ScrCmd_02C 17
    ScrCmd_034
    ApplyMovement 3, _04A0
    WaitMovement
    ApplyMovement 0xFF, _04BC
    WaitMovement
    ScrCmd_14D 0x800C
    GoToIfEq 0x800C, 0, _042B
    GoTo _043C
    End

_042B:
    ScrCmd_0CD 0
    ScrCmd_342 1
    ScrCmd_02C 19
    GoTo _044D
    End

_043C:
    ScrCmd_0CD 0
    ScrCmd_0DC 1
    ScrCmd_02C 20
    GoTo _044D
    End

_044D:
    ScrCmd_034
    ApplyMovement 0xFF, _04C4
    ApplyMovement 3, _04D8
    WaitMovement
    ScrCmd_065 3
    ClearFlag 0x177
    SetVar 0x40A6, 1
    ScrCmd_061
    End

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
_047C:
    MoveAction_021
    EndMovement

    .balign 4, 0
_0484:
    MoveAction_041
    MoveAction_00C 8
    MoveAction_00F
    MoveAction_022
    EndMovement

    .balign 4, 0
_0498:
    MoveAction_022
    EndMovement

    .balign 4, 0
_04A0:
    MoveAction_022
    EndMovement

    .balign 4, 0
_04A8:
    MoveAction_041
    MoveAction_00C 9
    EndMovement

    .balign 4, 0
_04B4:
    MoveAction_020
    EndMovement

    .balign 4, 0
_04BC:
    MoveAction_023
    EndMovement

    .balign 4, 0
_04C4:
    MoveAction_03F
    MoveAction_021
    EndMovement

    .balign 4, 0
_04D0:
    MoveAction_022
    EndMovement

    .balign 4, 0
_04D8:
    MoveAction_00D 10
    EndMovement

    .balign 4, 0
_04E0:
    MoveAction_066
    EndMovement

    .balign 4, 0
_04E8:
    MoveAction_068
    EndMovement

_04F0:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    Call _08A0
    GoToIfEq 0x8006, 1, _0539
    ScrCmd_22D 2, 0x800C
    GoToIfEq 0x800C, 1, _052B
    ScrCmd_0CF 0
    ScrCmd_02C 21
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_052B:
    ScrCmd_0CF 0
    ScrCmd_02C 49
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0539:
    ScrCmd_02C 59
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0544:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    Call _08A0
    GoToIfEq 0x8006, 1, _0587
    ScrCmd_22D 2, 0x800C
    GoToIfEq 0x800C, 1, _057C
    ScrCmd_02C 22
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_057C:
    ScrCmd_02C 50
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0587:
    ScrCmd_02C 60
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0592:
    End

_0594:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 23
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_05A5:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 24
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_05B6:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 25
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_05C7:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 26
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_05D8:
    ScrCmd_0CD 0
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 46
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_05EC:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 47
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_05FD:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 48
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_060E:
    GoToIfSet 0x110, _0621
    GoTo _0631
    End

_0621:
    ScrCmd_0CD 0
    ScrCmd_02C 31
    ScrCmd_034
    GoTo _0677
    End

_0631:
    ScrCmd_0CD 0
    ScrCmd_02C 27
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _0650
    GoTo _065B
    End

_0650:
    ScrCmd_02C 29
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_065B:
    ScrCmd_11E 0x800C
    ScrCmd_0D5 0, 0x800C
    ScrCmd_02C 28
    ScrCmd_0CD 0
    ScrCmd_02C 30
    ScrCmd_034
    GoTo _0677
    End

_0677:
    ScrCmd_1BD 0x8007
    CallIfEq 0x8007, 0, _07B9
    CallIfEq 0x8007, 1, _07BB
    CallIfEq 0x8007, 2, _07CF
    CallIfEq 0x8007, 3, _07E3
    ClearFlag 0x22A
    ScrCmd_064 4
    ApplyMovement 0xFF, _0858
    ApplyMovement 4, _0884
    ApplyMovement 0, _0804
    WaitMovement
    ScrCmd_02C 32
    ScrCmd_02C 33
    ScrCmd_034
    ApplyMovement 0, _080C
    WaitMovement
    ScrCmd_003 15, 0x800C
    ScrCmd_02C 34
    ScrCmd_034
    ApplyMovement 4, _088C
    ApplyMovement 0xFF, _086C
    WaitMovement
    ScrCmd_02C 35
    CallIfSet 0x964, _07A2
    CallIfGe 0x4081, 2, _079C
    ScrCmd_22D 1, 0x800C
    ScrCmd_0CD 0
    ScrCmd_04E 0x486
    ScrCmd_02C 36
    ScrCmd_04F
    ScrCmd_02C 37
    ScrCmd_02C 38
    ScrCmd_02C 39
    ScrCmd_0CD 0
    ScrCmd_14D 0x8004
    CallIfEq 0x8004, 0, _07A4
    CallIfEq 0x8004, 1, _07A9
    ScrCmd_034
    ApplyMovement 4, _0898
    WaitMovement
    ScrCmd_065 4
    ScrCmd_02C 42
    ScrCmd_034
    ScrCmd_003 15, 0x800C
    ApplyMovement 0xFF, _0878
    WaitMovement
    ScrCmd_0CD 0
    ScrCmd_02C 43
    SetVar 0x8004, 0x1AF
    SetVar 0x8005, 1
    ScrCmd_014 0x7FC
    ScrCmd_02C 44
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_079C:
    SetFlag 0x294
    Return

_07A2:
    Return

_07A4:
    ScrCmd_02C 40
    Return

_07A9:
    ScrCmd_02C 41
    Return

_07AE:
    ScrCmd_02C 45
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_07B9:
    Return

_07BB:
    ApplyMovement 0xFF, _0824
    ApplyMovement 0, _07F8
    WaitMovement
    Return

_07CF:
    ApplyMovement 0xFF, _0838
    ApplyMovement 0, _07F8
    WaitMovement
    Return

_07E3:
    ApplyMovement 0xFF, _0848
    ApplyMovement 0, _07F8
    WaitMovement
    Return

    .balign 4, 0
_07F8:
    MoveAction_03F
    MoveAction_021
    EndMovement

    .balign 4, 0
_0804:
    MoveAction_04B
    EndMovement

    .balign 4, 0
_080C:
    MoveAction_022
    MoveAction_03F 2
    MoveAction_021
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
_0824:
    MoveAction_00E
    MoveAction_00D 2
    MoveAction_00F
    MoveAction_020
    EndMovement

    .balign 4, 0
_0838:
    MoveAction_00D
    MoveAction_00E
    MoveAction_020
    EndMovement

    .balign 4, 0
_0848:
    MoveAction_00D
    MoveAction_00F
    MoveAction_020
    EndMovement

    .balign 4, 0
_0858:
    MoveAction_021
    MoveAction_03F 5
    MoveAction_00E
    MoveAction_023
    EndMovement

    .balign 4, 0
_086C:
    MoveAction_03F
    MoveAction_021
    EndMovement

    .balign 4, 0
_0878:
    MoveAction_00F
    MoveAction_020
    EndMovement

    .balign 4, 0
_0884:
    MoveAction_00C 7
    EndMovement

    .balign 4, 0
_088C:
    MoveAction_00E
    MoveAction_020
    EndMovement

    .balign 4, 0
_0898:
    MoveAction_00D 9
    EndMovement

_08A0:
    SetVar 0x8006, 0
    GoToIfEq 0x40A6, 3, _08B5
    Return

_08B5:
    GoToIfUnset 0x9BE, _08C2
    Return

_08C2:
    SetVar 0x8006, 1
    Return

    .byte 0
    .byte 0
