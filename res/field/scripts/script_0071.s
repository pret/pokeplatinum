    .include "macros/scrcmd.inc"

    .data

    .long _01BF-.-4
    .long _04FC-.-4
    .long _050F-.-4
    .long _0522-.-4
    .long _00BF-.-4
    .long _00E5-.-4
    .long _00D2-.-4
    .long _010E-.-4
    .long _0535-.-4
    .long _0548-.-4
    .long _055B-.-4
    .long _0137-.-4
    .long _014E-.-4
    .long _0163-.-4
    .long _017A-.-4
    .long _0191-.-4
    .long _01A8-.-4
    .long _056E-.-4
    .long _057F-.-4
    .long _05B0-.-4
    .long _0072-.-4
    .long _0770-.-4
    .long _07BA-.-4
    .long _08FC-.-4
    .long _0954-.-4
    .long _0D00-.-4
    .long _0FDC-.-4
    .long _0EB4-.-4
    .short 0xFD13

_0072:
    CompareVarToValue 0x407A, 4
    ScrCmd_01D 1, _00B5
    ScrCmd_07E 0x1C2, 1, 0x4000
    CompareVarToValue 0x4000, 1
    ScrCmd_01C 1, _0096
    End

_0096:
    ScrCmd_07E 0x1AC, 1, 0x4000
    CompareVarToValue 0x4000, 1
    ScrCmd_01C 1, _00AD
    End

_00AD:
    ScrCmd_028 0x4114, 0
    End

_00B5:
    ScrCmd_186 12, 0x133, 0x21D
    Return

_00BF:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 25
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00D2:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 26
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00E5:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    CheckFlag 129
    ScrCmd_01C 1, _0103
    ScrCmd_02C 21
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0103:
    ScrCmd_02C 22
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_010E:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    CheckFlag 129
    ScrCmd_01C 1, _012C
    ScrCmd_02C 23
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_012C:
    ScrCmd_02C 24
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0137:
    ScrCmd_036 36, 0, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    End

_014E:
    ScrCmd_037 3, 0
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03A 37, 0x800C
    ScrCmd_014 0x7D0
    End

_0163:
    ScrCmd_036 38, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    End

_017A:
    ScrCmd_036 39, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    End

_0191:
    ScrCmd_036 40, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    End

_01A8:
    ScrCmd_036 41, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    End

_01BF:
    ScrCmd_060
    ScrCmd_069 0x8004, 0x8005
    CompareVarToValue 0x8005, 0x20A
    ScrCmd_01C 1, _01FD
    CompareVarToValue 0x8005, 0x20B
    ScrCmd_01C 1, _0256
    CompareVarToValue 0x8005, 0x20C
    ScrCmd_01C 1, _0266
    CompareVarToValue 0x8005, 0x20D
    ScrCmd_01C 1, _0276
    End

_01FD:
    CompareVarToValue 0x8004, 0x130
    ScrCmd_01C 1, _0226
    CompareVarToValue 0x8004, 0x131
    ScrCmd_01C 1, _0236
    CompareVarToValue 0x8004, 0x132
    ScrCmd_01C 1, _0246
    End

_0226:
    ScrCmd_186 12, 0x139, 0x20C
    GoTo _0286
    End

_0236:
    ScrCmd_186 12, 0x13A, 0x20C
    GoTo _0286
    End

_0246:
    ScrCmd_186 12, 0x13B, 0x20C
    GoTo _0286
    End

_0256:
    ScrCmd_186 12, 0x139, 0x20B
    GoTo _0286
    End

_0266:
    ScrCmd_186 12, 0x139, 0x20C
    GoTo _0286
    End

_0276:
    ScrCmd_186 12, 0x139, 0x20D
    GoTo _0286
    End

