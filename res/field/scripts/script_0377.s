    .include "macros/scrcmd.inc"

    .data

    .long _026D-.-4
    .long _08B4-.-4
    .long _08ED-.-4
    .long _08FC-.-4
    .long _0970-.-4
    .long _0289-.-4
    .long _0998-.-4
    .long _09AB-.-4
    .long _09BE-.-4
    .long _09D1-.-4
    .long _09F0-.-4
    .long _0A03-.-4
    .long _0A16-.-4
    .long _0A29-.-4
    .long _0A3C-.-4
    .long _01A6-.-4
    .long _0A4F-.-4
    .long _0AEE-.-4
    .long _0C01-.-4
    .long _0D14-.-4
    .long _00A6-.-4
    .long _005A-.-4
    .short 0xFD13

_005A:
    ScrCmd_325 0x4000
    ScrCmd_011 0x4000, 11
    ScrCmd_01D 4, _0090
    ScrCmd_011 0x4000, 101
    ScrCmd_01D 4, _007A
    End

_007A:
    ScrCmd_186 12, 8, 11
    ScrCmd_187 12, 8, 0, 11, 2
    ScrCmd_01B

_0090:
    ScrCmd_186 12, 13, 11
    ScrCmd_187 12, 13, 0, 11, 2
    ScrCmd_01B

_00A6:
    ScrCmd_011 0x40BA, 1
    ScrCmd_01C 1, _00B5
    End

_00B5:
    ScrCmd_01A _015D
    ScrCmd_1B7 0x4007, 100
    ScrCmd_020 0x2CB
    ScrCmd_01D 0, _00DB
    ScrCmd_011 0x4007, 30
    ScrCmd_01C 0, _00E5
    End

_00DB:
    ScrCmd_065 13
    ScrCmd_01E 0x2CB
    ScrCmd_01B

_00E5:
    ScrCmd_020 0xAC4
    ScrCmd_01C 0, _00F2
    End

_00F2:
    ScrCmd_01E 0xAC4
    ScrCmd_326 0x4008
    ScrCmd_011 0x4008, 0x2710
    ScrCmd_01C 4, _0123
    ScrCmd_011 0x4008, 0x3E8
    ScrCmd_01C 4, _0131
    ScrCmd_011 0x4008, 0x1F4
    ScrCmd_01C 4, _013F
    End

_0123:
    ScrCmd_1B7 0x4063, 4
    ScrCmd_016 _014D
    End

_0131:
    ScrCmd_1B7 0x4063, 2
    ScrCmd_016 _014D
    End

_013F:
    ScrCmd_028 0x4063, 0
    ScrCmd_016 _014D
    End

_014D:
    ScrCmd_01F 0x2CB
    ScrCmd_01A _01DF
    ScrCmd_064 13
    End

_015D:
    ScrCmd_020 0x2C1
    ScrCmd_01D 0, _019C
    ScrCmd_238 14, 0x4000
    ScrCmd_011 0x4000, 0
    ScrCmd_01C 1, _0196
    ScrCmd_32A 0x4000
    ScrCmd_011 0x4000, 0
    ScrCmd_01C 1, _0196
    ScrCmd_01F 0x2C1
    ScrCmd_064 10
    ScrCmd_01B

_0196:
    ScrCmd_01E 0x2C1
    ScrCmd_01B

_019C:
    ScrCmd_065 10
    ScrCmd_01E 0x2C1
    ScrCmd_01B

_01A6:
    ScrCmd_14D 0x4000
    ScrCmd_011 0x4000, 0
    ScrCmd_01D 1, _025D
    ScrCmd_011 0x4000, 1
    ScrCmd_01D 1, _0265
    ScrCmd_01A _01DF
    ScrCmd_238 14, 0x4000
    ScrCmd_011 0x4000, 0
    ScrCmd_01D 1, _0196
    End

_01DF:
    ScrCmd_011 0x4063, 0
    ScrCmd_01D 1, _0215
    ScrCmd_011 0x4063, 1
    ScrCmd_01D 1, _0245
    ScrCmd_011 0x4063, 2
    ScrCmd_01D 1, _024D
    ScrCmd_011 0x4063, 3
    ScrCmd_01D 1, _0255
    ScrCmd_01B

