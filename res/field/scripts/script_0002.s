    .include "macros/scrcmd.inc"

    .data

    .long _0072-.-4
    .long _00E8-.-4
    .long _0700-.-4
    .long _09DC-.-4
    .long _0954-.-4
    .long _0F3C-.-4
    .long _0FAD-.-4
    .long _0FD3-.-4
    .long _1027-.-4
    .long _0FC0-.-4
    .long _0FE6-.-4
    .long _058C-.-4
    .long _05BD-.-4
    .long _1320-.-4
    .long _1397-.-4
    .long _140E-.-4
    .long _10C4-.-4
    .long _11CC-.-4
    .long _05D0-.-4
    .long _14A9-.-4
    .long _14BC-.-4
    .long _103A-.-4
    .long _1051-.-4
    .long _1068-.-4
    .long _107F-.-4
    .long _1096-.-4
    .long _10AD-.-4
    .long _14CF-.-4
    .short 0xFD13

_0072:
    CompareVarToValue 0x4077, 0
    ScrCmd_01D 1, _00AC
    CompareVarToValue 0x4077, 3
    ScrCmd_01D 4, _00C2
    ScrCmd_14D 0x4000
    CompareVarToValue 0x4000, 0
    ScrCmd_01C 1, _00D8
    CompareVarToValue 0x4000, 1
    ScrCmd_01C 1, _00E0
    End

_00AC:
    ScrCmd_186 31, 177, 0x306
    ScrCmd_189 31, 1
    ScrCmd_188 31, 15
    Return

_00C2:
    ScrCmd_186 7, 176, 0x2E3
    ScrCmd_189 7, 2
    ScrCmd_188 7, 16
    Return

_00D8:
    ScrCmd_028 0x4020, 97
    End

_00E0:
    ScrCmd_028 0x4020, 0
    End

_00E8:
    ScrCmd_060
    ScrCmd_069 0x8004, 0x8005
    CompareVarToValue 0x8004, 173
    ScrCmd_01C 1, _0119
    CompareVarToValue 0x8004, 174
    ScrCmd_01C 1, _0129
    CompareVarToValue 0x8004, 175
    ScrCmd_01C 1, _0139
    End

_0119:
    ScrCmd_186 7, 173, 0x314
    GoTo _0149
    End

_0129:
    ScrCmd_186 7, 174, 0x314
    GoTo _0149
    End

_0139:
    ScrCmd_186 7, 175, 0x314
    GoTo _0149
    End

_0149:
    ClearFlag 0x17A
    ScrCmd_064 7
    ScrCmd_062 7
    ScrCmd_05E 7, _043C
    ScrCmd_05F
    ScrCmd_05E 7, _044C
    ScrCmd_05F
    ScrCmd_014 0x7F8
    ScrCmd_14D 0x800C
    CompareVarToValue 0x800C, 0
    ScrCmd_01C 1, _018D
    CompareVarToValue 0x800C, 1
    ScrCmd_01C 1, _0224
    End

_018D:
    ScrCmd_0CF 0
    ScrCmd_0CD 1
    ScrCmd_02C 0
    ScrCmd_177 0x800C
    ScrCmd_0D5 0, 0x800C
    CompareVarToValue 0x800C, 4
    ScrCmd_01D 4, _021A
    CompareVarToValue 0x800C, 3
    ScrCmd_01D 3, _021F
    ScrCmd_0CD 0
    ScrCmd_0CE 1
    ScrCmd_02C 3
    Call _02DB
    ScrCmd_02C 8
    ScrCmd_034
    Call _0348
    ScrCmd_02C 9
    Call _036E
    ScrCmd_02C 14
    Call _0390
    Call _03C0
    ScrCmd_02C 23
    ScrCmd_034
    ScrCmd_003 30, 0x800C
    ScrCmd_0CD 0
    Call _041B
    ScrCmd_02C 24
    ScrCmd_034
    ScrCmd_0CE 1
    Call _042F
    ScrCmd_02C 25
    ScrCmd_034
    GoTo _02BB
    End

_021A:
    ScrCmd_02C 1
    Return

_021F:
    ScrCmd_02C 2
    Return

_0224:
    ScrCmd_0CF 0
    ScrCmd_0CD 1
    ScrCmd_02C 4
    ScrCmd_177 0x800C
    ScrCmd_0D5 0, 0x800C
    CompareVarToValue 0x800C, 4
    ScrCmd_01D 4, _02B1
    CompareVarToValue 0x800C, 3
    ScrCmd_01D 3, _02B6
    ScrCmd_0CD 0
    ScrCmd_0CE 1
    ScrCmd_02C 7
    Call _02DB
    ScrCmd_02C 10
    ScrCmd_034
    Call _0348
    ScrCmd_02C 11
    Call _036E
    ScrCmd_02C 15
    Call _0390
    Call _03C0
    ScrCmd_02C 26
    ScrCmd_034
    ScrCmd_003 15, 0x800C
    ScrCmd_0CD 0
    Call _041B
    ScrCmd_02C 27
    ScrCmd_034
    ScrCmd_0CE 1
    Call _042F
    ScrCmd_02C 28
    ScrCmd_034
    GoTo _02BB
    End

