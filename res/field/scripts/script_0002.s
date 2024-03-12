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
    ScrCmd_011 0x4077, 0
    ScrCmd_01D 1, _00AC
    ScrCmd_011 0x4077, 3
    ScrCmd_01D 4, _00C2
    ScrCmd_14D 0x4000
    ScrCmd_011 0x4000, 0
    ScrCmd_01C 1, _00D8
    ScrCmd_011 0x4000, 1
    ScrCmd_01C 1, _00E0
    ScrCmd_002

_00AC:
    ScrCmd_186 31, 177, 0x306
    ScrCmd_189 31, 1
    ScrCmd_188 31, 15
    ScrCmd_01B

_00C2:
    ScrCmd_186 7, 176, 0x2E3
    ScrCmd_189 7, 2
    ScrCmd_188 7, 16
    ScrCmd_01B

_00D8:
    ScrCmd_028 0x4020, 97
    ScrCmd_002

_00E0:
    ScrCmd_028 0x4020, 0
    ScrCmd_002

_00E8:
    ScrCmd_060
    ScrCmd_069 0x8004, 0x8005
    ScrCmd_011 0x8004, 173
    ScrCmd_01C 1, _0119
    ScrCmd_011 0x8004, 174
    ScrCmd_01C 1, _0129
    ScrCmd_011 0x8004, 175
    ScrCmd_01C 1, _0139
    ScrCmd_002

_0119:
    ScrCmd_186 7, 173, 0x314
    ScrCmd_016 _0149
    ScrCmd_002

_0129:
    ScrCmd_186 7, 174, 0x314
    ScrCmd_016 _0149
    ScrCmd_002

_0139:
    ScrCmd_186 7, 175, 0x314
    ScrCmd_016 _0149
    ScrCmd_002

_0149:
    ScrCmd_01F 0x17A
    ScrCmd_064 7
    ScrCmd_062 7
    ScrCmd_05E 7, _043C
    ScrCmd_05F
    ScrCmd_05E 7, _044C
    ScrCmd_05F
    ScrCmd_014 0x7F8
    ScrCmd_14D 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _018D
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0224
    ScrCmd_002

_018D:
    ScrCmd_0CF 0
    ScrCmd_0CD 1
    ScrCmd_02C 0
    ScrCmd_177 0x800C
    ScrCmd_0D5 0, 0x800C
    ScrCmd_011 0x800C, 4
    ScrCmd_01D 4, _021A
    ScrCmd_011 0x800C, 3
    ScrCmd_01D 3, _021F
    ScrCmd_0CD 0
    ScrCmd_0CE 1
    ScrCmd_02C 3
    ScrCmd_01A _02DB
    ScrCmd_02C 8
    ScrCmd_034
    ScrCmd_01A _0348
    ScrCmd_02C 9
    ScrCmd_01A _036E
    ScrCmd_02C 14
    ScrCmd_01A _0390
    ScrCmd_01A _03C0
    ScrCmd_02C 23
    ScrCmd_034
    ScrCmd_003 30, 0x800C
    ScrCmd_0CD 0
    ScrCmd_01A _041B
    ScrCmd_02C 24
    ScrCmd_034
    ScrCmd_0CE 1
    ScrCmd_01A _042F
    ScrCmd_02C 25
    ScrCmd_034
    ScrCmd_016 _02BB
    ScrCmd_002

_021A:
    ScrCmd_02C 1
    ScrCmd_01B

_021F:
    ScrCmd_02C 2
    ScrCmd_01B

_0224:
    ScrCmd_0CF 0
    ScrCmd_0CD 1
    ScrCmd_02C 4
    ScrCmd_177 0x800C
    ScrCmd_0D5 0, 0x800C
    ScrCmd_011 0x800C, 4
    ScrCmd_01D 4, _02B1
    ScrCmd_011 0x800C, 3
    ScrCmd_01D 3, _02B6
    ScrCmd_0CD 0
    ScrCmd_0CE 1
    ScrCmd_02C 7
    ScrCmd_01A _02DB
    ScrCmd_02C 10
    ScrCmd_034
    ScrCmd_01A _0348
    ScrCmd_02C 11
    ScrCmd_01A _036E
    ScrCmd_02C 15
    ScrCmd_01A _0390
    ScrCmd_01A _03C0
    ScrCmd_02C 26
    ScrCmd_034
    ScrCmd_003 15, 0x800C
    ScrCmd_0CD 0
    ScrCmd_01A _041B
    ScrCmd_02C 27
    ScrCmd_034
    ScrCmd_0CE 1
    ScrCmd_01A _042F
    ScrCmd_02C 28
    ScrCmd_034
    ScrCmd_016 _02BB
    ScrCmd_002

