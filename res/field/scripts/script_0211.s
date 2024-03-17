    .include "macros/scrcmd.inc"

    .data

    .long _02FC-.-4
    .long _034C-.-4
    .long _00EE-.-4
    .long _03E8-.-4
    .long _043B-.-4
    .long _0479-.-4
    .long _0494-.-4
    .long _00EC-.-4
    .long _05EA-.-4
    .long _0719-.-4
    .long _00EA-.-4
    .long _08FF-.-4
    .long _0901-.-4
    .long _093A-.-4
    .long _095C-.-4
    .long _0983-.-4
    .long _09F5-.-4
    .long _0BDD-.-4
    .long _0BEE-.-4
    .long _0FC3-.-4
    .long _0FCA-.-4
    .long _103A-.-4
    .long _0FA5-.-4
    .long _0FA7-.-4
    .long _1280-.-4
    .long _1282-.-4
    .long _12A8-.-4
    .long _12BA-.-4
    .long _12CD-.-4
    .long _12E0-.-4
    .long _12F3-.-4
    .long _1361-.-4
    .long _138C-.-4
    .long _139D-.-4
    .long _048B-.-4
    .long _13AB-.-4
    .long _09BD-.-4
    .long _1475-.-4
    .long _13BE-.-4
    .long _1477-.-4
    .long _1581-.-4
    .long _15D7-.-4
    .long _15B3-.-4
    .long _15D7-.-4
    .long _0A34-.-4
    .long _09CC-.-4
    .long _0910-.-4
    .long _0992-.-4
    .long _15BF-.-4
    .long _15D7-.-4
    .long _15E7-.-4
    .long _1636-.-4
    .long _164A-.-4
    .long _165E-.-4
    .long _16AA-.-4
    .long _15CB-.-4
    .long _15D7-.-4
    .long _170A-.-4
    .short 0xFD13

_00EA:
    ScrCmd_002

_00EC:
    ScrCmd_002

_00EE:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_2BE 0x800C
    ScrCmd_011 0x800C, 4
    ScrCmd_01C 4, _027A
    ScrCmd_028 0x8004, 0
    ScrCmd_1B6 0x800C
    ScrCmd_1F9 0x800C
    ScrCmd_028 0x8004, 120
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0141
    ScrCmd_028 0x8004, 121
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0141
    ScrCmd_028 0x8004, 0
_0141:
    ScrCmd_02D 0x8004
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0172
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0165
    ScrCmd_002

_0165:
    ScrCmd_02C 3
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_015
    ScrCmd_002

_0172:
    ScrCmd_0CB 0x100
    ScrCmd_0CC
    ScrCmd_05E 0xFF, _02EC
    ScrCmd_05F
    ScrCmd_2BE 0x800C
    ScrCmd_011 0x800C, 4
    ScrCmd_01D 4, _01BC
    ScrCmd_011 0x800C, 4
    ScrCmd_01D 0, _01B7
    ScrCmd_01A _01C1
    ScrCmd_020 106
    ScrCmd_01C 0, _0242
    ScrCmd_016 _01E1

_01B7:
    ScrCmd_02C 1
    ScrCmd_01B

_01BC:
    ScrCmd_02C 7
    ScrCmd_01B

_01C1:
    ScrCmd_05E 0x8007, _1260
    ScrCmd_05F
    ScrCmd_19A 0x8006
    ScrCmd_23B 0x8006
    ScrCmd_05E 0x8007, _1278
    ScrCmd_05F
    ScrCmd_14E
    ScrCmd_01B

_01E1:
    ScrCmd_011 0x8004, 1
    ScrCmd_01C 1, _0218
    ScrCmd_02C 2
    ScrCmd_05E 0xFF, _02F4
    ScrCmd_05F
    ScrCmd_0CB 1
    ScrCmd_0CC
    ScrCmd_05E 0x8007, _02E0
    ScrCmd_05F
    ScrCmd_02C 3
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_015
    ScrCmd_002

_0218:
    ScrCmd_02C 8
    ScrCmd_05E 0xFF, _02F4
    ScrCmd_05F
    ScrCmd_0CB 1
    ScrCmd_0CC
    ScrCmd_05E 0x8007, _02E0
    ScrCmd_05F
    ScrCmd_02C 9
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_015
    ScrCmd_002

_0242:
    ScrCmd_119 0x8006
    ScrCmd_011 0x8006, 1
    ScrCmd_01C 1, _0259
    ScrCmd_016 _01E1

_0259:
    ScrCmd_01E 106
    ScrCmd_05E 0xFF, _02F4
    ScrCmd_05F
    ScrCmd_0CB 1
    ScrCmd_0CC
    ScrCmd_02C 10
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_015
    ScrCmd_002

_027A:
    ScrCmd_020 105
    ScrCmd_01C 1, _02B0
    ScrCmd_01E 105
    ScrCmd_02C 4
    ScrCmd_0CD 0
    ScrCmd_02C 5
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _02D4
    ScrCmd_02C 9
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_015
    ScrCmd_002

_02B0:
    ScrCmd_0CD 0
    ScrCmd_02C 6
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _02D4
    ScrCmd_02C 9
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_015
    ScrCmd_002

_02D4:
    ScrCmd_028 0x8004, 1
    ScrCmd_016 _0172

    .balign 4, 0
_02E0:
    MoveAction_064
    MoveAction_03E
    EndMovement

    .balign 4, 0
_02EC:
    MoveAction_066
    EndMovement

    .balign 4, 0
_02F4:
    MoveAction_068
    EndMovement