_0286:
    ClearFlag 0x180
    ScrCmd_064 12
    ScrCmd_062 12
    CompareVarToValue 0x8005, 0x20A
    ScrCmd_01D 1, _034B
    CompareVarToValue 0x8005, 0x20A
    ScrCmd_01D 5, _0361
    ScrCmd_0CD 0
    ScrCmd_02C 6
    ScrCmd_034
    CompareVarToValue 0x8005, 0x20A
    ScrCmd_01D 1, _0377
    CompareVarToValue 0x8005, 0x20A
    ScrCmd_01D 5, _0383
    ScrCmd_02C 7
    ScrCmd_028 0x8004, 0x1A4
    ScrCmd_028 0x8005, 1
    ScrCmd_014 0x7FC
    ScrCmd_02C 8
    ScrCmd_034
    ScrCmd_069 0x8004, 0x8005
    CompareVarToValue 0x8005, 0x20A
    ScrCmd_01C 1, _0322
    CompareVarToValue 0x8005, 0x20B
    ScrCmd_01C 1, _03DD
    CompareVarToValue 0x8005, 0x20C
    ScrCmd_01C 1, _03F7
    CompareVarToValue 0x8005, 0x20D
    ScrCmd_01C 1, _0411
    End

_0322:
    CompareVarToValue 0x8004, 0x130
    ScrCmd_01C 1, _038F
    CompareVarToValue 0x8004, 0x131
    ScrCmd_01C 1, _03A9
    CompareVarToValue 0x8004, 0x132
    ScrCmd_01C 1, _03C3
    End

_034B:
    ScrCmd_05E 12, _043C
    ScrCmd_05F
    ScrCmd_05E 0xFF, _04D4
    ScrCmd_05F
    Return

_0361:
    ScrCmd_05E 12, _0450
    ScrCmd_05F
    ScrCmd_05E 0xFF, _04DC
    ScrCmd_05F
    Return

_0377:
    ScrCmd_05E 12, _0460
    ScrCmd_05F
    Return

_0383:
    ScrCmd_05E 12, _0470
    ScrCmd_05F
    Return

_038F:
    ScrCmd_05E 12, _0480
    ScrCmd_05E 0xFF, _04E4
    ScrCmd_05F
    GoTo _042B
    End

_03A9:
    ScrCmd_05E 12, _048C
    ScrCmd_05E 0xFF, _04E4
    ScrCmd_05F
    GoTo _042B
    End

_03C3:
    ScrCmd_05E 12, _0498
    ScrCmd_05E 0xFF, _04E4
    ScrCmd_05F
    GoTo _042B
    End

_03DD:
    ScrCmd_05E 12, _04A4
    ScrCmd_05E 0xFF, _04F0
    ScrCmd_05F
    GoTo _042B
    End

_03F7:
    ScrCmd_05E 12, _04B4
    ScrCmd_05E 0xFF, _04F0
    ScrCmd_05F
    GoTo _042B
    End

_0411:
    ScrCmd_05E 12, _04C4
    ScrCmd_05E 0xFF, _04F0
    ScrCmd_05F
    GoTo _042B
    End

_042B:
    ScrCmd_065 12
    ScrCmd_028 0x407A, 2
    ScrCmd_061
    End

    .balign 4, 0
_043C:
    MoveAction_00E 4
    MoveAction_04B
    MoveAction_00E 5
    MoveAction_00C
    EndMovement

    .balign 4, 0
_0450:
    MoveAction_00E 4
    MoveAction_04B
    MoveAction_00E 4
    EndMovement

    .balign 4, 0
_0460:
    MoveAction_023
    MoveAction_03F 2
    MoveAction_020
    EndMovement

    .balign 4, 0
_0470:
    MoveAction_023
    MoveAction_03F 2
    MoveAction_022
    EndMovement

    .balign 4, 0
_0480:
    MoveAction_00E 5
    MoveAction_00D 10
    EndMovement

    .balign 4, 0
_048C:
    MoveAction_00E 6
    MoveAction_00D 10
    EndMovement

    .balign 4, 0
_0498:
    MoveAction_00E 7
    MoveAction_00D 10
    EndMovement

    .balign 4, 0