_02B1:
    ScrCmd_02C 5
    ScrCmd_01B

_02B6:
    ScrCmd_02C 6
    ScrCmd_01B

_02BB:
    ScrCmd_05E 7, _0474
    ScrCmd_05E 0xFF, _04F8
    ScrCmd_05F
    ScrCmd_065 7
    ScrCmd_028 0x4077, 1
    ScrCmd_061
    ScrCmd_002

_02DB:
    ScrCmd_034
    ScrCmd_069 0x8004, 0x8005
    ScrCmd_011 0x8004, 173
    ScrCmd_01C 1, _030C
    ScrCmd_011 0x8004, 174
    ScrCmd_01C 1, _0320
    ScrCmd_011 0x8004, 175
    ScrCmd_01C 1, _0334
    ScrCmd_002

_030C:
    ScrCmd_05E 7, _0454
    ScrCmd_05E 0xFF, _04B4
    ScrCmd_05F
    ScrCmd_01B

_0320:
    ScrCmd_05E 7, _046C
    ScrCmd_05E 0xFF, _04D4
    ScrCmd_05F
    ScrCmd_01B

_0334:
    ScrCmd_05E 7, _0460
    ScrCmd_05E 0xFF, _04C4
    ScrCmd_05F
    ScrCmd_01B

_0348:
    ScrCmd_05E 31, _0518
    ScrCmd_05F
    ScrCmd_05E 31, _0544
    ScrCmd_05E 7, _047C
    ScrCmd_05E 0xFF, _04DC
    ScrCmd_05F
    ScrCmd_01B

_036E:
    ScrCmd_05E 31, _0550
    ScrCmd_05F
    ScrCmd_014 0x807
    ScrCmd_02C 12
    ScrCmd_02C 13
    ScrCmd_034
    ScrCmd_05E 7, _0484
    ScrCmd_05F
    ScrCmd_01B

_0390:
    ScrCmd_02C 16
    ScrCmd_02C 17
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _03B6
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _03BB
    ScrCmd_002

_03B6:
    ScrCmd_02C 18
    ScrCmd_01B

_03BB:
    ScrCmd_02C 19
    ScrCmd_01B

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
    ScrCmd_01B

_041B:
    ScrCmd_05E 7, _048C
    ScrCmd_05E 0xFF, _04EC
    ScrCmd_05F
    ScrCmd_01B

_042F:
    ScrCmd_05E 7, _0498
    ScrCmd_05F
    ScrCmd_01B

    .balign 4, 0
_043C:
    .short 13, 4
    .short 75, 1
    .short 65, 1
    .short 0xFE, 0x00

    .balign 4, 0
_044C:
    .short 13, 3
    .short 0xFE, 0x00

    .balign 4, 0
_0454:
    .short 15, 1
    .short 12, 18
    .short 0xFE, 0x00

    .balign 4, 0
_0460:
    .short 14, 1
    .short 12, 18
    .short 0xFE, 0x00

    .balign 4, 0
_046C:
    .short 12, 18
    .short 0xFE, 0x00

    .balign 4, 0
_0474:
    .short 13, 9
    .short 0xFE, 0x00

    .balign 4, 0
_047C:
    .short 12, 2
    .short 0xFE, 0x00

    .balign 4, 0
_0484:
    .short 32, 1
    .short 0xFE, 0x00

    .balign 4, 0
_048C:
    .short 13, 1
    .short 14, 2
    .short 0xFE, 0x00

    .balign 4, 0
_0498:
    .short 12, 1
    .short 15, 2
    .short 0xFE, 0x00

    .balign 4, 0
_04A4:
    .short 35, 1
    .short 63, 4
    .short 32, 1
    .short 0xFE, 0x00

    .balign 4, 0
_04B4:
    .short 12, 1
    .short 15, 1
    .short 12, 17
    .short 0xFE, 0x00

    .balign 4, 0
_04C4:
    .short 12, 1
    .short 14, 1
    .short 12, 17
    .short 0xFE, 0x00

    .balign 4, 0
_04D4:
    .short 12, 18
    .short 0xFE, 0x00

    .balign 4, 0