_0215:
    ScrCmd_14D 0x4009
    ScrCmd_011 0x4009, 0
    ScrCmd_01C 1, _0235
    ScrCmd_011 0x4009, 1
    ScrCmd_01C 1, _023D
    ScrCmd_01B

_0235:
    ScrCmd_028 0x4021, 97
    ScrCmd_01B

_023D:
    ScrCmd_028 0x4021, 0
    ScrCmd_01B

_0245:
    ScrCmd_028 0x4021, 140
    ScrCmd_01B

_024D:
    ScrCmd_028 0x4021, 166
    ScrCmd_01B

_0255:
    ScrCmd_028 0x4021, 167
    ScrCmd_01B

_025D:
    ScrCmd_028 0x4023, 7
    ScrCmd_01B

_0265:
    ScrCmd_028 0x4023, 4
    ScrCmd_01B

_026D:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_028 0x4003, 0
    ScrCmd_028 0x4004, 0
    ScrCmd_016 _02A5
    End

_0289:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_028 0x4003, 0
    ScrCmd_028 0x4004, 1
    ScrCmd_016 _02A5
    End

_02A5:
    ScrCmd_313 0
    ScrCmd_011 0x4004, 0
    ScrCmd_01D 1, _0874
    ScrCmd_011 0x4004, 1
    ScrCmd_01D 1, _0879
    ScrCmd_016 _02CB
    End

_02CB:
    ScrCmd_011 0x4004, 0
    ScrCmd_01D 1, _087E
    ScrCmd_011 0x4004, 1
    ScrCmd_01D 1, _0896
    ScrCmd_042 19, 2
    ScrCmd_042 20, 3
    ScrCmd_043
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0366
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0389
    ScrCmd_011 0x800C, 2
    ScrCmd_01C 1, _032B
    ScrCmd_011 0x800C, 4
    ScrCmd_01C 1, _03AC
    ScrCmd_016 _034D
    End

_032B:
    ScrCmd_011 0x4004, 0
    ScrCmd_01D 1, _08AA
    ScrCmd_011 0x4004, 1
    ScrCmd_01D 1, _08AF
    ScrCmd_016 _02CB
    End

_034D:
    ScrCmd_016 _0355
    End

_0355:
    ScrCmd_028 0x40BA, 0
    ScrCmd_02C 6
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0366:
    ScrCmd_028 0x40BB, 0
    ScrCmd_2CC 0, 1, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _03CF
    ScrCmd_016 _03F5
    End

_0389:
    ScrCmd_028 0x40BB, 1
    ScrCmd_2CC 0, 2, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _03E2
    ScrCmd_016 _03F5
    End

_03AC:
    ScrCmd_028 0x40BB, 2
    ScrCmd_2CC 0, 1, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _03CF
    ScrCmd_016 _03F5
    End

_03CF:
    ScrCmd_02C 35
    ScrCmd_1FF 37, 1, 0, 0
    ScrCmd_016 _034D
    End

_03E2:
    ScrCmd_02C 36
    ScrCmd_1FF 37, 2, 0, 0
    ScrCmd_016 _034D
    End

_03F5:
    ScrCmd_02C 33
    ScrCmd_034
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_2CC 4, 0x40BB, 0x800C
    ScrCmd_2D0 0x4002, 0x4005
    ScrCmd_0A1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_011 0x4002, 0xFF
    ScrCmd_01C 1, _034D
    ScrCmd_31E 0x4002, 0x800C
    ScrCmd_011 0x800C, 0xFF
    ScrCmd_01C 1, _07C8
    ScrCmd_31E 0x4005, 0x800C
    ScrCmd_011 0x800C, 0xFF
    ScrCmd_01C 1, _07C8
    ScrCmd_198 0x4002, 0x4001
    ScrCmd_011 0x4001, 0
    ScrCmd_01C 1, _034D
    ScrCmd_2CC 1, 0x40BB, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _04F4
    ScrCmd_2CC 2, 0x40BB, 0x800C
    ScrCmd_0DA 0, 0x800C, 0, 0
    ScrCmd_012 0x800C, 0x4001
    ScrCmd_01C 1, _04F4
    ScrCmd_016 _04A2
    End

