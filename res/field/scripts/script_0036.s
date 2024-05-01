    .include "macros/scrcmd.inc"

    .data

    .long _0066-.-4
    .long _01F9-.-4
    .long _0364-.-4
    .long _0377-.-4
    .long _03C8-.-4
    .long _04D4-.-4
    .long _04E7-.-4
    .long _0520-.-4
    .long _054D-.-4
    .long _05A9-.-4
    .long _05CE-.-4
    .long _05F3-.-4
    .long _0624-.-4
    .long _0649-.-4
    .long _0660-.-4
    .long _0675-.-4
    .long _068C-.-4
    .long _06A3-.-4
    .long _06BA-.-4
    .long _0708-.-4
    .long _06F7-.-4
    .long _0900-.-4
    .long _0959-.-4
    .long _01D2-.-4
    .long _09BC-.-4
    .short 0xFD13

_0066:
    ScrCmd_01E 0x1BD
    ScrCmd_011 0x40F8, 2
    ScrCmd_01D 1, _00F8
    ScrCmd_011 0x40F8, 3
    ScrCmd_01D 1, _0100
    ScrCmd_01A _0168
    ScrCmd_011 0x4000, 0
    ScrCmd_01D 1, _01E7
    ScrCmd_011 0x4000, 1
    ScrCmd_01D 1, _0116
    ScrCmd_011 0x4078, 1
    ScrCmd_01D 1, _0132
    ScrCmd_011 0x4078, 2
    ScrCmd_01D 1, _0132
    ScrCmd_011 0x4078, 4
    ScrCmd_01D 1, _011C
    ScrCmd_011 0x4078, 5
    ScrCmd_01D 1, _0158
    ScrCmd_14D 0x4000
    ScrCmd_011 0x4000, 0
    ScrCmd_01C 1, _0148
    ScrCmd_011 0x4000, 1
    ScrCmd_01C 1, _0150
    End

_00F8:
    ScrCmd_028 0x40F8, 0
    ScrCmd_01B

_0100:
    ScrCmd_186 16, 55, 0x2CC
    ScrCmd_189 16, 3
    ScrCmd_188 16, 17
    ScrCmd_01B

_0116:
    ScrCmd_01F 0x240
    ScrCmd_01B

_011C:
    ScrCmd_186 11, 37, 0x2D1
    ScrCmd_189 11, 1
    ScrCmd_188 11, 15
    ScrCmd_01B

_0132:
    ScrCmd_186 11, 39, 0x2DD
    ScrCmd_189 11, 0
    ScrCmd_188 11, 14
    ScrCmd_01B

_0148:
    ScrCmd_028 0x4020, 97
    End

_0150:
    ScrCmd_028 0x4020, 0
    End

_0158:
    ScrCmd_01E 0x1B3
    ScrCmd_01E 0x1B5
    ScrCmd_028 0x4078, 6
    ScrCmd_01B

_0168:
    ScrCmd_020 0x158
    ScrCmd_01C 1, _01CA
    ScrCmd_020 0x964
    ScrCmd_01C 0, _01CA
    ScrCmd_22D 2, 0x4000
    ScrCmd_011 0x4000, 0
    ScrCmd_01C 1, _01CA
    ScrCmd_07E 0x1C6, 1, 0x4000
    ScrCmd_011 0x4000, 0
    ScrCmd_01C 1, _01CA
    ScrCmd_28B 0, 0x4000
    ScrCmd_011 0x4000, 0
    ScrCmd_01C 1, _01CA
    ScrCmd_020 0x12C
    ScrCmd_01C 0, _01CA
    ScrCmd_028 0x4000, 1
    ScrCmd_01B

_01CA:
    ScrCmd_028 0x4000, 0
    ScrCmd_01B

_01D2:
    ScrCmd_01A _0168
    ScrCmd_011 0x4000, 0
    ScrCmd_01D 1, _01E7
    End

_01E7:
    ScrCmd_18B 0, 58, 0x2C9
    ScrCmd_18A 5, 59, 0x2C8
    ScrCmd_01B

_01F9:
    ScrCmd_060
    ScrCmd_069 0x8004, 0x8005
    ScrCmd_011 0x8005, 0x2D3
    ScrCmd_01C 1, _0244
    ScrCmd_011 0x8005, 0x2D4
    ScrCmd_01C 1, _0252
    ScrCmd_011 0x8005, 0x2D5
    ScrCmd_01C 1, _0260
    ScrCmd_011 0x8005, 0x2D6
    ScrCmd_01C 1, _026E
    ScrCmd_011 0x8005, 0x2D7
    ScrCmd_01C 1, _027C
    End