_04DC:
    .short 12, 2
    .short 15, 1
    .short 12, 1
    .short 0xFE, 0x00

    .balign 4, 0
_04EC:
    .short 62, 1
    .short 34, 1
    .short 0xFE, 0x00

    .balign 4, 0
_04F8:
    .short 63, 1
    .short 33, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0504:
    .short 63, 1
    .short 35, 1
    .short 63, 3
    .short 32, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0518:
    .short 38, 1
    .short 63, 2
    .short 37, 1
    .short 63, 1
    .short 10, 1
    .short 18, 5
    .short 39, 1
    .short 63, 1
    .short 36, 1
    .short 63, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0544:
    .short 11, 1
    .short 19, 2
    .short 0xFE, 0x00

    .balign 4, 0
_0550:
    .short 37, 1
    .short 75, 1
    .short 0xFE, 0x00

    .balign 4, 0
_055C:
    .short 38, 1
    .short 63, 1
    .short 39, 1
    .short 63, 2
    .short 37, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0574:
    .short 19, 3
    .short 38, 1
    .short 63, 1
    .short 8, 1
    .short 16, 7
    .short 0xFE, 0x00

_058C:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_15B 0, 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _05B2
    ScrCmd_02C 29
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_05B2:
    ScrCmd_02C 30
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_05BD:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 92
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_05D0:
    ScrCmd_060
    ScrCmd_069 0x8004, 0x8005
    ScrCmd_011 0x8005, 0x30B
    ScrCmd_01C 1, _0601
    ScrCmd_011 0x8005, 0x30C
    ScrCmd_01C 1, _062A
    ScrCmd_011 0x8005, 0x30D
    ScrCmd_01C 1, _0653
    ScrCmd_002

_0601:
    ScrCmd_05E 26, _0680
    ScrCmd_05F
    ScrCmd_02C 91
    ScrCmd_034
    ScrCmd_05E 26, _06B0
    ScrCmd_05E 0xFF, _06F8
    ScrCmd_05F
    ScrCmd_016 _067C
    ScrCmd_002

_062A:
    ScrCmd_05E 26, _0690
    ScrCmd_05F
    ScrCmd_02C 91
    ScrCmd_034
    ScrCmd_05E 26, _06C8
    ScrCmd_05E 0xFF, _06F8
    ScrCmd_05F
    ScrCmd_016 _067C
    ScrCmd_002

_0653:
    ScrCmd_05E 26, _06A0
    ScrCmd_05F
    ScrCmd_02C 91
    ScrCmd_034
    ScrCmd_05E 26, _06E0
    ScrCmd_05E 0xFF, _06F8
    ScrCmd_05F
    ScrCmd_016 _067C
    ScrCmd_002

_067C:
    ScrCmd_061
    ScrCmd_002

    .balign 4, 0
_0680:
    .short 75, 1
    .short 13, 1
    .short 35, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0690:
    .short 75, 1
    .short 13, 2
    .short 35, 1
    .short 0xFE, 0x00

    .balign 4, 0
_06A0:
    .short 75, 1
    .short 13, 3
    .short 35, 1
    .short 0xFE, 0x00

    .balign 4, 0
_06B0:
    .short 15, 1
    .short 63, 2
    .short 14, 1
    .short 12, 1
    .short 33, 1
    .short 0xFE, 0x00

    .balign 4, 0
_06C8:
    .short 15, 1
    .short 63, 2
    .short 14, 1
    .short 12, 2
    .short 33, 1
    .short 0xFE, 0x00

    .balign 4, 0
_06E0:
    .short 15, 1
    .short 63, 2
    .short 14, 1
    .short 12, 3
    .short 33, 1
    .short 0xFE, 0x00

    .balign 4, 0
_06F8:
    .short 15, 1
    .short 0xFE, 0x00

_0700:
    ScrCmd_060
    ScrCmd_069 0x8004, 0x8005
    ScrCmd_011 0x8005, 0x2F5
    ScrCmd_01C 1, _073E
    ScrCmd_011 0x8005, 0x2F6
    ScrCmd_01C 1, _0758
    ScrCmd_011 0x8005, 0x2F7
    ScrCmd_01C 1, _0772
    ScrCmd_011 0x8005, 0x2F8
    ScrCmd_01C 1, _078C
    ScrCmd_002

_073E:
    ScrCmd_05E 0xFF, _0894
    ScrCmd_05E 31, _08B4
    ScrCmd_05F
    ScrCmd_016 _07A6
    ScrCmd_002