_02FC:
    ScrCmd_029 0x8008, 0x800C
    ScrCmd_011 0x8008, 0
    ScrCmd_01C 1, _033A
    ScrCmd_011 0x8008, 1
    ScrCmd_01C 1, _0341
    ScrCmd_03B 0x800C
    ScrCmd_029 0x8008, 0x800C
    ScrCmd_011 0x8008, 1
    ScrCmd_01C 1, _0341
    ScrCmd_038 2
    ScrCmd_015
    ScrCmd_002

_033A:
    ScrCmd_038 2
    ScrCmd_015
    ScrCmd_002

_0341:
    ScrCmd_038 4
    ScrCmd_039
    ScrCmd_03C
    ScrCmd_015
    ScrCmd_002

_034C:
    ScrCmd_01A _0356
    ScrCmd_015
    ScrCmd_002

_0356:
    ScrCmd_080 0x8004, 0x800C
    ScrCmd_029 0x8008, 0x800C
    ScrCmd_011 0x8008, 7
    ScrCmd_01C 1, _03D8
    ScrCmd_011 0x8008, 0
    ScrCmd_01C 1, _03CC
    ScrCmd_011 0x8008, 4
    ScrCmd_01C 1, _03CC
    ScrCmd_011 0x8008, 1
    ScrCmd_01C 1, _03CC
    ScrCmd_011 0x8008, 2
    ScrCmd_01C 1, _03CC
    ScrCmd_011 0x8008, 6
    ScrCmd_01C 1, _03CC
    ScrCmd_011 0x8008, 5
    ScrCmd_01C 1, _03DE
    ScrCmd_011 0x8008, 3
    ScrCmd_01C 1, _03D2
    ScrCmd_002

_03CC:
    ScrCmd_04E 0x486
    ScrCmd_01B

_03D2:
    ScrCmd_04E 0x48B
    ScrCmd_01B

_03D8:
    ScrCmd_04E 0x485
    ScrCmd_01B

_03DE:
    ScrCmd_04E 0x488
    ScrCmd_01B

    .byte 21
    .byte 0
    .byte 2
    .byte 0

_03E8:
    ScrCmd_060
    ScrCmd_177 0x8004
    ScrCmd_028 0x8005, 0
_03F4:
    ScrCmd_1F7 0x800C, 0x8005
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _040F
    ScrCmd_0D6 0, 0x8005
    ScrCmd_02C 66
_040F:
    ScrCmd_026 0x8005, 1
    ScrCmd_012 0x8004, 0x8005
    ScrCmd_01C 5, _03F4
    ScrCmd_19B 0x800C, 6
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0457
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_043B:
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_030
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_002

_0457:
    ScrCmd_0CD 0
    ScrCmd_02C 11
    ScrCmd_030
    ScrCmd_034
    ScrCmd_054 0, 10
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_1F8
    ScrCmd_14B
    ScrCmd_002

_0479:
    ScrCmd_01F 31
    ScrCmd_01A _04A8
    ScrCmd_18F 0x800C
    ScrCmd_034
    ScrCmd_002

_048B:
    ScrCmd_02C 20
    ScrCmd_030
    ScrCmd_034
    ScrCmd_002

_0494:
    ScrCmd_01E 31
    ScrCmd_01A _04A8
    ScrCmd_029 0x4000, 0x800C
    ScrCmd_015
    ScrCmd_002

_04A8:
    ScrCmd_12C 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _04FC
    ScrCmd_2C1
    ScrCmd_02C 13
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _05A0
    ScrCmd_12C 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _051D
    ScrCmd_011 0x800C, 2
    ScrCmd_01C 1, _0509
    ScrCmd_011 0x800C, 3
    ScrCmd_01C 1, _0526
    ScrCmd_002

_04FC:
    ScrCmd_02C 20
    ScrCmd_030
    ScrCmd_028 0x800C, 0
    ScrCmd_01B

_0509:
    ScrCmd_02C 14
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _05A0
_051D:
    ScrCmd_02C 21
    ScrCmd_016 _0552

_0526:
    ScrCmd_02C 14
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _05A0
    ScrCmd_020 31
    ScrCmd_01C 0, _05C6
    ScrCmd_020 31
    ScrCmd_01C 1, _05D1
    ScrCmd_002

_0552:
    ScrCmd_258
    ScrCmd_003 2, 0x800C
    ScrCmd_01A _0568
    ScrCmd_259
    ScrCmd_016 _057D

_0568:
    ScrCmd_18D
    ScrCmd_020 31
    ScrCmd_01D 1, _05BE
    ScrCmd_12D 0x800C
    ScrCmd_18E
    ScrCmd_01B

_057D:
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _05AA
    ScrCmd_0CD 0
    ScrCmd_02C 16
    ScrCmd_049 0x61B
    ScrCmd_04B 0x61B
    ScrCmd_190 30
    ScrCmd_2C2
    ScrCmd_01B

_05A0:
    ScrCmd_2C2
    ScrCmd_028 0x800C, 0
    ScrCmd_01B

_05AA:
    ScrCmd_02C 18
    ScrCmd_030
    ScrCmd_2C2
    ScrCmd_01B

_05B3:
    ScrCmd_02C 21
    ScrCmd_016 _0552
    ScrCmd_002

_05BE:
    ScrCmd_2D6
    ScrCmd_01F 31
    ScrCmd_01B

_05C6:
    ScrCmd_02C 15
    ScrCmd_016 _0552
    ScrCmd_002

_05D1:
    ScrCmd_2D7 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _05B3
    ScrCmd_016 _05C6
    ScrCmd_002