_04A2:
    ScrCmd_0DA 1, 0x4001, 0, 0
    ScrCmd_02C 34
    ScrCmd_044 25, 13, 1, 1, 0x800C
    ScrCmd_046 41, 0xFF, 0
    ScrCmd_046 42, 0xFF, 1
    ScrCmd_327 6
    ScrCmd_029 0x8008, 0x800C
    ScrCmd_011 0x8008, 0
    ScrCmd_01C 1, _04E4
    ScrCmd_016 _034D
    End

_04E4:
    ScrCmd_2CC 3, 0x40BB, 0x800C
    ScrCmd_016 _04F4
    End

_04F4:
    ScrCmd_016 _04FC
    End

_04FC:
    ScrCmd_011 0x40BB, 0
    ScrCmd_01D 1, _0673
    ScrCmd_011 0x40BB, 1
    ScrCmd_01D 1, _0673
    ScrCmd_028 0x4000, 0
    ScrCmd_14E
    ScrCmd_014 0x7D6
    ScrCmd_029 0x800C, 0x4000
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _034D
    ScrCmd_011 0x40BB, 2
    ScrCmd_01C 1, _054A
    ScrCmd_016 _0690
    End

_054A:
    ScrCmd_02C 30
    ScrCmd_040 30, 1, 0, 1, 0x800C
    ScrCmd_33A 1
    ScrCmd_042 13, 0
    ScrCmd_042 14, 1
    ScrCmd_042 5, 2
    ScrCmd_043
    ScrCmd_029 0x8008, 0x800C
    ScrCmd_011 0x8008, 0
    ScrCmd_01C 1, _058E
    ScrCmd_011 0x8008, 1
    ScrCmd_01C 1, _05E2
    ScrCmd_016 _034D
    End

_058E:
    ScrCmd_02C 31
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _054A
    ScrCmd_034
    ScrCmd_0F2 30, 0, 0, 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _05D0
    ScrCmd_011 0x800C, 3
    ScrCmd_01C 1, _05D8
    ScrCmd_016 _0636
    End

_05D0:
    ScrCmd_016 _054A
    End

_05D8:
    ScrCmd_150
    ScrCmd_016 _054A
    End

_05E2:
    ScrCmd_02C 31
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _054A
    ScrCmd_034
    ScrCmd_0F3 30, 0, 0, 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0624
    ScrCmd_011 0x800C, 3
    ScrCmd_01C 1, _062C
    ScrCmd_016 _0636
    End

_0624:
    ScrCmd_016 _054A
    End

_062C:
    ScrCmd_150
    ScrCmd_016 _054A
    End

_0636:
    ScrCmd_136
    ScrCmd_135 108
    ScrCmd_2CF 0x4001, 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _067B
    ScrCmd_136
    ScrCmd_135 110
    ScrCmd_02C 32
    ScrCmd_011 0x40BB, 2
    ScrCmd_01D 1, _0673
    ScrCmd_01A _08DB
    ScrCmd_016 _0690
    End

_0673:
    ScrCmd_028 0x40BA, 0xFF
    ScrCmd_01B

_067B:
    ScrCmd_01A _068C
    ScrCmd_02C 57
    ScrCmd_016 _034D
    End

_068C:
    ScrCmd_150
    ScrCmd_01B

_0690:
    ScrCmd_011 0x40BB, 0
    ScrCmd_01D 1, _0730
    ScrCmd_011 0x40BB, 1
    ScrCmd_01D 1, _074B
    ScrCmd_011 0x40BB, 2
    ScrCmd_01D 1, _0766
    ScrCmd_049 0x603
    ScrCmd_016 _06C3
    End

_06C3:
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_011 0x40BB, 0
    ScrCmd_01D 1, _078C
    ScrCmd_011 0x40BB, 1
    ScrCmd_01D 1, _07A0
    ScrCmd_011 0x40BB, 2
    ScrCmd_01D 1, _07B4
    ScrCmd_1E5 58
    ScrCmd_1CD 39, 0, 0, 0, 0
    ScrCmd_1F8
    ScrCmd_2C4 9
    ScrCmd_011 0x40BB, 2
    ScrCmd_01D 1, _072C
    ScrCmd_0A1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_313 1
    End

