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
    CompareVar 0x4077, 0
    CallIf 1, _00AC
    CompareVar 0x4077, 3
    CallIf 4, _00C2
    ScrCmd_14D 0x4000
    CompareVar 0x4000, 0
    GoToIf 1, _00D8
    CompareVar 0x4000, 1
    GoToIf 1, _00E0
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
    SetVar 0x4020, 97
    End

_00E0:
    SetVar 0x4020, 0
    End

_00E8:
    ScrCmd_060
    ScrCmd_069 0x8004, 0x8005
    CompareVar 0x8004, 173
    GoToIf 1, _0119
    CompareVar 0x8004, 174
    GoToIf 1, _0129
    CompareVar 0x8004, 175
    GoToIf 1, _0139
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
    ApplyMovement 7, _043C
    WaitMovement
    ApplyMovement 7, _044C
    WaitMovement
    ScrCmd_014 0x7F8
    ScrCmd_14D 0x800C
    CompareVar 0x800C, 0
    GoToIf 1, _018D
    CompareVar 0x800C, 1
    GoToIf 1, _0224
    End

_018D:
    ScrCmd_0CF 0
    ScrCmd_0CD 1
    ScrCmd_02C 0
    ScrCmd_177 0x800C
    ScrCmd_0D5 0, 0x800C
    CompareVar 0x800C, 4
    CallIf 4, _021A
    CompareVar 0x800C, 3
    CallIf 3, _021F
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
    CompareVar 0x800C, 4
    CallIf 4, _02B1
    CompareVar 0x800C, 3
    CallIf 3, _02B6
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
    ApplyMovement 7, _0474
    ApplyMovement 0xFF, _04F8
    WaitMovement
    ScrCmd_065 7
    SetVar 0x4077, 1
    ScrCmd_061
    End

_02DB:
    ScrCmd_034
    ScrCmd_069 0x8004, 0x8005
    CompareVar 0x8004, 173
    GoToIf 1, _030C
    CompareVar 0x8004, 174
    GoToIf 1, _0320
    CompareVar 0x8004, 175
    GoToIf 1, _0334
    End

_030C:
    ApplyMovement 7, _0454
    ApplyMovement 0xFF, _04B4
    WaitMovement
    Return

_0320:
    ApplyMovement 7, _046C
    ApplyMovement 0xFF, _04D4
    WaitMovement
    Return

_0334:
    ApplyMovement 7, _0460
    ApplyMovement 0xFF, _04C4
    WaitMovement
    Return

_0348:
    ApplyMovement 31, _0518
    WaitMovement
    ApplyMovement 31, _0544
    ApplyMovement 7, _047C
    ApplyMovement 0xFF, _04DC
    WaitMovement
    Return

_036E:
    ApplyMovement 31, _0550
    WaitMovement
    ScrCmd_014 0x807
    ScrCmd_02C 12
    ScrCmd_02C 13
    ScrCmd_034
    ApplyMovement 7, _0484
    WaitMovement
    Return

_0390:
    ScrCmd_02C 16
    ScrCmd_02C 17
    ScrCmd_03E 0x800C
    CompareVar 0x800C, 0
    GoToIf 1, _03B6
    CompareVar 0x800C, 1
    GoToIf 1, _03BB
    End

_03B6:
    ScrCmd_02C 18
    Return

_03BB:
    ScrCmd_02C 19
    Return

_03C0:
    ScrCmd_02C 20
    SetVar 0x8004, 0x1D1
    SetVar 0x8005, 1
    ScrCmd_014 0x7FC
    ScrCmd_02C 21
    ScrCmd_034
    ApplyMovement 31, _055C
    WaitMovement
    ScrCmd_02C 22
    ScrCmd_034
    ApplyMovement 7, _04A4
    ApplyMovement 0xFF, _0504
    ApplyMovement 31, _0574
    WaitMovement
    ScrCmd_187 31, 186, 0, 0x2F4, 1
    ScrCmd_186 31, 186, 0x2F4
    ScrCmd_014 0x808
    Return

_041B:
    ApplyMovement 7, _048C
    ApplyMovement 0xFF, _04EC
    WaitMovement
    Return

_042F:
    ApplyMovement 7, _0498
    WaitMovement
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
    CompareVar 0x800C, 1
    GoToIf 1, _05B2
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
    CompareVar 0x8005, 0x30B
    GoToIf 1, _0601
    CompareVar 0x8005, 0x30C
    GoToIf 1, _062A
    CompareVar 0x8005, 0x30D
    GoToIf 1, _0653
    End

_0601:
    ApplyMovement 26, _0680
    WaitMovement
    ScrCmd_02C 91
    ScrCmd_034
    ApplyMovement 26, _06B0
    ApplyMovement 0xFF, _06F8
    WaitMovement
    GoTo _067C
    End