_05EA:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_07E 94, 1, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 5, _0632
    ScrCmd_128 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _065F
    ScrCmd_011 0x800C, 2
    ScrCmd_01C 1, _066A
    ScrCmd_011 0x800C, 3
    ScrCmd_01C 1, _06F4
    ScrCmd_002

_0632:
    ScrCmd_128 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0675
    ScrCmd_011 0x800C, 2
    ScrCmd_01C 1, _067E
    ScrCmd_011 0x800C, 3
    ScrCmd_01C 1, _06F4
    ScrCmd_002

_065F:
    ScrCmd_02C 46
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_066A:
    ScrCmd_02C 48
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0675:
    ScrCmd_02C 47
    ScrCmd_016 _06BB

_067E:
    ScrCmd_02C 49
    ScrCmd_016 _06BB

    .byte 126
    .byte 0
    .byte 94
    .byte 0
    .byte 1
    .byte 0
    .byte 12
    .byte 128
    .byte 17
    .byte 0
    .byte 12
    .byte 128
    .byte 0
    .byte 0
    .byte 28
    .byte 0
    .byte 5
    .byte 31
    .byte 0
    .byte 0
    .byte 0
    .byte 52
    .byte 0
    .byte 97
    .byte 0
    .byte 2
    .byte 0

_06A2:
    ScrCmd_07E 94, 1, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 5, _06BB
    ScrCmd_061
    ScrCmd_002

_06BB:
    ScrCmd_02C 50
    ScrCmd_03E 0x800C
    ScrCmd_034
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _06D5
    ScrCmd_061
    ScrCmd_002

_06D5:
    ScrCmd_07C 94, 1, 0x800C
    ScrCmd_260 1
    ScrCmd_127
    ScrCmd_003 10, 0x800C
    ScrCmd_02C 51
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_06F4:
    ScrCmd_1E5 117
    ScrCmd_129
    ScrCmd_0EC 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0713
    ScrCmd_12A
    ScrCmd_016 _06A2

_0713:
    ScrCmd_0EB
    ScrCmd_061
    ScrCmd_002

_0719:
    ScrCmd_01A _0723
    ScrCmd_015
    ScrCmd_002

_0723:
    ScrCmd_0CD 0
    ScrCmd_0D7 1, 0x8004
    ScrCmd_04E 0x48A
    ScrCmd_02C 24
    ScrCmd_04F
    ScrCmd_02C 26
    ScrCmd_133 0x8004
    ScrCmd_011 0x8004, 0
    ScrCmd_01D 1, _0882
    ScrCmd_011 0x8004, 1
    ScrCmd_01D 1, _0887
    ScrCmd_011 0x8004, 2
    ScrCmd_01D 1, _088C
    ScrCmd_011 0x8004, 3
    ScrCmd_01D 1, _0891
    ScrCmd_011 0x8004, 4
    ScrCmd_01D 1, _0896
    ScrCmd_011 0x8004, 5
    ScrCmd_01D 1, _089B
    ScrCmd_011 0x8004, 6
    ScrCmd_01D 1, _08A0
    ScrCmd_011 0x8004, 7
    ScrCmd_01D 1, _08A5
    ScrCmd_011 0x8004, 8
    ScrCmd_01D 1, _08AA
    ScrCmd_011 0x8004, 9
    ScrCmd_01D 1, _08AF
    ScrCmd_011 0x8004, 10
    ScrCmd_01D 1, _08B4
    ScrCmd_011 0x8004, 11
    ScrCmd_01D 1, _08B9
    ScrCmd_011 0x8004, 12
    ScrCmd_01D 1, _08BE
    ScrCmd_011 0x8004, 13
    ScrCmd_01D 1, _08C3
    ScrCmd_011 0x8004, 14
    ScrCmd_01D 1, _08C8
    ScrCmd_011 0x8004, 15
    ScrCmd_01D 1, _08CD
    ScrCmd_011 0x8004, 16
    ScrCmd_01D 1, _08D2
    ScrCmd_011 0x8004, 17
    ScrCmd_01D 1, _08D7
    ScrCmd_011 0x8004, 18
    ScrCmd_01D 1, _08DC
    ScrCmd_011 0x8004, 19
    ScrCmd_01D 1, _08E1
    ScrCmd_011 0x8004, 20
    ScrCmd_01D 1, _08E6
    ScrCmd_011 0x8004, 21
    ScrCmd_01D 1, _08EB
    ScrCmd_011 0x8004, 22
    ScrCmd_01D 1, _08F0
    ScrCmd_011 0x8004, 23
    ScrCmd_01D 1, _08F5
    ScrCmd_011 0x8004, 24
    ScrCmd_01D 1, _08FA
    ScrCmd_01B

_0882:
    ScrCmd_02C 83
    ScrCmd_01B

_0887:
    ScrCmd_02C 84
    ScrCmd_01B

_088C:
    ScrCmd_02C 85
    ScrCmd_01B

_0891:
    ScrCmd_02C 86
    ScrCmd_01B

_0896:
    ScrCmd_02C 87
    ScrCmd_01B

_089B:
    ScrCmd_02C 88
    ScrCmd_01B

_08A0:
    ScrCmd_02C 89
    ScrCmd_01B

_08A5:
    ScrCmd_02C 90
    ScrCmd_01B

_08AA:
    ScrCmd_02C 91
    ScrCmd_01B

_08AF:
    ScrCmd_02C 92
    ScrCmd_01B

_08B4:
    ScrCmd_02C 93
    ScrCmd_01B

_08B9:
    ScrCmd_02C 94
    ScrCmd_01B

_08BE:
    ScrCmd_02C 95
    ScrCmd_01B