_072C:
    ScrCmd_150
    ScrCmd_01B

_0730:
    ScrCmd_02C 9
    ScrCmd_030
    ScrCmd_034
    ScrCmd_05E 0xFF, _07D4
    ScrCmd_05E 0x800D, _07FC
    ScrCmd_05F
    ScrCmd_01B

_074B:
    ScrCmd_02C 9
    ScrCmd_030
    ScrCmd_034
    ScrCmd_05E 0xFF, _07D4
    ScrCmd_05E 0x800D, _07FC
    ScrCmd_05F
    ScrCmd_01B

_0766:
    ScrCmd_02E 9
    ScrCmd_003 10, 0x800C
    ScrCmd_136
    ScrCmd_135 109
    ScrCmd_034
    ScrCmd_05E 0xFF, _07E4
    ScrCmd_05E 0x800D, _080C
    ScrCmd_05F
    ScrCmd_01B

_078C:
    ScrCmd_05E 0xFF, _0824
    ScrCmd_05E 0x800D, _0854
    ScrCmd_05F
    ScrCmd_01B

_07A0:
    ScrCmd_05E 0xFF, _0824
    ScrCmd_05E 0x800D, _0854
    ScrCmd_05F
    ScrCmd_01B

_07B4:
    ScrCmd_05E 0xFF, _0838
    ScrCmd_05E 0x800D, _0864
    ScrCmd_05F
    ScrCmd_01B

_07C8:
    ScrCmd_028 0x40BA, 0
    ScrCmd_014 0x809
    End

    .balign 4, 0
_07D4:
    MoveAction_00E 4
    MoveAction_00D 3
    MoveAction_045
    EndMovement

    .balign 4, 0
_07E4:
    MoveAction_00E 2
    MoveAction_00C
    MoveAction_00E 2
    MoveAction_00D 3
    MoveAction_045
    EndMovement

    .balign 4, 0
_07FC:
    MoveAction_00E 3
    MoveAction_00D 3
    MoveAction_045
    EndMovement

    .balign 4, 0
_080C:
    MoveAction_00E
    MoveAction_00C
    MoveAction_00E 2
    MoveAction_00D 3
    MoveAction_045
    EndMovement

    .balign 4, 0
_0824:
    MoveAction_017 4
    MoveAction_014 3
    MoveAction_002
    MoveAction_046
    EndMovement

    .balign 4, 0
_0838:
    MoveAction_017 2
    MoveAction_015
    MoveAction_017 2
    MoveAction_014 3
    MoveAction_002
    MoveAction_046
    EndMovement

    .balign 4, 0
_0854:
    MoveAction_014 3
    MoveAction_017 3
    MoveAction_046
    EndMovement

    .balign 4, 0
_0864:
    MoveAction_014 2
    MoveAction_017 3
    MoveAction_046
    EndMovement

_0874:
    ScrCmd_02C 0
    ScrCmd_01B

_0879:
    ScrCmd_02C 3
    ScrCmd_01B

_087E:
    ScrCmd_041 31, 9, 0, 1, 0x800C
    ScrCmd_33A 1
    ScrCmd_042 16, 0
    ScrCmd_042 17, 1
    ScrCmd_02C 1
    ScrCmd_01B

_0896:
    ScrCmd_041 31, 11, 0, 1, 0x800C
    ScrCmd_33A 1
    ScrCmd_042 18, 4
    ScrCmd_02C 4
    ScrCmd_01B

_08AA:
    ScrCmd_02C 2
    ScrCmd_01B

_08AF:
    ScrCmd_02C 5
    ScrCmd_01B

_08B4:
    ScrCmd_313 0
    ScrCmd_028 0x4003, 1
    ScrCmd_028 0x40BA, 0
    ScrCmd_02C 11
    ScrCmd_01A _0673
    ScrCmd_01A _08DB
    ScrCmd_016 _0690
    End