_062A:
    ApplyMovement 26, _0690
    WaitMovement
    ScrCmd_02C 91
    ScrCmd_034
    ApplyMovement 26, _06C8
    ApplyMovement 0xFF, _06F8
    WaitMovement
    GoTo _067C
    End

_0653:
    ApplyMovement 26, _06A0
    WaitMovement
    ScrCmd_02C 91
    ScrCmd_034
    ApplyMovement 26, _06E0
    ApplyMovement 0xFF, _06F8
    WaitMovement
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
    CompareVar 0x8005, 0x2F5
    GoToIf 1, _073E
    CompareVar 0x8005, 0x2F6
    GoToIf 1, _0758
    CompareVar 0x8005, 0x2F7
    GoToIf 1, _0772
    CompareVar 0x8005, 0x2F8
    GoToIf 1, _078C
    End

_073E:
    ApplyMovement 0xFF, _0894
    ApplyMovement 31, _08B4
    WaitMovement
    GoTo _07A6
    End

_0758:
    ApplyMovement 0xFF, _0894
    ApplyMovement 31, _08CC
    WaitMovement
    GoTo _07A6
    End

_0772:
    ApplyMovement 0xFF, _0894
    ApplyMovement 31, _08E4
    WaitMovement
    GoTo _07A6
    End

_078C:
    ApplyMovement 0xFF, _0894
    ApplyMovement 31, _08FC
    WaitMovement
    GoTo _07A6
    End

_07A6:
    Call _07FC
    ScrCmd_034
    ApplyMovement 0xFF, _08AC
    ApplyMovement 31, _0914
    WaitMovement
    ScrCmd_069 0x8004, 0x8005
    CompareVar 0x8005, 0x2F5
    GoToIf 1, _0846
    CompareVar 0x8005, 0x2F6
    GoToIf 1, _0858
    CompareVar 0x8005, 0x2F7
    GoToIf 1, _086A
    CompareVar 0x8005, 0x2F8
    GoToIf 1, _087C
    End

_07FC:
    CheckFlag 241
    GoToIf 0, _0817
    CheckFlag 243
    GoToIf 0, _081C
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
    GoToIf 0, _083C
    CheckFlag 243
    GoToIf 0, _0841
    ScrCmd_02C 35
    Return

_083C:
    ScrCmd_02C 31
    Return

_0841:
    ScrCmd_02C 33
    Return

_0846:
    ApplyMovement 31, _0924
    WaitMovement
    GoTo _088E
    End

_0858:
    ApplyMovement 31, _0930
    WaitMovement
    GoTo _088E
    End

_086A:
    ApplyMovement 31, _093C
    WaitMovement
    GoTo _088E
    End

_087C:
    ApplyMovement 31, _0948
    WaitMovement
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
    GoToIf 1, _097F
    Call _0821
    ScrCmd_030
    ScrCmd_034
    ApplyMovement 31, _09D4
    WaitMovement
    ScrCmd_061
    End

_097F:
    ScrCmd_02C 35
    ScrCmd_030
    ScrCmd_034
    ApplyMovement 31, _09D4
    WaitMovement
    ScrCmd_061
    End

_0994:
    ScrCmd_07E 0x1B5, 1, 0x800C
    CompareVar 0x800C, 1
    GoToIf 1, _09BD
    ScrCmd_02C 36
    ScrCmd_034
    ApplyMovement 31, _1558
    WaitMovement
    ScrCmd_02C 38
    Return

_09BD:
    ScrCmd_02C 37
    ScrCmd_034
    ApplyMovement 31, _1558
    WaitMovement
    ScrCmd_02C 38
    Return

    .balign 4, 0
_09D4:
    MoveAction_001
    EndMovement

_09DC:
    ScrCmd_060
    ApplyMovement 18, _0E94
    WaitMovement
    ScrCmd_02C 64
    ScrCmd_034
    ScrCmd_069 0x8000, 0x8001
    CompareVar 0x8000, 173
    GoToIf 1, _0A1C
    CompareVar 0x8000, 174
    GoToIf 1, _0A36
    CompareVar 0x8000, 175
    GoToIf 1, _0A50
    End

_0A1C:
    ApplyMovement 16, _0EBC
    ApplyMovement 0xFF, _0DD0
    WaitMovement
    GoTo _0A6A
    End

_0A36:
    ApplyMovement 16, _0EBC
    ApplyMovement 0xFF, _0DE4
    WaitMovement
    GoTo _0A6A
    End

_0A50:
    ApplyMovement 16, _0EBC
    ApplyMovement 0xFF, _0DF8
    WaitMovement
    GoTo _0A6A
    End