_08C3:
    ScrCmd_02C 96
    ScrCmd_01B

_08C8:
    ScrCmd_02C 97
    ScrCmd_01B

_08CD:
    ScrCmd_02C 98
    ScrCmd_01B

_08D2:
    ScrCmd_02C 99
    ScrCmd_01B

_08D7:
    ScrCmd_02C 100
    ScrCmd_01B

_08DC:
    ScrCmd_02C 101
    ScrCmd_01B

_08E1:
    ScrCmd_02C 102
    ScrCmd_01B

_08E6:
    ScrCmd_02C 103
    ScrCmd_01B

_08EB:
    ScrCmd_02C 104
    ScrCmd_01B

_08F0:
    ScrCmd_02C 105
    ScrCmd_01B

_08F5:
    ScrCmd_02C 106
    ScrCmd_01B

_08FA:
    ScrCmd_02C 107
    ScrCmd_01B

_08FF:
    ScrCmd_002

_0901:
    ScrCmd_01A _091D
    ScrCmd_02C 109
    ScrCmd_031
    ScrCmd_015
    ScrCmd_002

_0910:
    ScrCmd_01A _091D
    ScrCmd_02C 128
    ScrCmd_015
    ScrCmd_002

_091D:
    ScrCmd_04E 0x486
    ScrCmd_083 0x8004, 0x8005, 0x800C
    ScrCmd_33E 0, 0x8004
    ScrCmd_02C 108
    ScrCmd_0DF 0, 0x8004
    ScrCmd_04F
    ScrCmd_01B

_093A:
    ScrCmd_01A _0944
    ScrCmd_015
    ScrCmd_002

_0944:
    ScrCmd_04E 0x486
    ScrCmd_087 0x8004, 0x8005, 0x800C
    ScrCmd_0E0 0, 0x8004
    ScrCmd_02C 80
    ScrCmd_04F
    ScrCmd_01B

_095C:
    ScrCmd_01A _0966
    ScrCmd_015
    ScrCmd_002

_0966:
    ScrCmd_04E 0x486
    ScrCmd_08F 0x8004, 0x8005, 0x800C
    ScrCmd_0E1 0, 0x8004
    ScrCmd_0D5 1, 0x8005
    ScrCmd_02C 81
    ScrCmd_04F
    ScrCmd_01B

_0983:
    ScrCmd_01A _099F
    ScrCmd_02C 31
    ScrCmd_031
    ScrCmd_015
    ScrCmd_002

_0992:
    ScrCmd_01A _099F
    ScrCmd_02C 127
    ScrCmd_015
    ScrCmd_002

_099F:
    ScrCmd_04E 0x48C
    ScrCmd_1D2 0x8004, 0x8005
    ScrCmd_261 0, 0x8004
    ScrCmd_02C 25
    ScrCmd_04F
    ScrCmd_0CD 0
    ScrCmd_261 1, 0x8004
    ScrCmd_01B

_09BD:
    ScrCmd_01A _09D9
    ScrCmd_02C 31
    ScrCmd_031
    ScrCmd_015
    ScrCmd_002

_09CC:
    ScrCmd_01A _09D9
    ScrCmd_02C 127
    ScrCmd_015
    ScrCmd_002

_09D9:
    ScrCmd_04E 0x486
    ScrCmd_1D5 0x8004
    ScrCmd_273 0, 0x8004
    ScrCmd_02C 25
    ScrCmd_04F
    ScrCmd_0CD 0
    ScrCmd_273 1, 0x8004
    ScrCmd_01B

_09F5:
    ScrCmd_01A _09FF
    ScrCmd_015
    ScrCmd_002

_09FF:
    ScrCmd_01A _0356
    ScrCmd_07B 0x8004, 0x8005, 0x800C
    ScrCmd_080 0x8004, 0x800C
    ScrCmd_011 0x800C, 7
    ScrCmd_01D 1, _0A71
    ScrCmd_011 0x800C, 7
    ScrCmd_01D 5, _0A82
    ScrCmd_02C 30
    ScrCmd_031
    ScrCmd_01B

_0A34:
    ScrCmd_01A _0A3E
    ScrCmd_015
    ScrCmd_002

_0A3E:
    ScrCmd_01A _0356
    ScrCmd_07B 0x8004, 0x8005, 0x800C
    ScrCmd_080 0x8004, 0x800C
    ScrCmd_011 0x800C, 7
    ScrCmd_01D 1, _0A71
    ScrCmd_011 0x800C, 7
    ScrCmd_01D 5, _0A82
    ScrCmd_02C 126
    ScrCmd_01B

_0A71:
    ScrCmd_0CD 0
    ScrCmd_0D1 1, 0x8004
    ScrCmd_02C 28
    ScrCmd_016 _0AA8

_0A82:
    ScrCmd_011 0x8005, 1
    ScrCmd_01C 2, _0A9A
    ScrCmd_0D1 0, 0x8004
    ScrCmd_016 _0A9F

_0A9A:
    ScrCmd_33D 0, 0x8004
_0A9F:
    ScrCmd_02C 25
    ScrCmd_016 _0AA8

_0AA8:
    ScrCmd_04F
    ScrCmd_2A7 0x8004, 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01D 1, _13C8
    ScrCmd_0CD 0
    ScrCmd_011 0x8005, 1
    ScrCmd_01C 2, _0AD8
    ScrCmd_0D1 1, 0x8004
    ScrCmd_016 _0ADD

_0AD8:
    ScrCmd_33D 1, 0x8004