_0758:
    ScrCmd_05E 0xFF, _0894
    ScrCmd_05E 31, _08CC
    ScrCmd_05F
    ScrCmd_016 _07A6
    ScrCmd_002

_0772:
    ScrCmd_05E 0xFF, _0894
    ScrCmd_05E 31, _08E4
    ScrCmd_05F
    ScrCmd_016 _07A6
    ScrCmd_002

_078C:
    ScrCmd_05E 0xFF, _0894
    ScrCmd_05E 31, _08FC
    ScrCmd_05F
    ScrCmd_016 _07A6
    ScrCmd_002

_07A6:
    ScrCmd_01A _07FC
    ScrCmd_034
    ScrCmd_05E 0xFF, _08AC
    ScrCmd_05E 31, _0914
    ScrCmd_05F
    ScrCmd_069 0x8004, 0x8005
    ScrCmd_011 0x8005, 0x2F5
    ScrCmd_01C 1, _0846
    ScrCmd_011 0x8005, 0x2F6
    ScrCmd_01C 1, _0858
    ScrCmd_011 0x8005, 0x2F7
    ScrCmd_01C 1, _086A
    ScrCmd_011 0x8005, 0x2F8
    ScrCmd_01C 1, _087C
    ScrCmd_002

_07FC:
    ScrCmd_020 241
    ScrCmd_01C 0, _0817
    ScrCmd_020 243
    ScrCmd_01C 0, _081C
    ScrCmd_02C 35
    ScrCmd_01B

_0817:
    ScrCmd_02C 32
    ScrCmd_01B

_081C:
    ScrCmd_02C 34
    ScrCmd_01B

_0821:
    ScrCmd_020 241
    ScrCmd_01C 0, _083C
    ScrCmd_020 243
    ScrCmd_01C 0, _0841
    ScrCmd_02C 35
    ScrCmd_01B

_083C:
    ScrCmd_02C 31
    ScrCmd_01B

_0841:
    ScrCmd_02C 33
    ScrCmd_01B

_0846:
    ScrCmd_05E 31, _0924
    ScrCmd_05F
    ScrCmd_016 _088E
    ScrCmd_002

_0858:
    ScrCmd_05E 31, _0930
    ScrCmd_05F
    ScrCmd_016 _088E
    ScrCmd_002

_086A:
    ScrCmd_05E 31, _093C
    ScrCmd_05F
    ScrCmd_016 _088E
    ScrCmd_002

_087C:
    ScrCmd_05E 31, _0948
    ScrCmd_05F
    ScrCmd_016 _088E
    ScrCmd_002

_088E:
    ScrCmd_061
    ScrCmd_002

    .balign 4, 0
_0894:
    .short 63, 5
    .short 34, 1
    .short 0xFE, 0x00

    .balign 4, 0
_08A0:
    .short 63, 5
    .short 2, 1
    .short 0xFE, 0x00

    .balign 4, 0
_08AC:
    .short 14, 1
    .short 0xFE, 0x00

    .balign 4, 0
_08B4:
    .short 1, 1
    .short 75, 1
    .short 65, 1
    .short 13, 1
    .short 15, 1
    .short 0xFE, 0x00

    .balign 4, 0
_08CC:
    .short 1, 1
    .short 75, 1
    .short 65, 1
    .short 13, 2
    .short 15, 1
    .short 0xFE, 0x00

    .balign 4, 0
_08E4:
    .short 1, 1
    .short 75, 1
    .short 65, 1
    .short 13, 3
    .short 15, 1
    .short 0xFE, 0x00

    .balign 4, 0
_08FC:
    .short 1, 1
    .short 75, 1
    .short 65, 1
    .short 13, 4
    .short 15, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0914:
    .short 71, 1
    .short 14, 1
    .short 72, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0924:
    .short 12, 1
    .short 33, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0930:
    .short 12, 2
    .short 33, 1
    .short 0xFE, 0x00

    .balign 4, 0
_093C:
    .short 12, 3
    .short 33, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0948:
    .short 12, 4
    .short 33, 1
    .short 0xFE, 0x00

_0954:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_020 243
    ScrCmd_01C 1, _097F
    ScrCmd_01A _0821
    ScrCmd_030
    ScrCmd_034
    ScrCmd_05E 31, _09D4
    ScrCmd_05F
    ScrCmd_061
    ScrCmd_002