_02B1:
    ScrCmd_02C 5
    Return

_02B6:
    ScrCmd_02C 6
    Return

_02BB:
    ScrCmd_05E 7, _0474
    ScrCmd_05E 0xFF, _04F8
    ScrCmd_05F
    ScrCmd_065 7
    ScrCmd_028 0x4077, 1
    ScrCmd_061
    End

_02DB:
    ScrCmd_034
    ScrCmd_069 0x8004, 0x8005
    CompareVarToValue 0x8004, 173
    ScrCmd_01C 1, _030C
    CompareVarToValue 0x8004, 174
    ScrCmd_01C 1, _0320
    CompareVarToValue 0x8004, 175
    ScrCmd_01C 1, _0334
    End

_030C:
    ScrCmd_05E 7, _0454
    ScrCmd_05E 0xFF, _04B4
    ScrCmd_05F
    Return

_0320:
    ScrCmd_05E 7, _046C
    ScrCmd_05E 0xFF, _04D4
    ScrCmd_05F
    Return

_0334:
    ScrCmd_05E 7, _0460
    ScrCmd_05E 0xFF, _04C4
    ScrCmd_05F
    Return

_0348:
    ScrCmd_05E 31, _0518
    ScrCmd_05F
    ScrCmd_05E 31, _0544
    ScrCmd_05E 7, _047C
    ScrCmd_05E 0xFF, _04DC
    ScrCmd_05F
    Return

_036E:
    ScrCmd_05E 31, _0550
    ScrCmd_05F
    ScrCmd_014 0x807
    ScrCmd_02C 12
    ScrCmd_02C 13
    ScrCmd_034
    ScrCmd_05E 7, _0484
    ScrCmd_05F
    Return

_0390:
    ScrCmd_02C 16
    ScrCmd_02C 17
    ScrCmd_03E 0x800C
    CompareVarToValue 0x800C, 0
    ScrCmd_01C 1, _03B6
    CompareVarToValue 0x800C, 1
    ScrCmd_01C 1, _03BB
    End

_03B6:
    ScrCmd_02C 18
    Return

_03BB:
    ScrCmd_02C 19
    Return

_03C0:
    ScrCmd_02C 20
    ScrCmd_028 0x8004, 0x1D1
    ScrCmd_028 0x8005, 1
    ScrCmd_014 0x7FC
    ScrCmd_02C 21
    ScrCmd_034
    ScrCmd_05E 31, _055C
    ScrCmd_05F
    ScrCmd_02C 22
    ScrCmd_034
    ScrCmd_05E 7, _04A4
    ScrCmd_05E 0xFF, _0504
    ScrCmd_05E 31, _0574
    ScrCmd_05F
    ScrCmd_187 31, 186, 0, 0x2F4, 1
    ScrCmd_186 31, 186, 0x2F4
    ScrCmd_014 0x808
    Return

_041B:
    ScrCmd_05E 7, _048C
    ScrCmd_05E 0xFF, _04EC
    ScrCmd_05F
    Return

_042F:
    ScrCmd_05E 7, _0498
    ScrCmd_05F
    Return

    .balign 4, 0
_043C:
    MoveAction_00D 4
    MoveAction_04B
    MoveAction_041
    EndMovement

    .balign 4, 0
_044C:
    MoveAction_00D 3
    EndMovement

    .balign 4, 0
_0454:
    MoveAction_00F
    MoveAction_00C 18
    EndMovement

    .balign 4, 0
_0460:
    MoveAction_00E
    MoveAction_00C 18
    EndMovement

    .balign 4, 0
_046C:
    MoveAction_00C 18
    EndMovement

    .balign 4, 0
_0474:
    MoveAction_00D 9
    EndMovement

    .balign 4, 0
_047C:
    MoveAction_00C 2
    EndMovement

    .balign 4, 0
_0484:
    MoveAction_020
    EndMovement

    .balign 4, 0
_048C:
    MoveAction_00D
    MoveAction_00E 2
    EndMovement

    .balign 4, 0
_0498:
    MoveAction_00C
    MoveAction_00F 2
    EndMovement

    .balign 4, 0
_04A4:
    MoveAction_023
    MoveAction_03F 4
    MoveAction_020
    EndMovement

    .balign 4, 0
_04B4:
    MoveAction_00C
    MoveAction_00F
    MoveAction_00C 17
    EndMovement

    .balign 4, 0
_04C4:
    MoveAction_00C
    MoveAction_00E
    MoveAction_00C 17
    EndMovement

    .balign 4, 0
_04D4:
    MoveAction_00C 18
    EndMovement

    .balign 4, 0
_04DC:
    MoveAction_00C 2
    MoveAction_00F
    MoveAction_00C
    EndMovement

    .balign 4, 0
_04EC:
    MoveAction_03E
    MoveAction_022
    EndMovement

    .balign 4, 0