_0ADD:
    ScrCmd_080 0x8004, 0x800C
    ScrCmd_029 0x8008, 0x800C
    ScrCmd_011 0x8008, 7
    ScrCmd_01C 1, _0B64
    ScrCmd_011 0x8008, 0
    ScrCmd_01C 1, _0B53
    ScrCmd_011 0x8008, 4
    ScrCmd_01C 1, _0BA8
    ScrCmd_011 0x8008, 1
    ScrCmd_01C 1, _0B97
    ScrCmd_011 0x8008, 2
    ScrCmd_01C 1, _0BB9
    ScrCmd_011 0x8008, 6
    ScrCmd_01C 1, _0B75
    ScrCmd_011 0x8008, 5
    ScrCmd_01C 1, _0B86
    ScrCmd_011 0x8008, 3
    ScrCmd_01C 1, _0BCA
    ScrCmd_002

_0B53:
    ScrCmd_080 0x8004, 0x800C
    ScrCmd_0D2 2, 0x800C
    ScrCmd_016 _0BDB

_0B64:
    ScrCmd_080 0x8004, 0x800C
    ScrCmd_0D2 2, 0x800C
    ScrCmd_016 _0BDB

_0B75:
    ScrCmd_080 0x8004, 0x800C
    ScrCmd_0D2 2, 0x800C
    ScrCmd_016 _0BDB

_0B86:
    ScrCmd_080 0x8004, 0x800C
    ScrCmd_0D2 2, 0x800C
    ScrCmd_016 _0BDB

_0B97:
    ScrCmd_080 0x8004, 0x800C
    ScrCmd_0D2 2, 0x800C
    ScrCmd_016 _0BDB

_0BA8:
    ScrCmd_080 0x8004, 0x800C
    ScrCmd_0D2 2, 0x800C
    ScrCmd_016 _0BDB

_0BB9:
    ScrCmd_080 0x8004, 0x800C
    ScrCmd_0D2 2, 0x800C
    ScrCmd_016 _0BDB

_0BCA:
    ScrCmd_080 0x8004, 0x800C
    ScrCmd_0D2 2, 0x800C
    ScrCmd_016 _0BDB

_0BDB:
    ScrCmd_01B

_0BDD:
    ScrCmd_01A _0BE7
    ScrCmd_015
    ScrCmd_002

_0BE7:
    ScrCmd_02C 27
    ScrCmd_031
    ScrCmd_01B

_0BEE:
    ScrCmd_060
    ScrCmd_049 0x60C
    ScrCmd_01A _0C06
    ScrCmd_0CD 0
    ScrCmd_02C 32
    ScrCmd_016 _0C1C

_0C06:
    ScrCmd_24B 90
    ScrCmd_24C 90
    ScrCmd_169 90
    ScrCmd_01B

_0C11:
    ScrCmd_24D 90
    ScrCmd_169 90
    ScrCmd_16A 90
    ScrCmd_01B

_0C1C:
    ScrCmd_0CD 0
    ScrCmd_02C 33
    ScrCmd_040 1, 1, 0, 1, 0x8006
    ScrCmd_020 0x97E
    ScrCmd_01D 0, _0C7B
    ScrCmd_020 0x97E
    ScrCmd_01D 1, _0C81
    ScrCmd_042 60, 1
    ScrCmd_22D 2, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01D 1, _0C87
    ScrCmd_011 0x800C, 1
    ScrCmd_01D 1, _0C8D
    ScrCmd_020 0x964
    ScrCmd_01C 1, _0C93
    ScrCmd_020 0x964
    ScrCmd_01C 0, _0CDD
    ScrCmd_002

_0C7B:
    ScrCmd_042 58, 0
    ScrCmd_01B

_0C81:
    ScrCmd_042 59, 0
    ScrCmd_01B

_0C87:
    ScrCmd_042 63, 2
    ScrCmd_01B

_0C8D:
    ScrCmd_042 62, 2
    ScrCmd_01B

_0C93:
    ScrCmd_042 61, 3
    ScrCmd_042 64, 4
    ScrCmd_043
    ScrCmd_029 0x8008, 0x8006
    ScrCmd_011 0x8008, 0
    ScrCmd_01C 1, _0D16
    ScrCmd_011 0x8008, 1
    ScrCmd_01C 1, _0E45
    ScrCmd_011 0x8008, 2
    ScrCmd_01C 1, _0F62
    ScrCmd_011 0x8008, 3
    ScrCmd_01C 1, _0F2C
    ScrCmd_016 _0F70

_0CDD:
    ScrCmd_042 64, 3
    ScrCmd_043
    ScrCmd_029 0x8008, 0x8006
    ScrCmd_011 0x8008, 0
    ScrCmd_01C 1, _0D16
    ScrCmd_011 0x8008, 1
    ScrCmd_01C 1, _0E45
    ScrCmd_011 0x8008, 2
    ScrCmd_01C 1, _0F62
    ScrCmd_016 _0F70

_0D16:
    ScrCmd_049 0x60D
    ScrCmd_0CD 0
    ScrCmd_02C 34
    ScrCmd_01A _0D2C
    ScrCmd_016 _0D73

_0D2C:
    ScrCmd_044 1, 1, 0, 1, 0x800C
    ScrCmd_046 65, 74, 0
    ScrCmd_046 66, 75, 1
    ScrCmd_046 67, 76, 2
    ScrCmd_046 68, 77, 3
    ScrCmd_020 0x978
    ScrCmd_01D 1, _0D69
    ScrCmd_046 70, 79, 5
    ScrCmd_01B

_0D69:
    ScrCmd_046 69, 78, 4
    ScrCmd_01B