_097F:
    ScrCmd_02C 35
    ScrCmd_030
    ScrCmd_034
    ScrCmd_05E 31, _09D4
    ScrCmd_05F
    ScrCmd_061
    ScrCmd_002

_0994:
    ScrCmd_07E 0x1B5, 1, 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _09BD
    ScrCmd_02C 36
    ScrCmd_034
    ScrCmd_05E 31, _1558
    ScrCmd_05F
    ScrCmd_02C 38
    ScrCmd_01B

_09BD:
    ScrCmd_02C 37
    ScrCmd_034
    ScrCmd_05E 31, _1558
    ScrCmd_05F
    ScrCmd_02C 38
    ScrCmd_01B

    .balign 4, 0
_09D4:
    .short 1, 1
    .short 0xFE, 0x00

_09DC:
    ScrCmd_060
    ScrCmd_05E 18, _0E94
    ScrCmd_05F
    ScrCmd_02C 64
    ScrCmd_034
    ScrCmd_069 0x8000, 0x8001
    ScrCmd_011 0x8000, 173
    ScrCmd_01C 1, _0A1C
    ScrCmd_011 0x8000, 174
    ScrCmd_01C 1, _0A36
    ScrCmd_011 0x8000, 175
    ScrCmd_01C 1, _0A50
    ScrCmd_002

_0A1C:
    ScrCmd_05E 16, _0EBC
    ScrCmd_05E 0xFF, _0DD0
    ScrCmd_05F
    ScrCmd_016 _0A6A
    ScrCmd_002

_0A36:
    ScrCmd_05E 16, _0EBC
    ScrCmd_05E 0xFF, _0DE4
    ScrCmd_05F
    ScrCmd_016 _0A6A
    ScrCmd_002

_0A50:
    ScrCmd_05E 16, _0EBC
    ScrCmd_05E 0xFF, _0DF8
    ScrCmd_05F
    ScrCmd_016 _0A6A
    ScrCmd_002

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
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0ADC
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0AED
    ScrCmd_002

_0ADC:
    ScrCmd_0CF 0
    ScrCmd_0CD 1
    ScrCmd_02C 71
    ScrCmd_016 _0AFE
    ScrCmd_002

_0AED:
    ScrCmd_0CF 0
    ScrCmd_0CD 1
    ScrCmd_02C 72
    ScrCmd_016 _0AFE
    ScrCmd_002

_0AFE:
    ScrCmd_034
    ScrCmd_05E 16, _0F00
    ScrCmd_05F
    ScrCmd_05E 7, _0E4C
    ScrCmd_05E 0xFF, _0F30
    ScrCmd_05F
    ScrCmd_01A _0BAA
    ScrCmd_2A0 0x8004, 0x19E, 0x19F
    ScrCmd_0EC 0x800C
    ScrCmd_011 0x800C, 0
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
    ScrCmd_01E 0x19C
    ScrCmd_05E 16, _0EF8
    ScrCmd_05E 7, _0E54
    ScrCmd_05F
    ScrCmd_0CD 0
    ScrCmd_02C 74
    ScrCmd_05E 7, _0E60
    ScrCmd_05F
    ScrCmd_14D 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0C30
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0C41
    ScrCmd_002

_0BAA:
    ScrCmd_14D 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0BCA
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0BFC
    ScrCmd_002

_0BCA:
    ScrCmd_0DE 0x800C
    ScrCmd_028 0x8004, 0x268
    ScrCmd_011 0x800C, 0x186
    ScrCmd_01C 1, _0C2E
    ScrCmd_028 0x8004, 0x269
    ScrCmd_011 0x800C, 0x189
    ScrCmd_01C 1, _0C2E
    ScrCmd_028 0x8004, 0x26A
    ScrCmd_01B

_0BFC:
    ScrCmd_0DE 0x800C
    ScrCmd_028 0x8004, 0x265
    ScrCmd_011 0x800C, 0x186
    ScrCmd_01C 1, _0C2E
    ScrCmd_028 0x8004, 0x266
    ScrCmd_011 0x800C, 0x189
    ScrCmd_01C 1, _0C2E
    ScrCmd_028 0x8004, 0x267
    ScrCmd_01B

_0C2E:
    ScrCmd_01B

_0C30:
    ScrCmd_0CF 0
    ScrCmd_0CD 1
    ScrCmd_02C 75
    ScrCmd_016 _0C52
    ScrCmd_002