_04F8:
    MoveAction_03F
    MoveAction_021
    EndMovement

    .balign 4, 0
_0504:
    MoveAction_03F
    MoveAction_023
    MoveAction_03F 3
    MoveAction_020
    EndMovement

    .balign 4, 0
_0518:
    MoveAction_026
    MoveAction_03F 2
    MoveAction_025
    MoveAction_03F
    MoveAction_00A
    MoveAction_012 5
    MoveAction_027
    MoveAction_03F
    MoveAction_024
    MoveAction_03F
    EndMovement

    .balign 4, 0
_0544:
    MoveAction_00B
    MoveAction_013 2
    EndMovement

    .balign 4, 0
_0550:
    MoveAction_025
    MoveAction_04B
    EndMovement

    .balign 4, 0
_055C:
    MoveAction_026
    MoveAction_03F
    MoveAction_027
    MoveAction_03F 2
    MoveAction_025
    EndMovement

    .balign 4, 0
_0574:
    MoveAction_013 3
    MoveAction_026
    MoveAction_03F
    MoveAction_008
    MoveAction_010 7
    EndMovement

_058C:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_15B 0, 0x800C
    CompareVarToValue 0x800C, 1
    ScrCmd_01C 1, _05B2
    ScrCmd_02C 29
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_05B2:
    ScrCmd_02C 30
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_05BD:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 92
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_05D0:
    ScrCmd_060
    ScrCmd_069 0x8004, 0x8005
    CompareVarToValue 0x8005, 0x30B
    ScrCmd_01C 1, _0601
    CompareVarToValue 0x8005, 0x30C
    ScrCmd_01C 1, _062A
    CompareVarToValue 0x8005, 0x30D
    ScrCmd_01C 1, _0653
    End

_0601:
    ScrCmd_05E 26, _0680
    ScrCmd_05F
    ScrCmd_02C 91
    ScrCmd_034
    ScrCmd_05E 26, _06B0
    ScrCmd_05E 0xFF, _06F8
    ScrCmd_05F
    GoTo _067C
    End

_062A:
    ScrCmd_05E 26, _0690
    ScrCmd_05F
    ScrCmd_02C 91
    ScrCmd_034
    ScrCmd_05E 26, _06C8
    ScrCmd_05E 0xFF, _06F8
    ScrCmd_05F
    GoTo _067C
    End

_0653:
    ScrCmd_05E 26, _06A0
    ScrCmd_05F
    ScrCmd_02C 91
    ScrCmd_034
    ScrCmd_05E 26, _06E0
    ScrCmd_05E 0xFF, _06F8
    ScrCmd_05F
    GoTo _067C
    End

_067C:
    ScrCmd_061
    End

    .balign 4, 0
_0680:
    MoveAction_04B
    MoveAction_00D
    MoveAction_023
    EndMovement

    .balign 4, 0
_0690:
    MoveAction_04B
    MoveAction_00D 2
    MoveAction_023
    EndMovement

    .balign 4, 0
_06A0:
    MoveAction_04B
    MoveAction_00D 3
    MoveAction_023
    EndMovement

    .balign 4, 0
_06B0:
    MoveAction_00F
    MoveAction_03F 2
    MoveAction_00E
    MoveAction_00C
    MoveAction_021
    EndMovement

    .balign 4, 0
_06C8:
    MoveAction_00F
    MoveAction_03F 2
    MoveAction_00E
    MoveAction_00C 2
    MoveAction_021
    EndMovement

    .balign 4, 0
_06E0:
    MoveAction_00F
    MoveAction_03F 2
    MoveAction_00E
    MoveAction_00C 3
    MoveAction_021
    EndMovement

    .balign 4, 0
_06F8:
    MoveAction_00F
    EndMovement

_0700:
    ScrCmd_060
    ScrCmd_069 0x8004, 0x8005
    CompareVarToValue 0x8005, 0x2F5
    ScrCmd_01C 1, _073E
    CompareVarToValue 0x8005, 0x2F6
    ScrCmd_01C 1, _0758
    CompareVarToValue 0x8005, 0x2F7
    ScrCmd_01C 1, _0772
    CompareVarToValue 0x8005, 0x2F8
    ScrCmd_01C 1, _078C
    End

_073E:
    ScrCmd_05E 0xFF, _0894
    ScrCmd_05E 31, _08B4
    ScrCmd_05F
    GoTo _07A6
    End

_0758:
    ScrCmd_05E 0xFF, _0894
    ScrCmd_05E 31, _08CC
    ScrCmd_05F
    GoTo _07A6
    End

_0772:
    ScrCmd_05E 0xFF, _0894
    ScrCmd_05E 31, _08E4
    ScrCmd_05F
    GoTo _07A6
    End

_078C:
    ScrCmd_05E 0xFF, _0894
    ScrCmd_05E 31, _08FC
    ScrCmd_05F
    GoTo _07A6
    End