_0D73:
    ScrCmd_047
    ScrCmd_029 0x8008, 0x800C
    ScrCmd_011 0x8008, 0
    ScrCmd_01C 1, _0DC2
    ScrCmd_011 0x8008, 1
    ScrCmd_01C 1, _0DD5
    ScrCmd_011 0x8008, 2
    ScrCmd_01C 1, _0DE8
    ScrCmd_011 0x8008, 3
    ScrCmd_01C 1, _0DFB
    ScrCmd_011 0x8008, 4
    ScrCmd_01C 1, _0E0E
    ScrCmd_016 _0C1C

_0DC2:
    ScrCmd_034
    ScrCmd_01A _0F94
    ScrCmd_0AB 0
    ScrCmd_0A1
    ScrCmd_016 _0E21

_0DD5:
    ScrCmd_034
    ScrCmd_01A _0F94
    ScrCmd_0AB 1
    ScrCmd_0A1
    ScrCmd_016 _0E21

_0DE8:
    ScrCmd_034
    ScrCmd_01A _0F94
    ScrCmd_0AB 2
    ScrCmd_0A1
    ScrCmd_016 _0E21

_0DFB:
    ScrCmd_034
    ScrCmd_01A _0F94
    ScrCmd_0AB 3
    ScrCmd_0A1
    ScrCmd_016 _0E21

_0E0E:
    ScrCmd_034
    ScrCmd_01A _0F94
    ScrCmd_0AB 4
    ScrCmd_0A1
    ScrCmd_016 _0E21

_0E21:
    ScrCmd_30B
    ScrCmd_0CD 0
    ScrCmd_02B 33
    ScrCmd_01A _0D2C
    ScrCmd_01A _0C06
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_016 _0D73

_0E45:
    ScrCmd_049 0x60D
    ScrCmd_0CD 0
    ScrCmd_02C 35
    ScrCmd_016 _0E55

_0E55:
    ScrCmd_01A _0E61
    ScrCmd_016 _0E83

_0E61:
    ScrCmd_044 1, 1, 0, 1, 0x800C
    ScrCmd_046 71, 80, 0
    ScrCmd_046 72, 81, 1
    ScrCmd_046 73, 82, 3
    ScrCmd_01B

_0E83:
    ScrCmd_047
    ScrCmd_029 0x8008, 0x800C
    ScrCmd_011 0x8008, 0
    ScrCmd_01C 1, _0EAB
    ScrCmd_011 0x8008, 1
    ScrCmd_01C 1, _0EE0
    ScrCmd_016 _0C1C

_0EAB:
    ScrCmd_034
    ScrCmd_1B4 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0EC6
    ScrCmd_1B3
    ScrCmd_016 _0ECF

_0EC6:
    ScrCmd_02C 52
    ScrCmd_016 _0E55

_0ECF:
    ScrCmd_0CD 0
    ScrCmd_033
    ScrCmd_01A _0E61
    ScrCmd_016 _0E83

_0EE0:
    ScrCmd_2AB 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0F01
    ScrCmd_034
    ScrCmd_01A _0F94
    ScrCmd_0A9
    ScrCmd_016 _0F0A

_0F01:
    ScrCmd_02C 118
    ScrCmd_016 _0E55

_0F0A:
    ScrCmd_0CD 0
    ScrCmd_02B 33
    ScrCmd_01A _0E61
    ScrCmd_01A _0C06
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_016 _0E83

_0F2C:
    ScrCmd_049 0x60D
    ScrCmd_034
    ScrCmd_336 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0F59
    ScrCmd_01A _0F94
    ScrCmd_0B1
    ScrCmd_0A1
    ScrCmd_01A _0F80
    ScrCmd_016 _0C1C

_0F59:
    ScrCmd_02C 131
    ScrCmd_016 _0C1C

_0F62:
    ScrCmd_049 0x60D
    ScrCmd_014 0x26DF
    ScrCmd_016 _0C1C

_0F70:
    ScrCmd_034
    ScrCmd_049 0x60E
    ScrCmd_01A _0C11
    ScrCmd_061
    ScrCmd_002

_0F80:
    ScrCmd_01A _0C06
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_01B

_0F94:
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_16A 90
    ScrCmd_01B

_0FA5:
    ScrCmd_002

_0FA7:
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_0A9
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_002

_0FC3:
    ScrCmd_02C 37
    ScrCmd_015
    ScrCmd_002

_0FCA:
    ScrCmd_060
    ScrCmd_05E 0xFF, _1250
    ScrCmd_05E 0, _1258
    ScrCmd_05F
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_0CD 0
    ScrCmd_02C 40
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_034
    ScrCmd_04E 0x48E
    ScrCmd_04F
    ScrCmd_14E
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_020 144
    ScrCmd_01D 1, _1030
    ScrCmd_020 144
    ScrCmd_01D 0, _1035
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_1030:
    ScrCmd_02C 41
    ScrCmd_01B

_1035:
    ScrCmd_02C 42
    ScrCmd_01B