_0A6A:
    ScrCmd_0CD 0
    ScrCmd_0CF 1
    ScrCmd_02C 65
    ApplyMovement 18, _0E94
    WaitMovement
    ScrCmd_02C 66
    ApplyMovement 16, _0EC8
    WaitMovement
    ScrCmd_02C 67
    ApplyMovement 16, _0ED0
    WaitMovement
    ScrCmd_02C 68
    ApplyMovement 17, _0E9C
    ApplyMovement 18, _0E9C
    WaitMovement
    ScrCmd_02C 69
    ScrCmd_02C 70
    ApplyMovement 7, _0E44
    WaitMovement
    ScrCmd_14D 0x800C
    CompareVar 0x800C, 0
    GoToIf 1, _0ADC
    CompareVar 0x800C, 1
    GoToIf 1, _0AED
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
    ApplyMovement 16, _0F00
    WaitMovement
    ApplyMovement 7, _0E4C
    ApplyMovement 0xFF, _0F30
    WaitMovement
    Call _0BAA
    ScrCmd_2A0 0x8004, 0x19E, 0x19F
    ScrCmd_0EC 0x800C
    CompareVar 0x800C, 0
    GoToIf 1, _0DB7
    ApplyMovement 18, _0EB4
    WaitMovement
    ScrCmd_02C 73
    ScrCmd_034
    ApplyMovement 17, _0EA4
    ApplyMovement 18, _0EAC
    WaitMovement
    ScrCmd_065 17
    ScrCmd_065 18
    SetFlag 0x19C
    ApplyMovement 16, _0EF8
    ApplyMovement 7, _0E54
    WaitMovement
    ScrCmd_0CD 0
    ScrCmd_02C 74
    ApplyMovement 7, _0E60
    WaitMovement
    ScrCmd_14D 0x800C
    CompareVar 0x800C, 0
    GoToIf 1, _0C30
    CompareVar 0x800C, 1
    GoToIf 1, _0C41
    End

_0BAA:
    ScrCmd_14D 0x800C
    CompareVar 0x800C, 0
    GoToIf 1, _0BCA
    CompareVar 0x800C, 1
    GoToIf 1, _0BFC
    End

_0BCA:
    ScrCmd_0DE 0x800C
    SetVar 0x8004, 0x268
    CompareVar 0x800C, 0x186
    GoToIf 1, _0C2E
    SetVar 0x8004, 0x269
    CompareVar 0x800C, 0x189
    GoToIf 1, _0C2E
    SetVar 0x8004, 0x26A
    Return

_0BFC:
    ScrCmd_0DE 0x800C
    SetVar 0x8004, 0x265
    CompareVar 0x800C, 0x186
    GoToIf 1, _0C2E
    SetVar 0x8004, 0x266
    CompareVar 0x800C, 0x189
    GoToIf 1, _0C2E
    SetVar 0x8004, 0x267
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
    ApplyMovement 7, _0E68
    ApplyMovement 16, _0ED8
    ApplyMovement 0xFF, _0E08
    WaitMovement
    GoTo _0C7C
    End

_0C7C:
    ScrCmd_065 7
    ScrCmd_065 16
    ClearFlag 0x198
    SetVar 0x4077, 4
    SetVar 0x4076, 2
    SetVar 0x4079, 3
    ScrCmd_065 24
    ScrCmd_065 25
    ScrCmd_065 27
    ScrCmd_186 30, 174, 0x2EE
    ScrCmd_188 30, 14
    ClearFlag 0x18B
    ScrCmd_064 30
    ScrCmd_062 30
    ApplyMovement 30, _0DC0
    WaitMovement
    ScrCmd_02C 78
    Call _0CF0
    ScrCmd_02C 79
    ScrCmd_034
    ScrCmd_003 15, 0x800C
    ApplyMovement 30, _0DC8
    WaitMovement
    ScrCmd_065 30
    ScrCmd_061
    End

_0CF0:
    SetVar 0x8004, 0x1B3
    SetVar 0x8005, 1
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
    SetVar 0x4001, 0x270F
    Call _0D8C
    Call _0D8C
    Return

_0D58:
    ScrCmd_1B7 0x800C, 6
    SetVar 0x8004, 0
    AddVar 0x8004, 0x800C
    ScrCmd_1D2 0x8004, 1
    Return

_0D72:
    ScrCmd_1B7 0x800C, 6
    SetVar 0x8004, 18
    AddVar 0x8004, 0x800C
    ScrCmd_1D2 0x8004, 1
    Return