_0244:
    ScrCmd_186 11, 38, 0x2D3
    ScrCmd_016 _028A

_0252:
    ScrCmd_186 11, 38, 0x2D4
    ScrCmd_016 _028A

_0260:
    ScrCmd_186 11, 38, 0x2D5
    ScrCmd_016 _028A

_026E:
    ScrCmd_186 11, 38, 0x2D6
    ScrCmd_016 _028A

_027C:
    ScrCmd_186 11, 38, 0x2D7
    ScrCmd_016 _028A

_028A:
    ScrCmd_188 11, 17
    ScrCmd_01F 0x1B2
    ScrCmd_064 11
    ScrCmd_05E 11, _0340
    ScrCmd_05F
    ScrCmd_014 0x7FA
    ScrCmd_05E 11, _0354
    ScrCmd_05F
    ScrCmd_0CE 0
    ScrCmd_0CD 1
    ScrCmd_02C 0
    ScrCmd_034
    ScrCmd_0DE 0x800C
    ScrCmd_011 0x800C, 0x183
    ScrCmd_01C 1, _02EB
    ScrCmd_011 0x800C, 0x186
    ScrCmd_01C 1, _02F7
    ScrCmd_016 _02DF

_02DF:
    ScrCmd_0E5 0x1DC, 0
    ScrCmd_016 _0303

_02EB:
    ScrCmd_0E5 0x1DD, 0
    ScrCmd_016 _0303

_02F7:
    ScrCmd_0E5 0x1DE, 0
    ScrCmd_016 _0303

_0303:
    ScrCmd_0EC 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0334
    ScrCmd_0CE 0
    ScrCmd_02C 1
    ScrCmd_034
    ScrCmd_05E 11, _035C
    ScrCmd_05F
    ScrCmd_065 11
    ScrCmd_028 0x4078, 1
    ScrCmd_061
    End

_0334:
    ScrCmd_01E 0x1B2
    ScrCmd_0EB
    ScrCmd_061
    End

    .balign 4, 0
_0340:
    MoveAction_013 4
    MoveAction_03F
    MoveAction_04B
    MoveAction_03F
    EndMovement

    .balign 4, 0
_0354:
    MoveAction_013 4
    EndMovement

    .balign 4, 0
_035C:
    MoveAction_012 9
    EndMovement

_0364:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0377:
    ScrCmd_060
    ScrCmd_0CE 0
    ScrCmd_0CD 1
    ScrCmd_02C 2
    ScrCmd_034
    ScrCmd_05E 11, _03AC
    ScrCmd_05E 0xFF, _03BC
    ScrCmd_05F
    ScrCmd_065 11
    ScrCmd_028 0x4078, 3
    ScrCmd_028 0x40B2, 1
    ScrCmd_061
    End

    .balign 4, 0
_03AC:
    MoveAction_011
    MoveAction_012 5
    MoveAction_010 10
    EndMovement

    .balign 4, 0
_03BC:
    MoveAction_03F
    MoveAction_022
    EndMovement

_03C8:
    ScrCmd_060
    ScrCmd_05E 13, _0498
    ScrCmd_05F
    ScrCmd_02C 5
    ScrCmd_034
    ScrCmd_01F 0x1B4
    ScrCmd_064 14
    ScrCmd_062 14
    ScrCmd_05E 14, _04AC
    ScrCmd_05F
    ScrCmd_02C 6
    ScrCmd_034
    ScrCmd_05E 14, _04B8
    ScrCmd_05F
    ScrCmd_065 14
    ScrCmd_05E 11, _04C0
    ScrCmd_05F
    ScrCmd_0CE 0
    ScrCmd_02C 7
    ScrCmd_034
    ScrCmd_05E 11, _04C8
    ScrCmd_05F
    ScrCmd_065 11
    ScrCmd_05E 13, _04A0
    ScrCmd_05F
    ScrCmd_0CE 0
    ScrCmd_0CD 1
    ScrCmd_02C 8
    ScrCmd_034
    ScrCmd_05E 12, _0490
    ScrCmd_05F
    ScrCmd_003 15, 0x800C
    ScrCmd_14D 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _045E
    ScrCmd_016 _046A

_045E:
    ScrCmd_0CD 0
    ScrCmd_02C 9
    ScrCmd_016 _0473

_046A:
    ScrCmd_02C 10
    ScrCmd_016 _0473

_0473:
    ScrCmd_031
    ScrCmd_034
    ScrCmd_028 0x4078, 5
    ScrCmd_01F 0x194
    ScrCmd_01F 0x175
    ScrCmd_01F 0x293
    ScrCmd_061
    End

    .balign 4, 0