_04A4:
    MoveAction_00D
    MoveAction_00E 6
    MoveAction_00D 10
    EndMovement

    .balign 4, 0
_04B4:
    MoveAction_00D
    MoveAction_00E 6
    MoveAction_00D 10
    EndMovement

    .balign 4, 0
_04C4:
    MoveAction_00C
    MoveAction_00E 6
    MoveAction_00D 11
    EndMovement

    .balign 4, 0
_04D4:
    MoveAction_021
    EndMovement

    .balign 4, 0
_04DC:
    MoveAction_023
    EndMovement

    .balign 4, 0
_04E4:
    MoveAction_03F
    MoveAction_022
    EndMovement

    .balign 4, 0
_04F0:
    MoveAction_03F 2
    MoveAction_022
    EndMovement

_04FC:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 18
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_050F:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 19
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0522:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 20
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0535:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 27
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0548:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 28
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_055B:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 29
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_056E:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 42
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_057F:
    CheckFlag 121
    ScrCmd_01C 1, _059D
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 31
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_059D:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 32
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_05B0:
    ScrCmd_060
    ScrCmd_069 0x8004, 0x8005
    CompareVarToValue 0x8004, 0x12F
    ScrCmd_01D 1, _0657
    CompareVarToValue 0x8004, 0x130
    ScrCmd_01D 1, _0663
    CompareVarToValue 0x8004, 0x131
    ScrCmd_01D 1, _066F
    CompareVarToValue 0x8004, 0x132
    ScrCmd_01D 1, _067B
    CompareVarToValue 0x8004, 0x133
    ScrCmd_01D 1, _0687
    ScrCmd_05E 0xFF, _0760
    ScrCmd_05F
    ScrCmd_02C 30
    ScrCmd_034
    CompareVarToValue 0x8004, 0x12F
    ScrCmd_01D 1, _0693
    CompareVarToValue 0x8004, 0x130
    ScrCmd_01D 1, _0695
    CompareVarToValue 0x8004, 0x131
    ScrCmd_01D 1, _06A1
    CompareVarToValue 0x8004, 0x132
    ScrCmd_01D 1, _06AD
    CompareVarToValue 0x8004, 0x133
    ScrCmd_01D 1, _06B9
    ScrCmd_05E 0xFF, _0768
    ScrCmd_05F
    ScrCmd_061
    End

_0657:
    ScrCmd_05E 28, _06C8
    ScrCmd_05F
    Return

_0663:
    ScrCmd_05E 28, _06D8
    ScrCmd_05F
    Return

_066F:
    ScrCmd_05E 28, _06EC
    ScrCmd_05F
    Return

_067B:
    ScrCmd_05E 28, _0700
    ScrCmd_05F
    Return

_0687:
    ScrCmd_05E 28, _0714
    ScrCmd_05F
    Return

_0693:
    Return

_0695:
    ScrCmd_05E 28, _0730
    ScrCmd_05F
    Return

_06A1:
    ScrCmd_05E 28, _073C
    ScrCmd_05F
    Return

_06AD:
    ScrCmd_05E 28, _0748
    ScrCmd_05F
    Return

_06B9:
    ScrCmd_05E 28, _0754
    ScrCmd_05F
    Return

    .balign 4, 0
_06C8:
    MoveAction_027
    MoveAction_04B
    MoveAction_03E
    EndMovement

    .balign 4, 0
_06D8:
    MoveAction_027
    MoveAction_04B
    MoveAction_03E
    MoveAction_00F
    EndMovement

    .balign 4, 0
_06EC:
    MoveAction_027
    MoveAction_04B
    MoveAction_03E
    MoveAction_00F 2
    EndMovement

    .balign 4, 0
_0700:
    MoveAction_027
    MoveAction_04B
    MoveAction_03E
    MoveAction_00F 3
    EndMovement

    .balign 4, 0