_07A6:
    Call _07FC
    ScrCmd_034
    ScrCmd_05E 0xFF, _08AC
    ScrCmd_05E 31, _0914
    ScrCmd_05F
    ScrCmd_069 0x8004, 0x8005
    CompareVarToValue 0x8005, 0x2F5
    ScrCmd_01C 1, _0846
    CompareVarToValue 0x8005, 0x2F6
    ScrCmd_01C 1, _0858
    CompareVarToValue 0x8005, 0x2F7
    ScrCmd_01C 1, _086A
    CompareVarToValue 0x8005, 0x2F8
    ScrCmd_01C 1, _087C
    End

_07FC:
    CheckFlag 241
    ScrCmd_01C 0, _0817
    CheckFlag 243
    ScrCmd_01C 0, _081C
    ScrCmd_02C 35
    Return

_0817:
    ScrCmd_02C 32
    Return

_081C:
    ScrCmd_02C 34
    Return

_0821:
    CheckFlag 241
    ScrCmd_01C 0, _083C
    CheckFlag 243
    ScrCmd_01C 0, _0841
    ScrCmd_02C 35
    Return

_083C:
    ScrCmd_02C 31
    Return

_0841:
    ScrCmd_02C 33
    Return

_0846:
    ScrCmd_05E 31, _0924
    ScrCmd_05F
    GoTo _088E
    End

_0858:
    ScrCmd_05E 31, _0930
    ScrCmd_05F
    GoTo _088E
    End

_086A:
    ScrCmd_05E 31, _093C
    ScrCmd_05F
    GoTo _088E
    End

_087C:
    ScrCmd_05E 31, _0948
    ScrCmd_05F
    GoTo _088E
    End

_088E:
    ScrCmd_061
    End

    .balign 4, 0
_0894:
    MoveAction_03F 5
    MoveAction_022
    EndMovement

    .balign 4, 0
_08A0:
    MoveAction_03F 5
    MoveAction_002
    EndMovement

    .balign 4, 0
_08AC:
    MoveAction_00E
    EndMovement

    .balign 4, 0
_08B4:
    MoveAction_001
    MoveAction_04B
    MoveAction_041
    MoveAction_00D
    MoveAction_00F
    EndMovement

    .balign 4, 0
_08CC:
    MoveAction_001
    MoveAction_04B
    MoveAction_041
    MoveAction_00D 2
    MoveAction_00F
    EndMovement

    .balign 4, 0
_08E4:
    MoveAction_001
    MoveAction_04B
    MoveAction_041
    MoveAction_00D 3
    MoveAction_00F
    EndMovement

    .balign 4, 0
_08FC:
    MoveAction_001
    MoveAction_04B
    MoveAction_041
    MoveAction_00D 4
    MoveAction_00F
    EndMovement

    .balign 4, 0
_0914:
    MoveAction_047
    MoveAction_00E
    MoveAction_048
    EndMovement

    .balign 4, 0
_0924:
    MoveAction_00C
    MoveAction_021
    EndMovement

    .balign 4, 0
_0930:
    MoveAction_00C 2
    MoveAction_021
    EndMovement

    .balign 4, 0
_093C:
    MoveAction_00C 3
    MoveAction_021
    EndMovement

    .balign 4, 0
_0948:
    MoveAction_00C 4
    MoveAction_021
    EndMovement

_0954:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    CheckFlag 243
    ScrCmd_01C 1, _097F
    Call _0821
    ScrCmd_030
    ScrCmd_034
    ScrCmd_05E 31, _09D4
    ScrCmd_05F
    ScrCmd_061
    End

_097F:
    ScrCmd_02C 35
    ScrCmd_030
    ScrCmd_034
    ScrCmd_05E 31, _09D4
    ScrCmd_05F
    ScrCmd_061
    End

_0994:
    ScrCmd_07E 0x1B5, 1, 0x800C
    CompareVarToValue 0x800C, 1
    ScrCmd_01C 1, _09BD
    ScrCmd_02C 36
    ScrCmd_034
    ScrCmd_05E 31, _1558
    ScrCmd_05F
    ScrCmd_02C 38
    Return

_09BD:
    ScrCmd_02C 37
    ScrCmd_034
    ScrCmd_05E 31, _1558
    ScrCmd_05F
    ScrCmd_02C 38
    Return

    .balign 4, 0
_09D4:
    MoveAction_001
    EndMovement

_09DC:
    ScrCmd_060
    ScrCmd_05E 18, _0E94
    ScrCmd_05F
    ScrCmd_02C 64
    ScrCmd_034
    ScrCmd_069 0x8000, 0x8001
    CompareVarToValue 0x8000, 173
    ScrCmd_01C 1, _0A1C
    CompareVarToValue 0x8000, 174
    ScrCmd_01C 1, _0A36
    CompareVarToValue 0x8000, 175
    ScrCmd_01C 1, _0A50
    End

_0A1C:
    ScrCmd_05E 16, _0EBC
    ScrCmd_05E 0xFF, _0DD0
    ScrCmd_05F
    GoTo _0A6A
    End

_0A36:
    ScrCmd_05E 16, _0EBC
    ScrCmd_05E 0xFF, _0DE4
    ScrCmd_05F
    GoTo _0A6A
    End