_0490:
    MoveAction_022
    EndMovement

    .balign 4, 0
_0498:
    MoveAction_021
    EndMovement

    .balign 4, 0
_04A0:
    MoveAction_03F 2
    MoveAction_020
    EndMovement

    .balign 4, 0
_04AC:
    MoveAction_012 5
    MoveAction_010 2
    EndMovement

    .balign 4, 0
_04B8:
    MoveAction_011 6
    EndMovement

    .balign 4, 0
_04C0:
    MoveAction_020
    EndMovement

    .balign 4, 0
_04C8:
    MoveAction_011 3
    MoveAction_013 9
    EndMovement

_04D4:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 13
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_04E7:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_14D 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0506
    ScrCmd_016 _050F

_0506:
    ScrCmd_02C 11
    ScrCmd_016 _0518

_050F:
    ScrCmd_02C 12
    ScrCmd_016 _0518

_0518:
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0520:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_020 168
    ScrCmd_01C 1, _053C
    ScrCmd_02C 14
    ScrCmd_016 _0545

_053C:
    ScrCmd_02C 15
    ScrCmd_016 _0545

_0545:
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_054D:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_020 168
    ScrCmd_01C 1, _0586
    ScrCmd_15B 5, 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0591
    ScrCmd_016 _057B
    End

_057B:
    ScrCmd_02C 16
    ScrCmd_016 _0545
    End

_0586:
    ScrCmd_02C 17
    ScrCmd_016 _0545
    End

_0591:
    ScrCmd_011 0x4078, 5
    ScrCmd_01C 4, _057B
    ScrCmd_02C 18
    ScrCmd_016 _0545
    End

_05A9:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_020 168
    ScrCmd_01C 1, _05C5
    ScrCmd_02C 19
    ScrCmd_016 _0545

_05C5:
    ScrCmd_02C 20
    ScrCmd_016 _0545

_05CE:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_020 168
    ScrCmd_01C 1, _05EA
    ScrCmd_02C 21
    ScrCmd_016 _0545

_05EA:
    ScrCmd_02C 22
    ScrCmd_016 _0545

_05F3:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_020 168
    ScrCmd_01C 1, _0615
    ScrCmd_04C 54, 0
    ScrCmd_02C 23
    ScrCmd_016 _0545

_0615:
    ScrCmd_04C 54, 0
    ScrCmd_02C 24
    ScrCmd_016 _0545

_0624:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_020 168
    ScrCmd_01C 1, _0640
    ScrCmd_02C 25
    ScrCmd_016 _0545

_0640:
    ScrCmd_02C 26
    ScrCmd_016 _0545

_0649:
    ScrCmd_036 36, 0, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    End

_0660:
    ScrCmd_037 3, 0
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03A 37, 0x800C
    ScrCmd_014 0x7D0
    End

_0675:
    ScrCmd_036 38, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    End

_068C:
    ScrCmd_036 39, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    End

_06A3:
    ScrCmd_036 40, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    End

_06BA:
    ScrCmd_01A _0168
    ScrCmd_011 0x4000, 0
    ScrCmd_01C 1, _06E2
    ScrCmd_037 3, 0
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03A 42, 0x800C
    ScrCmd_014 0x7D0
    End

_06E2:
    ScrCmd_037 3, 0
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03A 41, 0x800C
    ScrCmd_014 0x7D0
    End

_06F7:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 43
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0708:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_1BD 0x8004
    ScrCmd_068
    ScrCmd_011 0x4106, 2
    ScrCmd_01C 1, _0900
    ScrCmd_02C 27
    ScrCmd_040 1, 1, 0, 1, 0x800C
    ScrCmd_042 213, 0
    ScrCmd_020 0x133
    ScrCmd_01D 1, _0790
    ScrCmd_020 0x13C
    ScrCmd_01D 1, _078A
    ScrCmd_042 218, 4
    ScrCmd_043
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0796
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _07D1
    ScrCmd_011 0x800C, 2
    ScrCmd_01C 1, _080C
    ScrCmd_011 0x800C, 3
    ScrCmd_01C 1, _0847
    ScrCmd_016 _0847
    End

_078A:
    ScrCmd_042 215, 2
    ScrCmd_01B

_0790:
    ScrCmd_042 214, 1
    ScrCmd_01B

_0796:
    ScrCmd_01A _0852
    ScrCmd_011 0x8004, 1
    ScrCmd_01D 1, _0871
    ScrCmd_011 0x8004, 3
    ScrCmd_01D 1, _088B
    ScrCmd_011 0x8004, 0
    ScrCmd_01D 1, _08A5
    ScrCmd_23D 3, 3, 0x120, 100, 0x1F6
    ScrCmd_061
    End