_0714:
    MoveAction_027
    MoveAction_04B
    MoveAction_03E
    MoveAction_00F 4
    EndMovement

    .byte 39
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_0730:
    MoveAction_00E
    MoveAction_027
    EndMovement

    .balign 4, 0
_073C:
    MoveAction_00E 2
    MoveAction_027
    EndMovement

    .balign 4, 0
_0748:
    MoveAction_00E 3
    MoveAction_027
    EndMovement

    .balign 4, 0
_0754:
    MoveAction_00E 4
    MoveAction_027
    EndMovement

    .balign 4, 0
_0760:
    MoveAction_022
    EndMovement

    .balign 4, 0
_0768:
    MoveAction_00C
    EndMovement

_0770:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    CheckFlag 130
    ScrCmd_01C 0, _07A5
    CompareVarToValue 0x408C, 1
    ScrCmd_01C 4, _07A5
    ScrCmd_02C 34
    ScrCmd_031
    ScrCmd_034
    ScrCmd_05E 30, _0898
    ScrCmd_05F
    ScrCmd_061
    End

_07A5:
    ScrCmd_02C 35
    ScrCmd_031
    ScrCmd_034
    ScrCmd_05E 30, _0898
    ScrCmd_05F
    ScrCmd_061
    End

_07BA:
    ScrCmd_060
    ScrCmd_069 0x8004, 0x8005
    CompareVarToValue 0x8005, 0x214
    ScrCmd_01D 1, _0823
    CompareVarToValue 0x8005, 0x215
    ScrCmd_01D 1, _082F
    CompareVarToValue 0x8005, 0x216
    ScrCmd_01D 1, _083B
    ScrCmd_05E 0xFF, _0890
    ScrCmd_05F
    ScrCmd_02C 33
    ScrCmd_034
    CompareVarToValue 0x8005, 0x214
    ScrCmd_01D 1, _0847
    CompareVarToValue 0x8005, 0x215
    ScrCmd_01D 1, _085B
    CompareVarToValue 0x8005, 0x216
    ScrCmd_01D 1, _086F
    ScrCmd_061
    End

_0823:
    ScrCmd_05E 30, _08A0
    ScrCmd_05F
    Return

_082F:
    ScrCmd_05E 30, _08AC
    ScrCmd_05F
    Return

_083B:
    ScrCmd_05E 30, _08BC
    ScrCmd_05F
    Return

_0847:
    ScrCmd_05E 30, _08CC
    ScrCmd_05E 0xFF, _0884
    ScrCmd_05F
    Return

_085B:
    ScrCmd_05E 30, _08DC
    ScrCmd_05E 0xFF, _0884
    ScrCmd_05F
    Return

_086F:
    ScrCmd_05E 30, _08EC
    ScrCmd_05E 0xFF, _0884
    ScrCmd_05F
    Return

    .balign 4, 0
_0884:
    MoveAction_00F
    MoveAction_022
    EndMovement

    .balign 4, 0
_0890:
    MoveAction_000
    EndMovement

    .balign 4, 0
_0898:
    MoveAction_001
    EndMovement

    .balign 4, 0
_08A0:
    MoveAction_001
    MoveAction_04B
    EndMovement

    .balign 4, 0
_08AC:
    MoveAction_001
    MoveAction_04B
    MoveAction_00D
    EndMovement

    .balign 4, 0
_08BC:
    MoveAction_001
    MoveAction_04B
    MoveAction_00D 2
    EndMovement

    .balign 4, 0
_08CC:
    MoveAction_00D
    MoveAction_00C
    MoveAction_021
    EndMovement

    .balign 4, 0
_08DC:
    MoveAction_00D
    MoveAction_00C 2
    MoveAction_021
    EndMovement

    .balign 4, 0
_08EC:
    MoveAction_00D
    MoveAction_00C 3
    MoveAction_021
    EndMovement