_0A50:
    ScrCmd_05E 16, _0EBC
    ScrCmd_05E 0xFF, _0DF8
    ScrCmd_05F
    GoTo _0A6A
    End

_0A6A:
    ScrCmd_0CD 0
    ScrCmd_0CF 1
    ScrCmd_02C 65
    ScrCmd_05E 18, _0E94
    ScrCmd_05F
    ScrCmd_02C 66
    ScrCmd_05E 16, _0EC8
    ScrCmd_05F
    ScrCmd_02C 67
    ScrCmd_05E 16, _0ED0
    ScrCmd_05F
    ScrCmd_02C 68
    ScrCmd_05E 17, _0E9C
    ScrCmd_05E 18, _0E9C
    ScrCmd_05F
    ScrCmd_02C 69
    ScrCmd_02C 70
    ScrCmd_05E 7, _0E44
    ScrCmd_05F
    ScrCmd_14D 0x800C
    CompareVarToValue 0x800C, 0
    ScrCmd_01C 1, _0ADC
    CompareVarToValue 0x800C, 1
    ScrCmd_01C 1, _0AED
    End

_0ADC:
    ScrCmd_0CF 0
    ScrCmd_0CD 1
    ScrCmd_02C 71
    GoTo _0AFE
    End

_0AED:
    ScrCmd_0CF 0
    ScrCmd_0CD 1
    ScrCmd_02C 72
    GoTo _0AFE
    End

_0AFE:
    ScrCmd_034
    ScrCmd_05E 16, _0F00
    ScrCmd_05F
    ScrCmd_05E 7, _0E4C
    ScrCmd_05E 0xFF, _0F30
    ScrCmd_05F
    Call _0BAA
    ScrCmd_2A0 0x8004, 0x19E, 0x19F
    ScrCmd_0EC 0x800C
    CompareVarToValue 0x800C, 0
    ScrCmd_01C 1, _0DB7
    ScrCmd_05E 18, _0EB4
    ScrCmd_05F
    ScrCmd_02C 73
    ScrCmd_034
    ScrCmd_05E 17, _0EA4
    ScrCmd_05E 18, _0EAC
    ScrCmd_05F
    ScrCmd_065 17
    ScrCmd_065 18
    SetFlag 0x19C
    ScrCmd_05E 16, _0EF8
    ScrCmd_05E 7, _0E54
    ScrCmd_05F
    ScrCmd_0CD 0
    ScrCmd_02C 74
    ScrCmd_05E 7, _0E60
    ScrCmd_05F
    ScrCmd_14D 0x800C
    CompareVarToValue 0x800C, 0
    ScrCmd_01C 1, _0C30
    CompareVarToValue 0x800C, 1
    ScrCmd_01C 1, _0C41
    End

_0BAA:
    ScrCmd_14D 0x800C
    CompareVarToValue 0x800C, 0
    ScrCmd_01C 1, _0BCA
    CompareVarToValue 0x800C, 1
    ScrCmd_01C 1, _0BFC
    End

_0BCA:
    ScrCmd_0DE 0x800C
    ScrCmd_028 0x8004, 0x268
    CompareVarToValue 0x800C, 0x186
    ScrCmd_01C 1, _0C2E
    ScrCmd_028 0x8004, 0x269
    CompareVarToValue 0x800C, 0x189
    ScrCmd_01C 1, _0C2E
    ScrCmd_028 0x8004, 0x26A
    Return

_0BFC:
    ScrCmd_0DE 0x800C
    ScrCmd_028 0x8004, 0x265
    CompareVarToValue 0x800C, 0x186
    ScrCmd_01C 1, _0C2E
    ScrCmd_028 0x8004, 0x266
    CompareVarToValue 0x800C, 0x189
    ScrCmd_01C 1, _0C2E
    ScrCmd_028 0x8004, 0x267
    Return

_0C2E:
    Return

_0C30:
    ScrCmd_0CF 0
    ScrCmd_0CD 1
    ScrCmd_02C 75
    GoTo _0C52
    End

_0C41:
    ScrCmd_0CF 0
    ScrCmd_0CD 1
    ScrCmd_02C 76
    GoTo _0C52
    End

_0C52:
    ScrCmd_0CD 0
    ScrCmd_02C 77
    ScrCmd_034
    ScrCmd_05E 7, _0E68
    ScrCmd_05E 16, _0ED8
    ScrCmd_05E 0xFF, _0E08
    ScrCmd_05F
    GoTo _0C7C
    End

_0C7C:
    ScrCmd_065 7
    ScrCmd_065 16
    ClearFlag 0x198
    ScrCmd_028 0x4077, 4
    ScrCmd_028 0x4076, 2
    ScrCmd_028 0x4079, 3
    ScrCmd_065 24
    ScrCmd_065 25
    ScrCmd_065 27
    ScrCmd_186 30, 174, 0x2EE
    ScrCmd_188 30, 14
    ClearFlag 0x18B
    ScrCmd_064 30
    ScrCmd_062 30
    ScrCmd_05E 30, _0DC0
    ScrCmd_05F
    ScrCmd_02C 78
    Call _0CF0
    ScrCmd_02C 79
    ScrCmd_034
    ScrCmd_003 15, 0x800C
    ScrCmd_05E 30, _0DC8
    ScrCmd_05F
    ScrCmd_065 30
    ScrCmd_061
    End