_08DB:
    ScrCmd_18D
    ScrCmd_12D 0x800C
    ScrCmd_18E
    ScrCmd_049 0x61B
    ScrCmd_04B 0x61B
    ScrCmd_01B

_08ED:
    ScrCmd_02C 12
    ScrCmd_2D1 0x40BB
    ScrCmd_016 _034D
    End

_08FC:
    ScrCmd_011 0x40BB, 0
    ScrCmd_01D 1, _0938
    ScrCmd_011 0x40BB, 1
    ScrCmd_01D 1, _0938
    ScrCmd_011 0x4051, 1
    ScrCmd_01D 1, _093E
    ScrCmd_011 0x4051, 3
    ScrCmd_01D 1, _0955
    ScrCmd_016 _034D
    End

_0938:
    ScrCmd_30A 40
    ScrCmd_01B

_093E:
    ScrCmd_02C 13
    ScrCmd_0CD 0
    ScrCmd_02C 15
    ScrCmd_04E 0x486
    ScrCmd_04F
    ScrCmd_028 0x4051, 2
    ScrCmd_01B

_0955:
    ScrCmd_02C 13
    ScrCmd_0CD 0
    ScrCmd_02C 14
    ScrCmd_04E 0x486
    ScrCmd_04F
    ScrCmd_028 0x4051, 4
    ScrCmd_014 0x806
    ScrCmd_01B

_0970:
    ScrCmd_016 _034D

    .byte 2
    .byte 0
    .byte 12
    .byte 0
    .byte 2
    .byte 0
    .byte 63
    .byte 0
    .byte 1
    .byte 0
    .byte 12
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 12
    .byte 0
    .byte 2
    .byte 0
    .byte 63
    .byte 0
    .byte 1
    .byte 0
    .byte 12
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

_0998:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 59
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_09AB:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 60
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_09BE:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 61
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_09D1:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_04B 0x5DC
    ScrCmd_04C 0x1A1, 0
    ScrCmd_02C 62
    ScrCmd_04D
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_09F0:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 63
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0A03:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 64
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0A16:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 65
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0A29:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 66
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0A3C:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 67
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0A4F:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_020 190
    ScrCmd_01C 0, _0AD7
    ScrCmd_324 1, 2, 3, 4, 0x4062, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0AAD
    ScrCmd_011 0x800C, 2
    ScrCmd_01C 1, _0AB8
    ScrCmd_011 0x800C, 3
    ScrCmd_01C 1, _0AC9
    ScrCmd_0CD 0
    ScrCmd_02C 69
    ScrCmd_02C 70
    ScrCmd_04E 0x4C5
    ScrCmd_02C 72
    ScrCmd_04F
    ScrCmd_016 _0AE6
    End

_0AAD:
    ScrCmd_02C 68
    ScrCmd_016 _0AE6
    End

_0AB8:
    ScrCmd_0CD 0
    ScrCmd_02C 73
    ScrCmd_02C 71
    ScrCmd_016 _0AE6
    End

_0AC9:
    ScrCmd_0CD 0
    ScrCmd_02C 74
    ScrCmd_016 _0AE6
    End

_0AD7:
    ScrCmd_01E 190
    ScrCmd_02C 68
    ScrCmd_016 _0AE6
    End

_0AE6:
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0AEE:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_14D 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0C22
    ScrCmd_016 _0B0F
    End

_0B0F:
    ScrCmd_0CD 0
    ScrCmd_325 0x8005
    ScrCmd_011 0x8005, 0x1DB
    ScrCmd_01C 4, _0B96
    ScrCmd_011 0x8005, 0x15F
    ScrCmd_01C 4, _0BA1
    ScrCmd_011 0x8005, 251
    ScrCmd_01C 4, _0BAC
    ScrCmd_011 0x8005, 151
    ScrCmd_01C 4, _0BB7
    ScrCmd_011 0x8005, 101
    ScrCmd_01C 4, _0BC2
    ScrCmd_011 0x8005, 51
    ScrCmd_01C 4, _0BCD
    ScrCmd_011 0x8005, 31
    ScrCmd_01C 4, _0BD8
    ScrCmd_011 0x8005, 11
    ScrCmd_01C 4, _0BE3
    ScrCmd_011 0x8005, 1
    ScrCmd_01C 4, _0BEE
    ScrCmd_02C 75
    ScrCmd_016 _0BF9
    End