_08FC:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_0CE 0
    ScrCmd_02C 17
    ScrCmd_034
    ScrCmd_05E 31, _0944
    ScrCmd_05F
    ScrCmd_168 9, 17, 24, 18, 77
    ScrCmd_16B 77
    ScrCmd_169 77
    ScrCmd_05E 31, _094C
    ScrCmd_05F
    ScrCmd_065 31
    ScrCmd_16C 77
    ScrCmd_169 77
    ScrCmd_16A 77
    ScrCmd_061
    End

    .balign 4, 0
_0944:
    MoveAction_020
    EndMovement

    .balign 4, 0
_094C:
    MoveAction_00C
    EndMovement

_0954:
    ScrCmd_060
    ScrCmd_32D
    ScrCmd_331
    ScrCmd_186 33, 0x12B, 0x215
    ClearFlag 0x18C
    ScrCmd_064 33
    ScrCmd_062 33
    ScrCmd_069 0x8004, 0x8005
    CompareVarToValue 0x8005, 0x20B
    ScrCmd_01C 1, _099D
    CompareVarToValue 0x8005, 0x20C
    ScrCmd_01C 1, _09B7
    CompareVarToValue 0x8005, 0x20D
    ScrCmd_01C 1, _09D1
    End

_099D:
    ScrCmd_05E 33, _0B58
    ScrCmd_05E 0xFF, _0BDC
    ScrCmd_05F
    GoTo _09EB
    End

_09B7:
    ScrCmd_05E 33, _0B64
    ScrCmd_05E 0xFF, _0BFC
    ScrCmd_05F
    GoTo _09EB
    End

_09D1:
    ScrCmd_05E 33, _0B70
    ScrCmd_05E 0xFF, _0C1C
    ScrCmd_05F
    GoTo _09EB
    End

_09EB:
    ScrCmd_049 0x602
    ScrCmd_02C 0
    ScrCmd_034
    ScrCmd_014 0x7FA
    ScrCmd_0CE 0
    ScrCmd_0CD 1
    ScrCmd_02C 1
    ScrCmd_034
    ScrCmd_069 0x8004, 0x8005
    CompareVarToValue 0x8005, 0x20B
    ScrCmd_01C 1, _0A32
    CompareVarToValue 0x8005, 0x20C
    ScrCmd_01C 1, _0A5E
    CompareVarToValue 0x8005, 0x20D
    ScrCmd_01C 1, _0A8A
    End

_0A32:
    ScrCmd_05E 33, _0B7C
    ScrCmd_05E 0xFF, _0C3C
    ScrCmd_05F
    ScrCmd_05E 33, _0BB0
    ScrCmd_05E 0xFF, _0C74
    ScrCmd_05F
    GoTo _0AB6
    End

_0A5E:
    ScrCmd_05E 33, _0B8C
    ScrCmd_05E 0xFF, _0C4C
    ScrCmd_05F
    ScrCmd_05E 33, _0BB8
    ScrCmd_05E 0xFF, _0C88
    ScrCmd_05F
    GoTo _0AB6
    End

_0A8A:
    ScrCmd_05E 33, _0BA0
    ScrCmd_05E 0xFF, _0C64
    ScrCmd_05F
    ScrCmd_05E 33, _0BB0
    ScrCmd_05E 0xFF, _0C98
    ScrCmd_05F
    GoTo _0AB6
    End

_0AB6:
    ScrCmd_0CE 0
    ScrCmd_02C 2
    ScrCmd_034
    ScrCmd_014 0x7FB
    ScrCmd_32E
    ScrCmd_332
    ScrCmd_066 0x143, 0x20C
    ScrCmd_05E 241, _0CD4
    ScrCmd_05F
    ScrCmd_02C 3
    ScrCmd_034
    ScrCmd_003 15, 0x800C
    ScrCmd_05E 32, _0CE4
    ScrCmd_05E 241, _0CDC
    ScrCmd_05F
    ScrCmd_067
    ScrCmd_02C 4
    ScrCmd_034
    ScrCmd_05E 32, _0CF4
    ScrCmd_05E 33, _0BC0
    ScrCmd_05E 0xFF, _0CAC
    ScrCmd_05F
    ScrCmd_065 32
    ScrCmd_003 35, 0x800C
    ScrCmd_05E 33, _0BD4
    ScrCmd_05E 0xFF, _0CC0
    ScrCmd_05F
    ScrCmd_0CE 0
    ScrCmd_02C 5
    ScrCmd_034
    ScrCmd_05E 33, _0BCC
    ScrCmd_05E 0xFF, _0CC8
    ScrCmd_05F
    ScrCmd_065 33
    ScrCmd_028 0x407A, 1
    ScrCmd_061
    End

    .balign 4, 0