_0CF0:
    ScrCmd_028 0x8004, 0x1B3
    ScrCmd_028 0x8005, 1
    ScrCmd_014 0x7FC
    SetFlag 242
    Call _0D58
    Call _0D58
    Call _0D58
    Call _0D58
    Call _0D58
    Call _0D72
    Call _0D72
    Call _0D72
    Call _0D72
    Call _0D72
    ScrCmd_1D5 0
    ScrCmd_028 0x4001, 0x270F
    Call _0D8C
    Call _0D8C
    Return

_0D58:
    ScrCmd_1B7 0x800C, 6
    ScrCmd_028 0x8004, 0
    ScrCmd_026 0x8004, 0x800C
    ScrCmd_1D2 0x8004, 1
    Return

_0D72:
    ScrCmd_1B7 0x800C, 6
    ScrCmd_028 0x8004, 18
    ScrCmd_026 0x8004, 0x800C
    ScrCmd_1D2 0x8004, 1
    Return

_0D8C:
    ScrCmd_1B7 0x800C, 8
    CompareVarToVar 0x4001, 0x800C
    ScrCmd_01C 1, _0D8C
    ScrCmd_029 0x4001, 0x800C
    ScrCmd_028 0x8004, 1
    ScrCmd_026 0x8004, 0x800C
    ScrCmd_1D5 0x8004
    Return

_0DB7:
    ScrCmd_0EB
    ScrCmd_061
    End

    .balign 4, 0
_0DC0:
    MoveAction_00C 8
    EndMovement

    .balign 4, 0
_0DC8:
    MoveAction_00D 8
    EndMovement

    .balign 4, 0
_0DD0:
    MoveAction_03F 2
    MoveAction_00C
    MoveAction_00F 2
    MoveAction_00C
    EndMovement

    .balign 4, 0
_0DE4:
    MoveAction_03F 2
    MoveAction_00C
    MoveAction_00F
    MoveAction_00C
    EndMovement

    .balign 4, 0
_0DF8:
    MoveAction_03F 2
    MoveAction_00C 2
    MoveAction_020
    EndMovement

    .balign 4, 0
_0E08:
    MoveAction_03F
    MoveAction_023
    MoveAction_03F
    MoveAction_021
    EndMovement

    .byte 63
    .byte 0
    .byte 1
    .byte 0
    .byte 35
    .byte 0
    .byte 1
    .byte 0
    .byte 63
    .byte 0
    .byte 1
    .byte 0
    .byte 33
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 63
    .byte 0
    .byte 1
    .byte 0
    .byte 34
    .byte 0
    .byte 1
    .byte 0
    .byte 63
    .byte 0
    .byte 1
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
_0E44:
    MoveAction_021
    EndMovement

    .balign 4, 0
_0E4C:
    MoveAction_00E
    EndMovement

    .balign 4, 0
_0E54:
    MoveAction_00E
    MoveAction_00D
    EndMovement

    .balign 4, 0
_0E60:
    MoveAction_021
    EndMovement

    .balign 4, 0
_0E68:
    MoveAction_00F
    MoveAction_00D 9
    EndMovement

    .byte 15
    .byte 0
    .byte 1
    .byte 0
    .byte 13
    .byte 0
    .byte 9
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 14
    .byte 0
    .byte 1
    .byte 0
    .byte 35
    .byte 0
    .byte 1
    .byte 0
    .byte 15
    .byte 0
    .byte 1
    .byte 0
    .byte 13
    .byte 0
    .byte 9
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_0E94:
    MoveAction_023
    EndMovement

    .balign 4, 0
_0E9C:
    MoveAction_027 2
    EndMovement

    .balign 4, 0
_0EA4:
    MoveAction_010 9
    EndMovement

    .balign 4, 0
_0EAC:
    MoveAction_010 10
    EndMovement

    .balign 4, 0
_0EB4:
    MoveAction_023
    EndMovement

    .balign 4, 0
_0EBC:
    MoveAction_021
    MoveAction_04B
    EndMovement

    .balign 4, 0
_0EC8:
    MoveAction_026
    EndMovement

    .balign 4, 0
_0ED0:
    MoveAction_021
    EndMovement

    .balign 4, 0
_0ED8:
    MoveAction_00D 9
    EndMovement

    .byte 13
    .byte 0
    .byte 9
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 34
    .byte 0
    .byte 1
    .byte 0
    .byte 14
    .byte 0
    .byte 1
    .byte 0
    .byte 13
    .byte 0
    .byte 9
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_0EF8:
    MoveAction_021
    EndMovement

    .balign 4, 0
_0F00:
    MoveAction_022
    EndMovement

    .byte 34
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 34
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 34
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 34
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
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
_0F30:
    MoveAction_00E
    MoveAction_020
    EndMovement