_103A:
    ScrCmd_060
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_0CB 0x100
    ScrCmd_0CC
    ScrCmd_05E 0xFF, _02EC
    ScrCmd_05F
    ScrCmd_02C 43
    ScrCmd_01A _10C7
    ScrCmd_01A _01C1
    ScrCmd_15B 0, 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _10A2
    ScrCmd_02C 44
    ScrCmd_05E 0xFF, _02F4
    ScrCmd_05F
    ScrCmd_0CB 1
    ScrCmd_0CC
    ScrCmd_05E 0x8007, _02E0
    ScrCmd_05F
    ScrCmd_02C 45
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_10A2:
    ScrCmd_05E 0xFF, _02F4
    ScrCmd_05F
    ScrCmd_0CB 1
    ScrCmd_0CC
    ScrCmd_05E 0x8007, _02E0
    ScrCmd_05F
    ScrCmd_02C 39
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_10C7:
    ScrCmd_201 0x8004
    ScrCmd_011 0x8004, 6
    ScrCmd_01C 1, _11BD
    ScrCmd_011 0x8004, 36
    ScrCmd_01C 1, _11C5
    ScrCmd_011 0x8004, 48
    ScrCmd_01C 1, _11CD
    ScrCmd_011 0x8004, 69
    ScrCmd_01C 1, _11D5
    ScrCmd_011 0x8004, 101
    ScrCmd_01C 1, _11DD
    ScrCmd_011 0x8004, 123
    ScrCmd_01C 1, _11E5
    ScrCmd_011 0x8004, 134
    ScrCmd_01C 1, _11ED
    ScrCmd_011 0x8004, 151
    ScrCmd_01C 1, _11F5
    ScrCmd_011 0x8004, 168
    ScrCmd_01C 1, _11FD
    ScrCmd_011 0x8004, 173
    ScrCmd_01C 1, _1205
    ScrCmd_011 0x8004, 189
    ScrCmd_01C 1, _120D
    ScrCmd_011 0x8004, 0x1A4
    ScrCmd_01C 1, _1215
    ScrCmd_011 0x8004, 0x1AC
    ScrCmd_01C 1, _121D
    ScrCmd_011 0x8004, 0x1B3
    ScrCmd_01C 1, _1225
    ScrCmd_011 0x8004, 0x1BB
    ScrCmd_01C 1, _122D
    ScrCmd_011 0x8004, 0x1C4
    ScrCmd_01C 1, _1235
    ScrCmd_011 0x8004, 0x1CB
    ScrCmd_01C 1, _123D
    ScrCmd_011 0x8004, 175
    ScrCmd_01C 1, _1245
    ScrCmd_028 0x8007, 0
    ScrCmd_01B

_11BD:
    ScrCmd_028 0x8007, 3
    ScrCmd_01B

_11C5:
    ScrCmd_028 0x8007, 1
    ScrCmd_01B

_11CD:
    ScrCmd_028 0x8007, 3
    ScrCmd_01B

_11D5:
    ScrCmd_028 0x8007, 3
    ScrCmd_01B

_11DD:
    ScrCmd_028 0x8007, 0
    ScrCmd_01B

_11E5:
    ScrCmd_028 0x8007, 0
    ScrCmd_01B

_11ED:
    ScrCmd_028 0x8007, 0
    ScrCmd_01B

_11F5:
    ScrCmd_028 0x8007, 0
    ScrCmd_01B

_11FD:
    ScrCmd_028 0x8007, 0
    ScrCmd_01B

_1205:
    ScrCmd_028 0x8007, 0
    ScrCmd_01B

_120D:
    ScrCmd_028 0x8007, 0
    ScrCmd_01B

_1215:
    ScrCmd_028 0x8007, 3
    ScrCmd_01B

_121D:
    ScrCmd_028 0x8007, 2
    ScrCmd_01B

_1225:
    ScrCmd_028 0x8007, 0
    ScrCmd_01B

_122D:
    ScrCmd_028 0x8007, 0
    ScrCmd_01B

_1235:
    ScrCmd_028 0x8007, 0
    ScrCmd_01B

_123D:
    ScrCmd_028 0x8007, 0
    ScrCmd_01B

_1245:
    ScrCmd_028 0x8007, 3
    ScrCmd_01B

    .balign 4, 0
_1250:
    MoveAction_002
    EndMovement

    .balign 4, 0
_1258:
    MoveAction_003
    EndMovement

    .balign 4, 0
_1260:
    MoveAction_002
    EndMovement

    .byte 0
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 3
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_1278:
    MoveAction_001
    EndMovement

_1280:
    ScrCmd_002

_1282:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_205
    ScrCmd_0A1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_061
    ScrCmd_002

_12A8:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_20C
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_12BA:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 67
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_12CD:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 70
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_12E0:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 71
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_12F3:
    ScrCmd_07E 0x1C2, 1, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _135F
    ScrCmd_060
    ScrCmd_049 0x5DC
    ScrCmd_0C7 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _133C
    ScrCmd_02C 73
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _1359
    ScrCmd_0C8 1
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_133C:
    ScrCmd_02C 74
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _1359
    ScrCmd_0C8 0
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_1359:
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_135F:
    ScrCmd_002

_1361:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 76
    ScrCmd_030
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_034
    ScrCmd_1AC
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_061
    ScrCmd_002

_138C:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 79
    ScrCmd_030
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_139D:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_0A5
    ScrCmd_061
    ScrCmd_002

_13AB:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 82
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_13BE:
    ScrCmd_01A _13C8
    ScrCmd_015
    ScrCmd_002

_13C8:
    ScrCmd_026 0x4115, 1
    ScrCmd_011 0x4115, 9
    ScrCmd_01D 4, _1445
    ScrCmd_011 0x4115, 1
    ScrCmd_01D 1, _144D
    ScrCmd_011 0x4115, 2
    ScrCmd_01D 1, _1452
    ScrCmd_011 0x4115, 3
    ScrCmd_01D 1, _1457
    ScrCmd_011 0x4115, 4
    ScrCmd_01D 1, _145C
    ScrCmd_011 0x4115, 5
    ScrCmd_01D 1, _1461
    ScrCmd_011 0x4115, 6
    ScrCmd_01D 1, _1466
    ScrCmd_011 0x4115, 7
    ScrCmd_01D 1, _146B
    ScrCmd_011 0x4115, 8
    ScrCmd_01D 1, _1470
    ScrCmd_01B