_0C41:
    ScrCmd_0CF 0
    ScrCmd_0CD 1
    ScrCmd_02C 76
    ScrCmd_016 _0C52
    ScrCmd_002

_0C52:
    ScrCmd_0CD 0
    ScrCmd_02C 77
    ScrCmd_034
    ScrCmd_05E 7, _0E68
    ScrCmd_05E 16, _0ED8
    ScrCmd_05E 0xFF, _0E08
    ScrCmd_05F
    ScrCmd_016 _0C7C
    ScrCmd_002

_0C7C:
    ScrCmd_065 7
    ScrCmd_065 16
    ScrCmd_01F 0x198
    ScrCmd_028 0x4077, 4
    ScrCmd_028 0x4076, 2
    ScrCmd_028 0x4079, 3
    ScrCmd_065 24
    ScrCmd_065 25
    ScrCmd_065 27
    ScrCmd_186 30, 174, 0x2EE
    ScrCmd_188 30, 14
    ScrCmd_01F 0x18B
    ScrCmd_064 30
    ScrCmd_062 30
    ScrCmd_05E 30, _0DC0
    ScrCmd_05F
    ScrCmd_02C 78
    ScrCmd_01A _0CF0
    ScrCmd_02C 79
    ScrCmd_034
    ScrCmd_003 15, 0x800C
    ScrCmd_05E 30, _0DC8
    ScrCmd_05F
    ScrCmd_065 30
    ScrCmd_061
    ScrCmd_002

_0CF0:
    ScrCmd_028 0x8004, 0x1B3
    ScrCmd_028 0x8005, 1
    ScrCmd_014 0x7FC
    ScrCmd_01E 242
    ScrCmd_01A _0D58
    ScrCmd_01A _0D58
    ScrCmd_01A _0D58
    ScrCmd_01A _0D58
    ScrCmd_01A _0D58
    ScrCmd_01A _0D72
    ScrCmd_01A _0D72
    ScrCmd_01A _0D72
    ScrCmd_01A _0D72
    ScrCmd_01A _0D72
    ScrCmd_1D5 0
    ScrCmd_028 0x4001, 0x270F
    ScrCmd_01A _0D8C
    ScrCmd_01A _0D8C
    ScrCmd_01B

_0D58:
    ScrCmd_1B7 0x800C, 6
    ScrCmd_028 0x8004, 0
    ScrCmd_026 0x8004, 0x800C
    ScrCmd_1D2 0x8004, 1
    ScrCmd_01B

_0D72:
    ScrCmd_1B7 0x800C, 6
    ScrCmd_028 0x8004, 18
    ScrCmd_026 0x8004, 0x800C
    ScrCmd_1D2 0x8004, 1
    ScrCmd_01B

_0D8C:
    ScrCmd_1B7 0x800C, 8
    ScrCmd_012 0x4001, 0x800C
    ScrCmd_01C 1, _0D8C
    ScrCmd_029 0x4001, 0x800C
    ScrCmd_028 0x8004, 1
    ScrCmd_026 0x8004, 0x800C
    ScrCmd_1D5 0x8004
    ScrCmd_01B

_0DB7:
    ScrCmd_0EB
    ScrCmd_061
    ScrCmd_002

    .balign 4, 0
_0DC0:
    .short 12, 8
    .short 0xFE, 0x00

    .balign 4, 0
_0DC8:
    .short 13, 8
    .short 0xFE, 0x00

    .balign 4, 0
_0DD0:
    .short 63, 2
    .short 12, 1
    .short 15, 2
    .short 12, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0DE4:
    .short 63, 2
    .short 12, 1
    .short 15, 1
    .short 12, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0DF8:
    .short 63, 2
    .short 12, 2
    .short 32, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0E08:
    .short 63, 1
    .short 35, 1
    .short 63, 1
    .short 33, 1
    .short 0xFE, 0x00

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
    .short 33, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0E4C:
    .short 14, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0E54:
    .short 14, 1
    .short 13, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0E60:
    .short 33, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0E68:
    .short 15, 1
    .short 13, 9
    .short 0xFE, 0x00

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
    .short 35, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0E9C:
    .short 39, 2
    .short 0xFE, 0x00

    .balign 4, 0
_0EA4:
    .short 16, 9
    .short 0xFE, 0x00

    .balign 4, 0
_0EAC:
    .short 16, 10
    .short 0xFE, 0x00

    .balign 4, 0