_0F3C:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 80
    ScrCmd_044 29, 11, 0, 0, 0x800C
    ScrCmd_33A 1
    ScrCmd_046 45, 0xFF, 0
    ScrCmd_046 46, 0xFF, 1
    ScrCmd_046 47, 0xFF, 2
    ScrCmd_047
    ScrCmd_029 0x8008, 0x800C
    CompareVarToValue 0x8008, 0
    ScrCmd_01C 1, _0F97
    CompareVarToValue 0x8008, 1
    ScrCmd_01C 1, _0FA2
    ScrCmd_02C 83
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0F97:
    ScrCmd_02C 81
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0FA2:
    ScrCmd_02C 82
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0FAD:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 84
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0FC0:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 87
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0FD3:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 85
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0FE6:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 88
    ScrCmd_03E 0x800C
    CompareVarToValue 0x800C, 0
    ScrCmd_01C 1, _1011
    CompareVarToValue 0x800C, 1
    ScrCmd_01C 1, _101C
    End

_1011:
    ScrCmd_02C 89
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_101C:
    ScrCmd_02C 90
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_1027:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 86
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_103A:
    ScrCmd_036 95, 0, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    End

_1051:
    ScrCmd_036 96, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    End

_1068:
    ScrCmd_036 97, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    End

_107F:
    ScrCmd_036 98, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    End

_1096:
    ScrCmd_036 99, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    End

_10AD:
    ScrCmd_036 100, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    End

_10C4:
    ScrCmd_060
    ScrCmd_05E 23, _1178
    ScrCmd_05E 0xFF, _1170
    ScrCmd_05F
    ScrCmd_069 0x8004, 0x8005
    CompareVarToValue 0x8004, 172
    ScrCmd_01D 1, _1133
    CompareVarToValue 0x8004, 173
    ScrCmd_01D 1, _113F
    CompareVarToValue 0x8004, 174
    ScrCmd_01D 1, _114B
    CompareVarToValue 0x8004, 175
    ScrCmd_01D 1, _1157
    CompareVarToValue 0x8004, 176
    ScrCmd_01D 1, _1163
    ScrCmd_02C 39
    ScrCmd_028 0x40E7, 2
    ScrCmd_02C 40
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_1133:
    ScrCmd_05E 23, _1184
    ScrCmd_05F
    Return

_113F:
    ScrCmd_05E 23, _1194
    ScrCmd_05F
    Return

_114B:
    ScrCmd_05E 23, _11A4
    ScrCmd_05F
    Return

_1157:
    ScrCmd_05E 23, _11AC
    ScrCmd_05F
    Return

_1163:
    ScrCmd_05E 23, _11BC
    ScrCmd_05F
    Return

    .balign 4, 0
_1170:
    MoveAction_000
    EndMovement

    .balign 4, 0
_1178:
    MoveAction_021
    MoveAction_04B
    EndMovement

    .balign 4, 0
_1184:
    MoveAction_00D 2
    MoveAction_00E 2
    MoveAction_00D 2
    EndMovement

    .balign 4, 0
_1194:
    MoveAction_00D 2
    MoveAction_00E
    MoveAction_00D 2
    EndMovement

    .balign 4, 0
_11A4:
    MoveAction_00D 4
    EndMovement

    .balign 4, 0
_11AC:
    MoveAction_00D 2
    MoveAction_00F
    MoveAction_00D 2
    EndMovement

    .balign 4, 0
_11BC:
    MoveAction_00D 2
    MoveAction_00F 2
    MoveAction_00D 2
    EndMovement

_11CC:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_028 0x8004, 0
    Call _11F8
    CompareVarToValue 0x8004, 3
    ScrCmd_01C 1, _1223
    ScrCmd_02C 41
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_11F8:
    CheckFlag 237
    ScrCmd_01D 1, _121B
    CheckFlag 238
    ScrCmd_01D 1, _121B
    CheckFlag 239
    ScrCmd_01D 1, _121B
    Return

_121B:
    ScrCmd_026 0x8004, 1
    Return

_1223:
    ScrCmd_02C 42
    ScrCmd_07C 0x1CC, 1, 0x800C
    ScrCmd_07C 0x1CD, 1, 0x800C
    ScrCmd_07C 0x1CE, 1, 0x800C
    ScrCmd_131
    ScrCmd_028 0x4077, 2
    ScrCmd_133 0
    ScrCmd_133 1
    ScrCmd_133 3
    ScrCmd_133 4
    ScrCmd_0CD 0
    ScrCmd_02C 43
    ScrCmd_04E 0x486
    ScrCmd_04F
    ScrCmd_02C 44
    ScrCmd_034
    ScrCmd_1BD 0x800C
    CompareVarToValue 0x800C, 0
    ScrCmd_01C 1, _12A1
    CompareVarToValue 0x800C, 1
    ScrCmd_01C 1, _12BB
    CompareVarToValue 0x800C, 2
    ScrCmd_01C 1, _12A1
    CompareVarToValue 0x800C, 3
    ScrCmd_01C 1, _12A1
    End