_0B96:
    ScrCmd_02C 84
    ScrCmd_016 _0BF9
    End

_0BA1:
    ScrCmd_02C 83
    ScrCmd_016 _0BF9
    End

_0BAC:
    ScrCmd_02C 82
    ScrCmd_016 _0BF9
    End

_0BB7:
    ScrCmd_02C 81
    ScrCmd_016 _0BF9
    End

_0BC2:
    ScrCmd_02C 80
    ScrCmd_016 _0BF9
    End

_0BCD:
    ScrCmd_02C 79
    ScrCmd_016 _0BF9
    End

_0BD8:
    ScrCmd_02C 78
    ScrCmd_016 _0BF9
    End

_0BE3:
    ScrCmd_02C 77
    ScrCmd_016 _0BF9
    End

_0BEE:
    ScrCmd_02C 76
    ScrCmd_016 _0BF9
    End

_0BF9:
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0C01:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_14D 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0B0F
    ScrCmd_016 _0C22
    End

_0C22:
    ScrCmd_0CD 0
    ScrCmd_325 0x8005
    ScrCmd_011 0x8005, 0x1DB
    ScrCmd_01C 4, _0CA9
    ScrCmd_011 0x8005, 0x15F
    ScrCmd_01C 4, _0CB4
    ScrCmd_011 0x8005, 251
    ScrCmd_01C 4, _0CBF
    ScrCmd_011 0x8005, 151
    ScrCmd_01C 4, _0CCA
    ScrCmd_011 0x8005, 101
    ScrCmd_01C 4, _0CD5
    ScrCmd_011 0x8005, 51
    ScrCmd_01C 4, _0CE0
    ScrCmd_011 0x8005, 31
    ScrCmd_01C 4, _0CEB
    ScrCmd_011 0x8005, 11
    ScrCmd_01C 4, _0CF6
    ScrCmd_011 0x8005, 1
    ScrCmd_01C 4, _0D01
    ScrCmd_02C 85
    ScrCmd_016 _0D0C
    End

_0CA9:
    ScrCmd_02C 94
    ScrCmd_016 _0D0C
    End

_0CB4:
    ScrCmd_02C 93
    ScrCmd_016 _0D0C
    End

_0CBF:
    ScrCmd_02C 92
    ScrCmd_016 _0D0C
    End

_0CCA:
    ScrCmd_02C 91
    ScrCmd_016 _0D0C
    End

_0CD5:
    ScrCmd_02C 90
    ScrCmd_016 _0D0C
    End

_0CE0:
    ScrCmd_02C 89
    ScrCmd_016 _0D0C
    End

_0CEB:
    ScrCmd_02C 88
    ScrCmd_016 _0D0C
    End

_0CF6:
    ScrCmd_02C 87
    ScrCmd_016 _0D0C
    End

_0D01:
    ScrCmd_02C 86
    ScrCmd_016 _0D0C
    End

_0D0C:
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0D14:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_0CD 0
    ScrCmd_029 0x4001, 0x4021
    ScrCmd_011 0x4001, 0
    ScrCmd_01C 1, _0D68
    ScrCmd_011 0x4001, 97
    ScrCmd_01C 1, _0D73
    ScrCmd_011 0x4001, 140
    ScrCmd_01C 1, _0D7E
    ScrCmd_011 0x4001, 166
    ScrCmd_01C 1, _0D89
    ScrCmd_011 0x4001, 167
    ScrCmd_01C 1, _0D94
    End

_0D68:
    ScrCmd_02C 96
    ScrCmd_016 _0D9F
    End

_0D73:
    ScrCmd_02C 95
    ScrCmd_016 _0D9F
    End

_0D7E:
    ScrCmd_02C 97
    ScrCmd_016 _0D9F
    End

_0D89:
    ScrCmd_02C 98
    ScrCmd_016 _0D9F
    End

_0D94:
    ScrCmd_02C 99
    ScrCmd_016 _0D9F
    End

_0D9F:
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .byte 0