_0D8C:
    ScrCmd_1B7 0x800C, 8
    CompareVar 0x4001, 0x800C
    GoToIf 1, _0D8C
    SetVar 0x4001, 0x800C
    SetVar 0x8004, 1
    AddVar 0x8004, 0x800C
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
    SetVar 0x8008, 0x800C
    CompareVar 0x8008, 0
    GoToIf 1, _0F97
    CompareVar 0x8008, 1
    GoToIf 1, _0FA2
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
    CompareVar 0x800C, 0
    GoToIf 1, _1011
    CompareVar 0x800C, 1
    GoToIf 1, _101C
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
    ApplyMovement 23, _1178
    ApplyMovement 0xFF, _1170
    WaitMovement
    ScrCmd_069 0x8004, 0x8005
    CompareVar 0x8004, 172
    CallIf 1, _1133
    CompareVar 0x8004, 173
    CallIf 1, _113F
    CompareVar 0x8004, 174
    CallIf 1, _114B
    CompareVar 0x8004, 175
    CallIf 1, _1157
    CompareVar 0x8004, 176
    CallIf 1, _1163
    ScrCmd_02C 39
    SetVar 0x40E7, 2
    ScrCmd_02C 40
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_1133:
    ApplyMovement 23, _1184
    WaitMovement
    Return

_113F:
    ApplyMovement 23, _1194
    WaitMovement
    Return

_114B:
    ApplyMovement 23, _11A4
    WaitMovement
    Return

_1157:
    ApplyMovement 23, _11AC
    WaitMovement
    Return

_1163:
    ApplyMovement 23, _11BC
    WaitMovement
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
    SetVar 0x8004, 0
    Call _11F8
    CompareVar 0x8004, 3
    GoToIf 1, _1223
    ScrCmd_02C 41
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_11F8:
    CheckFlag 237
    CallIf 1, _121B
    CheckFlag 238
    CallIf 1, _121B
    CheckFlag 239
    CallIf 1, _121B
    Return

_121B:
    AddVar 0x8004, 1
    Return

_1223:
    ScrCmd_02C 42
    ScrCmd_07C 0x1CC, 1, 0x800C
    ScrCmd_07C 0x1CD, 1, 0x800C
    ScrCmd_07C 0x1CE, 1, 0x800C
    ScrCmd_131
    SetVar 0x4077, 2
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
    CompareVar 0x800C, 0
    GoToIf 1, _12A1
    CompareVar 0x800C, 1
    GoToIf 1, _12BB
    CompareVar 0x800C, 2
    GoToIf 1, _12A1
    CompareVar 0x800C, 3
    GoToIf 1, _12A1
    End

_12A1:
    ApplyMovement 23, _12FC
    ApplyMovement 0xFF, _1314
    WaitMovement
    GoTo _12D5
    End

_12BB:
    ApplyMovement 23, _12F0
    ApplyMovement 0xFF, _1304
    WaitMovement
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
    GoToIf 1, _138C
    ScrCmd_02C 45
    ScrCmd_03E 0x800C
    CompareVar 0x800C, 0
    GoToIf 1, _1356
    CompareVar 0x800C, 1
    GoToIf 1, _137D
    End

_1356:
    ScrCmd_049 0x5F1
    ScrCmd_02C 46
    ScrCmd_02C 48
    ScrCmd_02C 49
    SetVar 0x8004, 0x1CC
    SetVar 0x8005, 1
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
    GoToIf 1, _1403
    ScrCmd_02C 51
    ScrCmd_03E 0x800C
    CompareVar 0x800C, 0
    GoToIf 1, _13CD
    CompareVar 0x800C, 1
    GoToIf 1, _13F4
    End

_13CD:
    ScrCmd_049 0x5F1
    ScrCmd_02C 52
    ScrCmd_02C 54
    ScrCmd_02C 55
    SetVar 0x8004, 0x1CD
    SetVar 0x8005, 1
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
    CompareVar 0x40E7, 2
    GoToIf 0, _149E
    CheckFlag 239
    GoToIf 1, _1493
    ScrCmd_02C 57
    ScrCmd_03E 0x800C
    CompareVar 0x800C, 0
    GoToIf 1, _1451
    CompareVar 0x800C, 1
    GoToIf 1, _1484
    End

_1451:
    ScrCmd_049 0x5F1
    ScrCmd_02C 58
    ScrCmd_02C 60
    ScrCmd_02C 61
    ScrCmd_187 23, 174, 1, 0x303, 1
    SetVar 0x8004, 0x1CE
    SetVar 0x8005, 1
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
    ApplyMovement 31, _1538
    WaitMovement
    ScrCmd_014 0x807
    ApplyMovement 31, _1544
    ApplyMovement 0xFF, _08A0
    WaitMovement
    Call _0994
    ScrCmd_034
    ApplyMovement 31, _154C
    WaitMovement
    ScrCmd_065 31
    ScrCmd_014 0x808
    SetVar 0x4076, 2
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