_0B58:
    MoveAction_010 10
    MoveAction_013 4
    EndMovement

    .balign 4, 0
_0B64:
    MoveAction_010 9
    MoveAction_013 4
    EndMovement

    .balign 4, 0
_0B70:
    MoveAction_010 8
    MoveAction_013 4
    EndMovement

    .balign 4, 0
_0B7C:
    MoveAction_00D
    MoveAction_00F
    MoveAction_020
    EndMovement

    .balign 4, 0
_0B8C:
    MoveAction_00D
    MoveAction_00F 2
    MoveAction_00C
    MoveAction_022
    EndMovement

    .balign 4, 0
_0BA0:
    MoveAction_00C
    MoveAction_00F
    MoveAction_021
    EndMovement

    .balign 4, 0
_0BB0:
    MoveAction_00F 19
    EndMovement

    .balign 4, 0
_0BB8:
    MoveAction_00F 18
    EndMovement

    .balign 4, 0
_0BC0:
    MoveAction_03F 3
    MoveAction_026
    EndMovement

    .balign 4, 0
_0BCC:
    MoveAction_012 12
    EndMovement

    .balign 4, 0
_0BD4:
    MoveAction_011
    EndMovement

    .balign 4, 0
_0BDC:
    MoveAction_03E 10
    MoveAction_03D
    MoveAction_03C
    MoveAction_047
    MoveAction_013
    MoveAction_048
    MoveAction_002
    EndMovement

    .balign 4, 0
_0BFC:
    MoveAction_03E 9
    MoveAction_03D
    MoveAction_03C
    MoveAction_047
    MoveAction_013
    MoveAction_048
    MoveAction_002
    EndMovement

    .balign 4, 0
_0C1C:
    MoveAction_03E 8
    MoveAction_03D
    MoveAction_03C
    MoveAction_047
    MoveAction_013
    MoveAction_048
    MoveAction_002
    EndMovement

    .balign 4, 0
_0C3C:
    MoveAction_03F
    MoveAction_03E
    MoveAction_021
    EndMovement

    .balign 4, 0
_0C4C:
    MoveAction_03F
    MoveAction_03E
    MoveAction_021
    MoveAction_03E
    MoveAction_023
    EndMovement

    .balign 4, 0
_0C64:
    MoveAction_03F
    MoveAction_03E
    MoveAction_020
    EndMovement

    .balign 4, 0
_0C74:
    MoveAction_00D
    MoveAction_00F 18
    MoveAction_00D
    MoveAction_00F
    EndMovement

    .balign 4, 0
_0C88:
    MoveAction_00F 18
    MoveAction_00D
    MoveAction_00F
    EndMovement

    .balign 4, 0
_0C98:
    MoveAction_00C
    MoveAction_00F 18
    MoveAction_00D
    MoveAction_00F
    EndMovement

    .balign 4, 0
_0CAC:
    MoveAction_00D
    MoveAction_023
    MoveAction_03F 2
    MoveAction_022
    EndMovement

    .balign 4, 0
_0CC0:
    MoveAction_020
    EndMovement

    .balign 4, 0
_0CC8:
    MoveAction_03F
    MoveAction_022
    EndMovement

    .balign 4, 0
_0CD4:
    MoveAction_00F 4
    EndMovement

    .balign 4, 0