_0EB4:
    .short 35, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0EBC:
    .short 33, 1
    .short 75, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0EC8:
    .short 38, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0ED0:
    .short 33, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0ED8:
    .short 13, 9
    .short 0xFE, 0x00

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
    .short 33, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0F00:
    .short 34, 1
    .short 0xFE, 0x00

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
    .short 14, 1
    .short 32, 1
    .short 0xFE, 0x00

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
    ScrCmd_011 0x8008, 0
    ScrCmd_01C 1, _0F97
    ScrCmd_011 0x8008, 1
    ScrCmd_01C 1, _0FA2
    ScrCmd_02C 83
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0F97:
    ScrCmd_02C 81
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0FA2:
    ScrCmd_02C 82
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0FAD:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 84
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0FC0:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 87
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0FD3:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 85
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0FE6:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 88
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _1011
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _101C
    ScrCmd_002

_1011:
    ScrCmd_02C 89
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_101C:
    ScrCmd_02C 90
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_1027:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 86
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_103A:
    ScrCmd_036 95, 0, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    ScrCmd_002

_1051:
    ScrCmd_036 96, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    ScrCmd_002

_1068:
    ScrCmd_036 97, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    ScrCmd_002

_107F:
    ScrCmd_036 98, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    ScrCmd_002

_1096:
    ScrCmd_036 99, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    ScrCmd_002

_10AD:
    ScrCmd_036 100, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    ScrCmd_002

_10C4:
    ScrCmd_060
    ScrCmd_05E 23, _1178
    ScrCmd_05E 0xFF, _1170
    ScrCmd_05F
    ScrCmd_069 0x8004, 0x8005
    ScrCmd_011 0x8004, 172
    ScrCmd_01D 1, _1133
    ScrCmd_011 0x8004, 173
    ScrCmd_01D 1, _113F
    ScrCmd_011 0x8004, 174
    ScrCmd_01D 1, _114B
    ScrCmd_011 0x8004, 175
    ScrCmd_01D 1, _1157
    ScrCmd_011 0x8004, 176
    ScrCmd_01D 1, _1163
    ScrCmd_02C 39
    ScrCmd_028 0x40E7, 2
    ScrCmd_02C 40
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_1133:
    ScrCmd_05E 23, _1184
    ScrCmd_05F
    ScrCmd_01B

_113F:
    ScrCmd_05E 23, _1194
    ScrCmd_05F
    ScrCmd_01B

_114B:
    ScrCmd_05E 23, _11A4
    ScrCmd_05F
    ScrCmd_01B

_1157:
    ScrCmd_05E 23, _11AC
    ScrCmd_05F
    ScrCmd_01B

_1163:
    ScrCmd_05E 23, _11BC
    ScrCmd_05F
    ScrCmd_01B

    .balign 4, 0
_1170:
    .short 0, 1
    .short 0xFE, 0x00

    .balign 4, 0
_1178:
    .short 33, 1
    .short 75, 1
    .short 0xFE, 0x00

    .balign 4, 0
_1184:
    .short 13, 2
    .short 14, 2
    .short 13, 2
    .short 0xFE, 0x00

    .balign 4, 0
_1194:
    .short 13, 2
    .short 14, 1
    .short 13, 2
    .short 0xFE, 0x00

    .balign 4, 0
_11A4:
    .short 13, 4
    .short 0xFE, 0x00

    .balign 4, 0
_11AC:
    .short 13, 2
    .short 15, 1
    .short 13, 2
    .short 0xFE, 0x00

    .balign 4, 0
_11BC:
    .short 13, 2
    .short 15, 2
    .short 13, 2
    .short 0xFE, 0x00

_11CC:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_028 0x8004, 0
    ScrCmd_01A _11F8
    ScrCmd_011 0x8004, 3
    ScrCmd_01C 1, _1223
    ScrCmd_02C 41
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_11F8:
    ScrCmd_020 237
    ScrCmd_01D 1, _121B
    ScrCmd_020 238
    ScrCmd_01D 1, _121B
    ScrCmd_020 239
    ScrCmd_01D 1, _121B
    ScrCmd_01B

_121B:
    ScrCmd_026 0x8004, 1
    ScrCmd_01B

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
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _12A1
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _12BB
    ScrCmd_011 0x800C, 2
    ScrCmd_01C 1, _12A1
    ScrCmd_011 0x800C, 3
    ScrCmd_01C 1, _12A1
    ScrCmd_002