_12A1:
    ScrCmd_05E 23, _12FC
    ScrCmd_05E 0xFF, _1314
    ScrCmd_05F
    GoTo _12D5
    End

_12BB:
    ScrCmd_05E 23, _12F0
    ScrCmd_05E 0xFF, _1304
    ScrCmd_05F
    GoTo _12D5
    End

_12D5:
    ScrCmd_065 23
    SetFlag 243
    ClearFlag 0x1F7
    ScrCmd_065 31
    SetFlag 0x181
    ScrCmd_061
    End

    .balign 4, 0
_12F0:
    MoveAction_00E
    MoveAction_00C 9
    EndMovement

    .balign 4, 0
_12FC:
    MoveAction_00C 9
    EndMovement

    .balign 4, 0
_1304:
    MoveAction_03F
    MoveAction_022
    MoveAction_020
    EndMovement

    .balign 4, 0
_1314:
    MoveAction_03F
    MoveAction_020
    EndMovement

_1320:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    CheckFlag 237
    ScrCmd_01C 1, _138C
    ScrCmd_02C 45
    ScrCmd_03E 0x800C
    CompareVarToValue 0x800C, 0
    ScrCmd_01C 1, _1356
    CompareVarToValue 0x800C, 1
    ScrCmd_01C 1, _137D
    End

_1356:
    ScrCmd_049 0x5F1
    ScrCmd_02C 46
    ScrCmd_02C 48
    ScrCmd_02C 49
    ScrCmd_028 0x8004, 0x1CC
    ScrCmd_028 0x8005, 1
    SetFlag 237
    ScrCmd_014 0x7E0
    ScrCmd_034
    ScrCmd_061
    End

_137D:
    ScrCmd_049 0x5F3
    ScrCmd_02C 47
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_138C:
    ScrCmd_02C 50
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_1397:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    CheckFlag 238
    ScrCmd_01C 1, _1403
    ScrCmd_02C 51
    ScrCmd_03E 0x800C
    CompareVarToValue 0x800C, 0
    ScrCmd_01C 1, _13CD
    CompareVarToValue 0x800C, 1
    ScrCmd_01C 1, _13F4
    End

_13CD:
    ScrCmd_049 0x5F1
    ScrCmd_02C 52
    ScrCmd_02C 54
    ScrCmd_02C 55
    ScrCmd_028 0x8004, 0x1CD
    ScrCmd_028 0x8005, 1
    SetFlag 238
    ScrCmd_014 0x7E0
    ScrCmd_034
    ScrCmd_061
    End

_13F4:
    ScrCmd_049 0x5F3
    ScrCmd_02C 53
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_1403:
    ScrCmd_02C 56
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_140E:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    CompareVarToValue 0x40E7, 2
    ScrCmd_01C 0, _149E
    CheckFlag 239
    ScrCmd_01C 1, _1493
    ScrCmd_02C 57
    ScrCmd_03E 0x800C
    CompareVarToValue 0x800C, 0
    ScrCmd_01C 1, _1451
    CompareVarToValue 0x800C, 1
    ScrCmd_01C 1, _1484
    End

_1451:
    ScrCmd_049 0x5F1
    ScrCmd_02C 58
    ScrCmd_02C 60
    ScrCmd_02C 61
    ScrCmd_187 23, 174, 1, 0x303, 1
    ScrCmd_028 0x8004, 0x1CE
    ScrCmd_028 0x8005, 1
    SetFlag 239
    ScrCmd_014 0x7E0
    ScrCmd_034
    ScrCmd_061
    End

_1484:
    ScrCmd_049 0x5F3
    ScrCmd_02C 59
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_1493:
    ScrCmd_02C 63
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_149E:
    ScrCmd_02C 62
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_14A9:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 93
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_14BC:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 94
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_14CF:
    ScrCmd_060
    ScrCmd_069 0x8004, 0x8005
    ScrCmd_186 31, 179, 0x8005
    ScrCmd_189 31, 3
    ScrCmd_188 31, 17
    ClearFlag 0x181
    ScrCmd_064 31
    ScrCmd_05E 31, _1538
    ScrCmd_05F
    ScrCmd_014 0x807
    ScrCmd_05E 31, _1544
    ScrCmd_05E 0xFF, _08A0
    ScrCmd_05F
    Call _0994
    ScrCmd_034
    ScrCmd_05E 31, _154C
    ScrCmd_05F
    ScrCmd_065 31
    ScrCmd_014 0x808
    ScrCmd_028 0x4076, 2
    ScrCmd_061
    End

    .balign 4, 0
_1538:
    MoveAction_00B 2
    MoveAction_04B
    EndMovement

    .balign 4, 0
_1544:
    MoveAction_013 6
    EndMovement

    .balign 4, 0
_154C:
    MoveAction_00A
    MoveAction_012 8
    EndMovement

    .balign 4, 0
_1558:
    MoveAction_022
    MoveAction_03F 2
    MoveAction_023
    EndMovement