_07D1:
    ScrCmd_01A _0852
    ScrCmd_011 0x8004, 1
    ScrCmd_01D 1, _0871
    ScrCmd_011 0x8004, 3
    ScrCmd_01D 1, _088B
    ScrCmd_011 0x8004, 0
    ScrCmd_01D 1, _08A5
    ScrCmd_23D 3, 2, 0x104, 39, 0x115
    ScrCmd_061
    End

_080C:
    ScrCmd_01A _0852
    ScrCmd_011 0x8004, 1
    ScrCmd_01D 1, _0871
    ScrCmd_011 0x8004, 3
    ScrCmd_01D 1, _088B
    ScrCmd_011 0x8004, 0
    ScrCmd_01D 1, _08A5
    ScrCmd_23D 3, 3, 0x140, 152, 0x115
    ScrCmd_061
    End

_0847:
    ScrCmd_02C 29
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0852:
    ScrCmd_02C 28
    ScrCmd_034
    ScrCmd_05E 16, _08C0
    ScrCmd_05F
    ScrCmd_049 0x603
    ScrCmd_05E 16, _08CC
    ScrCmd_05F
    ScrCmd_01B

_0871:
    ScrCmd_05E 0xFF, _08D4
    ScrCmd_05F
    ScrCmd_049 0x603
    ScrCmd_05E 0xFF, _08CC
    ScrCmd_05F
    ScrCmd_01B

_088B:
    ScrCmd_05E 0xFF, _08E4
    ScrCmd_05F
    ScrCmd_049 0x603
    ScrCmd_05E 0xFF, _08CC
    ScrCmd_05F
    ScrCmd_01B

_08A5:
    ScrCmd_05E 0xFF, _08F0
    ScrCmd_05F
    ScrCmd_049 0x603
    ScrCmd_05E 0xFF, _08CC
    ScrCmd_05F
    ScrCmd_01B

    .balign 4, 0
_08C0:
    MoveAction_003
    MoveAction_040
    EndMovement

    .balign 4, 0
_08CC:
    MoveAction_045
    EndMovement

    .balign 4, 0
_08D4:
    MoveAction_00D
    MoveAction_003
    MoveAction_040
    EndMovement

    .balign 4, 0
_08E4:
    MoveAction_00F
    MoveAction_040
    EndMovement

    .balign 4, 0
_08F0:
    MoveAction_00C
    MoveAction_003
    MoveAction_040
    EndMovement

_0900:
    ScrCmd_07E 0x1C5, 1, 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _094E
    ScrCmd_02C 31
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0938
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0943
    End

_0938:
    ScrCmd_02C 32
    ScrCmd_034
    ScrCmd_016 _07D1

_0943:
    ScrCmd_02C 33
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_094E:
    ScrCmd_02C 34
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0959:
    ScrCmd_060
    ScrCmd_05E 16, _099C
    ScrCmd_05F
    ScrCmd_02C 35
    ScrCmd_034
    ScrCmd_05E 16, _09AC
    ScrCmd_05F
    ScrCmd_065 16
    ScrCmd_186 16, 45, 0x2EE
    ScrCmd_189 16, 2
    ScrCmd_188 16, 16
    ScrCmd_064 16
    ScrCmd_028 0x40F8, 4
    ScrCmd_061
    End

    .balign 4, 0
_099C:
    MoveAction_04B
    MoveAction_00F 3
    MoveAction_00C
    EndMovement

    .balign 4, 0
_09AC:
    MoveAction_00D
    MoveAction_00E 3
    MoveAction_00D 8
    EndMovement

_09BC:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_07E 0x1A7, 1, 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _09FA
    ScrCmd_09A 0x800C, 70
    ScrCmd_011 0x800C, 6
    ScrCmd_01C 5, _09FA
    ScrCmd_0CE 0
    ScrCmd_02C 3
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_09FA:
    ScrCmd_0CE 0
    ScrCmd_02C 4
    ScrCmd_034
    ScrCmd_05E 18, _0A38
    ScrCmd_05F
    ScrCmd_168 1, 22, 5, 14, 77
    ScrCmd_16B 77
    ScrCmd_169 77
    ScrCmd_05E 18, _0A40
    ScrCmd_05F
    ScrCmd_16C 77
    ScrCmd_169 77
    ScrCmd_16A 77
    ScrCmd_065 18
    ScrCmd_061
    End

    .balign 4, 0
_0A38:
    MoveAction_020
    EndMovement

    .balign 4, 0
_0A40:
    MoveAction_00C
    MoveAction_045
    EndMovement