_1445:
    ScrCmd_028 0x4115, 1
    ScrCmd_01B

_144D:
    ScrCmd_02C 110
    ScrCmd_01B

_1452:
    ScrCmd_02C 111
    ScrCmd_01B

_1457:
    ScrCmd_02C 112
    ScrCmd_01B

_145C:
    ScrCmd_02C 113
    ScrCmd_01B

_1461:
    ScrCmd_02C 114
    ScrCmd_01B

_1466:
    ScrCmd_02C 115
    ScrCmd_01B

_146B:
    ScrCmd_02C 116
    ScrCmd_01B

_1470:
    ScrCmd_02C 117
    ScrCmd_01B

_1475:
    ScrCmd_002

_1477:
    ScrCmd_060
    ScrCmd_201 0x8004
    ScrCmd_011 0x8004, 220
    ScrCmd_01C 1, _14AC
    ScrCmd_011 0x8004, 0x248
    ScrCmd_01C 1, _14AC
    ScrCmd_011 0x8004, 0x249
    ScrCmd_01C 1, _14AC
    ScrCmd_016 _1570
    ScrCmd_002

_14AC:
    ScrCmd_069 0x8004, 0x8005
    ScrCmd_011 0x8004, 31
    ScrCmd_01C 5, _1570
    ScrCmd_011 0x8005, 52
    ScrCmd_01C 5, _1570
    ScrCmd_166 0x4000
    ScrCmd_011 0x4000, 0
    ScrCmd_01C 1, _1570
    ScrCmd_22D 2, 0x4000
    ScrCmd_011 0x4000, 0
    ScrCmd_01C 1, _1570
    ScrCmd_28B 2, 0x4000
    ScrCmd_011 0x4000, 0
    ScrCmd_01C 1, _1570
    ScrCmd_020 0x11E
    ScrCmd_01C 1, _1570
    ScrCmd_0CD 0
    ScrCmd_02C 122
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _157B
    ScrCmd_0CD 0
    ScrCmd_02C 123
    ScrCmd_034
    ScrCmd_003 30, 0x800C
    ScrCmd_050 0x447
    ScrCmd_003 0x21C, 0x800C
    ScrCmd_069 0x8004, 0x8005
    ScrCmd_0BC 6, 6, 0, 0x7FFF
    ScrCmd_0BD
    ScrCmd_0BE 0x1FE, 0, 0x8004, 0x8005, 0
    ScrCmd_0BC 6, 6, 1, 0x7FFF
    ScrCmd_0BD
    ScrCmd_02C 124
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_1570:
    ScrCmd_02C 125
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_157B:
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_1581:
    ScrCmd_051 0
    ScrCmd_14D 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01D 1, _15A7
    ScrCmd_011 0x800C, 1
    ScrCmd_01D 1, _15AD
    ScrCmd_015
    ScrCmd_002

_15A7:
    ScrCmd_057 0x477
    ScrCmd_01B

_15AD:
    ScrCmd_057 0x476
    ScrCmd_01B

_15B3:
    ScrCmd_051 0
    ScrCmd_057 0x473
    ScrCmd_015
    ScrCmd_002

_15BF:
    ScrCmd_051 0
    ScrCmd_057 0x472
    ScrCmd_015
    ScrCmd_002

_15CB:
    ScrCmd_051 0
    ScrCmd_057 0x4B0
    ScrCmd_015
    ScrCmd_002

_15D7:
    ScrCmd_054 0, 30
    ScrCmd_051 0
    ScrCmd_052
    ScrCmd_015
    ScrCmd_002

_15E7:
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_0B3 0x800C
    ScrCmd_029 0x8004, 0x800C
    ScrCmd_2F6 0x8005, 0x8004, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _1624
    ScrCmd_0A1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_015
    ScrCmd_002

_1624:
    ScrCmd_0A1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_015
    ScrCmd_002

_1636:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_028 0x8004, 0
    ScrCmd_016 _1672
    ScrCmd_002

_164A:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_028 0x8004, 1
    ScrCmd_016 _1672
    ScrCmd_002

_165E:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_028 0x8004, 2
    ScrCmd_016 _1672
    ScrCmd_002

_1672:
    ScrCmd_02C 129
    ScrCmd_2E6 0xFF, 0x8004, 0x800C
    ScrCmd_029 0x8003, 0x800C
    ScrCmd_011 0x8003, 0xFFFE
    ScrCmd_01C 1, _16A4
    ScrCmd_2EC 21, 1, 0x8003, 0x800C
    ScrCmd_030
    ScrCmd_2ED
    ScrCmd_016 _16A4
    ScrCmd_002

_16A4:
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_16AA:
    ScrCmd_020 137
    ScrCmd_01C 1, _1706
    ScrCmd_011 0x4050, 4
    ScrCmd_01C 5, _1706
    ScrCmd_011 0x4051, 4
    ScrCmd_01C 5, _1706
    ScrCmd_011 0x4052, 4
    ScrCmd_01C 5, _1706
    ScrCmd_011 0x4053, 4
    ScrCmd_01C 5, _1706
    ScrCmd_011 0x404F, 4
    ScrCmd_01C 5, _1706
    ScrCmd_01E 137
    ScrCmd_30A 42
    ScrCmd_016 _1706
    ScrCmd_002

_1706:
    ScrCmd_015
    ScrCmd_002

_170A:
    ScrCmd_02C 130
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_015
    ScrCmd_002

    .byte 0