_12A1:
    ScrCmd_05E 23, _12FC
    ScrCmd_05E 0xFF, _1314
    ScrCmd_05F
    ScrCmd_016 _12D5
    ScrCmd_002

_12BB:
    ScrCmd_05E 23, _12F0
    ScrCmd_05E 0xFF, _1304
    ScrCmd_05F
    ScrCmd_016 _12D5
    ScrCmd_002

_12D5:
    ScrCmd_065 23
    ScrCmd_01E 243
    ScrCmd_01F 0x1F7
    ScrCmd_065 31
    ScrCmd_01E 0x181
    ScrCmd_061
    ScrCmd_002

    .balign 4, 0
_12F0:
    .short 14, 1
    .short 12, 9
    .short 0xFE, 0x00

    .balign 4, 0
_12FC:
    .short 12, 9
    .short 0xFE, 0x00

    .balign 4, 0
_1304:
    .short 63, 1
    .short 34, 1
    .short 32, 1
    .short 0xFE, 0x00

    .balign 4, 0
_1314:
    .short 63, 1
    .short 32, 1
    .short 0xFE, 0x00

_1320:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_020 237
    ScrCmd_01C 1, _138C
    ScrCmd_02C 45
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _1356
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _137D
    ScrCmd_002

_1356:
    ScrCmd_049 0x5F1
    ScrCmd_02C 46
    ScrCmd_02C 48
    ScrCmd_02C 49
    ScrCmd_028 0x8004, 0x1CC
    ScrCmd_028 0x8005, 1
    ScrCmd_01E 237
    ScrCmd_014 0x7E0
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_137D:
    ScrCmd_049 0x5F3
    ScrCmd_02C 47
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_138C:
    ScrCmd_02C 50
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_1397:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_020 238
    ScrCmd_01C 1, _1403
    ScrCmd_02C 51
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _13CD
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _13F4
    ScrCmd_002

_13CD:
    ScrCmd_049 0x5F1
    ScrCmd_02C 52
    ScrCmd_02C 54
    ScrCmd_02C 55
    ScrCmd_028 0x8004, 0x1CD
    ScrCmd_028 0x8005, 1
    ScrCmd_01E 238
    ScrCmd_014 0x7E0
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_13F4:
    ScrCmd_049 0x5F3
    ScrCmd_02C 53
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_1403:
    ScrCmd_02C 56
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_140E:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_011 0x40E7, 2
    ScrCmd_01C 0, _149E
    ScrCmd_020 239
    ScrCmd_01C 1, _1493
    ScrCmd_02C 57
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _1451
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _1484
    ScrCmd_002

_1451:
    ScrCmd_049 0x5F1
    ScrCmd_02C 58
    ScrCmd_02C 60
    ScrCmd_02C 61
    ScrCmd_187 23, 174, 1, 0x303, 1
    ScrCmd_028 0x8004, 0x1CE
    ScrCmd_028 0x8005, 1
    ScrCmd_01E 239
    ScrCmd_014 0x7E0
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_1484:
    ScrCmd_049 0x5F3
    ScrCmd_02C 59
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_1493:
    ScrCmd_02C 63
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_149E:
    ScrCmd_02C 62
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_14A9:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 93
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_14BC:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 94
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_14CF:
    ScrCmd_060
    ScrCmd_069 0x8004, 0x8005
    ScrCmd_186 31, 179, 0x8005
    ScrCmd_189 31, 3
    ScrCmd_188 31, 17
    ScrCmd_01F 0x181
    ScrCmd_064 31
    ScrCmd_05E 31, _1538
    ScrCmd_05F
    ScrCmd_014 0x807
    ScrCmd_05E 31, _1544
    ScrCmd_05E 0xFF, _08A0
    ScrCmd_05F
    ScrCmd_01A _0994
    ScrCmd_034
    ScrCmd_05E 31, _154C
    ScrCmd_05F
    ScrCmd_065 31
    ScrCmd_014 0x808
    ScrCmd_028 0x4076, 2
    ScrCmd_061
    ScrCmd_002

    .balign 4, 0
_1538:
    .short 11, 2
    .short 75, 1
    .short 0xFE, 0x00

    .balign 4, 0
_1544:
    .short 19, 6
    .short 0xFE, 0x00

    .balign 4, 0
_154C:
    .short 10, 1
    .short 18, 8
    .short 0xFE, 0x00

    .balign 4, 0
_1558:
    .short 34, 1
    .short 63, 2
    .short 35, 1
    .short 0xFE, 0x00