_0CDC:
    MoveAction_00E 4
    EndMovement

    .balign 4, 0
_0CE4:
    MoveAction_00E 3
    MoveAction_00C
    MoveAction_022
    EndMovement

    .balign 4, 0
_0CF4:
    MoveAction_03F 2
    MoveAction_00E 14
    EndMovement

_0D00:
    ScrCmd_060
    ScrCmd_189 12, 3
    ScrCmd_188 12, 17
    ScrCmd_069 0x8004, 0x8005
    CompareVarToValue 0x8005, 0x21C
    ScrCmd_01C 1, _0D64
    CompareVarToValue 0x8005, 0x21D
    ScrCmd_01C 1, _0D7A
    CompareVarToValue 0x8005, 0x21E
    ScrCmd_01C 1, _0D90
    CompareVarToValue 0x8005, 0x21F
    ScrCmd_01C 1, _0DA6
    CompareVarToValue 0x8005, 0x220
    ScrCmd_01C 1, _0DBC
    CompareVarToValue 0x8005, 0x221
    ScrCmd_01C 1, _0DD2
    End

_0D64:
    ScrCmd_186 12, 0x130, 0x224
    Call _0DE8
    GoTo _0DF6
    End

_0D7A:
    ScrCmd_186 12, 0x130, 0x225
    Call _0DE8
    GoTo _0DF6
    End

_0D90:
    ScrCmd_186 12, 0x130, 0x226
    Call _0DE8
    GoTo _0DF6
    End

_0DA6:
    ScrCmd_186 12, 0x130, 0x227
    Call _0DE8
    GoTo _0DF6
    End

_0DBC:
    ScrCmd_186 12, 0x130, 0x228
    Call _0DE8
    GoTo _0DF6
    End

_0DD2:
    ScrCmd_186 12, 0x130, 0x229
    Call _0DE8
    GoTo _0DF6
    End

_0DE8:
    ClearFlag 0x180
    ScrCmd_064 12
    ScrCmd_062 12
    Return

_0DF6:
    ScrCmd_05E 12, _0E88
    ScrCmd_05F
    ScrCmd_05E 0xFF, _0EAC
    ScrCmd_05F
    ScrCmd_02C 9
    ScrCmd_03E 0x800C
    CompareVarToValue 0x800C, 1
    ScrCmd_01C 1, _0E75
    ScrCmd_177 0x800C
    CompareVarToValue 0x800C, 6
    ScrCmd_01C 4, _0E67
    Call _0E4B
    ScrCmd_05E 12, _0EA0
    ScrCmd_05F
    ScrCmd_065 12
    GoTo _0E83
    End

_0E4B:
    ScrCmd_04E 0x486
    ScrCmd_04F
    ScrCmd_02C 10
    ScrCmd_02C 16
    ScrCmd_034
    ScrCmd_097 175, 11
    ScrCmd_028 0x407A, 5
    Return

_0E67:
    Call _0FBE
    GoTo _0E83
    End

_0E75:
    Call _0FCD
    GoTo _0E83
    End

_0E83:
    ScrCmd_061
    End

    .balign 4, 0
_0E88:
    MoveAction_00C 3
    MoveAction_04B
    MoveAction_00C 5
    MoveAction_00F 2
    MoveAction_00F
    EndMovement

    .balign 4, 0
_0EA0:
    MoveAction_00E 3
    MoveAction_00D 9
    EndMovement

    .balign 4, 0
_0EAC:
    MoveAction_022
    EndMovement

_0EB4:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    CompareVarToValue 0x407A, 4
    ScrCmd_01C 1, _0ECD
    ScrCmd_061
    End

_0ECD:
    ScrCmd_02C 14
    ScrCmd_03E 0x800C
    CompareVarToValue 0x800C, 1
    ScrCmd_01C 1, _0FAC
    ScrCmd_177 0x800C
    CompareVarToValue 0x800C, 6
    ScrCmd_01C 4, _0F9E
    Call _0E4B
    ScrCmd_1BD 0x800C
    CompareVarToValue 0x800C, 0
    ScrCmd_01C 1, _0F32
    CompareVarToValue 0x800C, 1
    ScrCmd_01C 1, _0F4C
    CompareVarToValue 0x800C, 2
    ScrCmd_01C 1, _0F66
    CompareVarToValue 0x800C, 3
    ScrCmd_01C 1, _0F78
    End

_0F32:
    ScrCmd_05E 12, _10BC
    ScrCmd_05E 0xFF, _10E0
    ScrCmd_05F
    GoTo _0F92
    End

_0F4C:
    ScrCmd_05E 12, _10BC
    ScrCmd_05E 0xFF, _10E0
    ScrCmd_05F
    GoTo _0F92
    End

_0F66:
    ScrCmd_05E 12, _10BC
    ScrCmd_05F
    GoTo _0F92
    End

_0F78:
    ScrCmd_05E 12, _10C8
    ScrCmd_05E 0xFF, _10EC
    ScrCmd_05F
    GoTo _0F92
    End

_0F92:
    ScrCmd_065 12
    GoTo _0FBA
    End

_0F9E:
    Call _0FBE
    GoTo _0FBA
    End

_0FAC:
    Call _0FCD
    GoTo _0FBA
    End

_0FBA:
    ScrCmd_061
    End

_0FBE:
    ScrCmd_028 0x407A, 4
    ScrCmd_02C 11
    ScrCmd_031
    ScrCmd_034
    Return

_0FCD:
    ScrCmd_02C 12
    ScrCmd_031
    ScrCmd_034
    ScrCmd_028 0x407A, 4
    Return

_0FDC:
    ScrCmd_060
    ScrCmd_069 0x8004, 0x8005
    CompareVarToValue 0x8005, 0x21C
    ScrCmd_01C 1, _1034
    CompareVarToValue 0x8005, 0x21D
    ScrCmd_01C 1, _1046
    CompareVarToValue 0x8005, 0x21E
    ScrCmd_01C 1, _1058
    CompareVarToValue 0x8005, 0x21F
    ScrCmd_01C 1, _106A
    CompareVarToValue 0x8005, 0x220
    ScrCmd_01C 1, _107C
    CompareVarToValue 0x8005, 0x221
    ScrCmd_01C 1, _108E
    End

_1034:
    ScrCmd_05E 12, _10B4
    ScrCmd_05F
    GoTo _10A0
    End

_1046:
    ScrCmd_05E 12, _10B4
    ScrCmd_05F
    GoTo _10A0
    End

_1058:
    ScrCmd_05E 12, _10B4
    ScrCmd_05F
    GoTo _10A0
    End

_106A:
    ScrCmd_05E 12, _10B4
    ScrCmd_05F
    GoTo _10A0
    End

_107C:
    ScrCmd_05E 12, _10B4
    ScrCmd_05F
    GoTo _10A0
    End

_108E:
    ScrCmd_05E 12, _10B4
    ScrCmd_05F
    GoTo _10A0
    End

_10A0:
    ScrCmd_02C 13
    ScrCmd_034
    ScrCmd_05E 0xFF, _10D8
    ScrCmd_05F
    ScrCmd_061
    End

    .balign 4, 0
_10B4:
    MoveAction_023
    EndMovement

    .balign 4, 0
_10BC:
    MoveAction_00E 3
    MoveAction_00D 9
    EndMovement

    .balign 4, 0
_10C8:
    MoveAction_00D
    MoveAction_00E 3
    MoveAction_00D 8
    EndMovement

    .balign 4, 0
_10D8:
    MoveAction_00E
    EndMovement

    .balign 4, 0
_10E0:
    MoveAction_03F
    MoveAction_022
    EndMovement

    .balign 4, 0
_10EC:
    MoveAction_03F 2
    MoveAction_03E
    MoveAction_022
    EndMovement
