    .include "macros/scrcmd.inc"

    .data

    .long _0036-.-4
    .long _0148-.-4
    .long _014A-.-4
    .long _0184-.-4
    .long _01D4-.-4
    .long _01E9-.-4
    .long _01FC-.-4
    .long _021B-.-4
    .long _0E74-.-4
    .long _0E74-.-4
    .long _0E74-.-4
    .long _0E74-.-4
    .long _1399-.-4
    .short 0xFD13

_0036:
    ScrCmd_060
    ScrCmd_028 0x800C, 7
    ScrCmd_01A _0052
    ScrCmd_01F 0x966
    ScrCmd_028 0x40D5, 0
    ScrCmd_061
    ScrCmd_002

_0052:
    ScrCmd_05E 0xFF, _0120
    ScrCmd_05F
    ScrCmd_168 0, 0, 0x800C, 5, 77
    ScrCmd_01A _010D
    ScrCmd_05E 0xFF, _0128
    ScrCmd_05F
    ScrCmd_01A _0115
    ScrCmd_01B

_007F:
    ScrCmd_05E 0xFF, _013C
    ScrCmd_05F
    ScrCmd_01B

_008B:
    ScrCmd_05E 0xFF, _0130
    ScrCmd_05F
    ScrCmd_011 0x8007, 3
    ScrCmd_01D 1, _00C8
    ScrCmd_011 0x8007, 5
    ScrCmd_01D 1, _00DF
    ScrCmd_011 0x8007, 7
    ScrCmd_01D 1, _00F6
    ScrCmd_028 0x8004, 0
    ScrCmd_03E 0x800C
    ScrCmd_01B

_00C8:
    ScrCmd_011 0x8004, 1
    ScrCmd_01C 2, _00DA
    ScrCmd_02C 184
    ScrCmd_01B

_00DA:
    ScrCmd_02C 185
    ScrCmd_01B

_00DF:
    ScrCmd_011 0x8004, 1
    ScrCmd_01C 2, _00F1
    ScrCmd_02C 194
    ScrCmd_01B

_00F1:
    ScrCmd_02C 195
    ScrCmd_01B

_00F6:
    ScrCmd_011 0x8004, 1
    ScrCmd_01C 2, _0108
    ScrCmd_02C 204
    ScrCmd_01B

_0108:
    ScrCmd_02C 205
    ScrCmd_01B

_010D:
    ScrCmd_16B 77
    ScrCmd_169 77
    ScrCmd_01B

_0115:
    ScrCmd_16C 77
    ScrCmd_169 77
    ScrCmd_16A 77
    ScrCmd_01B

    .balign 4, 0
_0120:
    MoveAction_00D
    EndMovement

    .balign 4, 0
_0128:
    MoveAction_00D 2
    EndMovement

    .balign 4, 0
_0130:
    MoveAction_00E
    MoveAction_024
    EndMovement

    .balign 4, 0
_013C:
    MoveAction_00E 2
    MoveAction_024
    EndMovement

_0148:
    ScrCmd_002

_014A:
    ScrCmd_011 0x40CC, 0
    ScrCmd_01D 1, _0168
    ScrCmd_011 0x40CC, 0
    ScrCmd_01C 1, _0166
    ScrCmd_265
_0166:
    ScrCmd_002

_0168:
    ScrCmd_028 0x40CC, 0
    ScrCmd_01E 0x201
    ScrCmd_01E 0x202
    ScrCmd_01E 0x203
    ScrCmd_01E 0x204
    ScrCmd_01E 0x205
    ScrCmd_01B

_0184:
    ScrCmd_266
    ScrCmd_01A _01B1
    ScrCmd_01A _0168
    ScrCmd_238 7, 0x4000
    ScrCmd_011 0x4000, 0
    ScrCmd_01C 1, _01AB
    ScrCmd_01F 0x213
    ScrCmd_002

_01AB:
    ScrCmd_01E 0x213
    ScrCmd_002

_01B1:
    ScrCmd_020 0x159
    ScrCmd_01C 1, _01BE
    ScrCmd_01B

_01BE:
    ScrCmd_186 9, 24, 6
    ScrCmd_188 9, 15
    ScrCmd_189 9, 1
    ScrCmd_01B

_01D4:
    ScrCmd_011 0x40CC, 1
    ScrCmd_01D 1, _01E3
    ScrCmd_002

_01E3:
    ScrCmd_1B2 0xFF
    ScrCmd_01B

_01E9:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 0
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_01FC:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_028 0x4003, 0
    ScrCmd_028 0x8007, 2
    ScrCmd_02C 3
    ScrCmd_016 _023A
    ScrCmd_002

_021B:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_028 0x4003, 1
    ScrCmd_028 0x8007, 2
    ScrCmd_02C 7
    ScrCmd_016 _023A
    ScrCmd_002

_023A:
    ScrCmd_011 0x4003, 1
    ScrCmd_01C 1, _0250
    ScrCmd_02C 4
    ScrCmd_016 _0253

_0250:
    ScrCmd_02C 12
_0253:
    ScrCmd_041 1, 1, 0, 1, 0x800C
    ScrCmd_042 8, 0
    ScrCmd_042 9, 1
    ScrCmd_042 10, 2
    ScrCmd_043
    ScrCmd_029 0x8008, 0x800C
    ScrCmd_011 0x8008, 0
    ScrCmd_01C 1, _02A8
    ScrCmd_011 0x8008, 1
    ScrCmd_01C 1, _02F0
    ScrCmd_016 _0291
    ScrCmd_002

_0291:
    ScrCmd_150
    ScrCmd_028 0x40D5, 0
    ScrCmd_01F 0x966
    ScrCmd_02C 11
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_02A8:
    ScrCmd_011 0x4003, 1
    ScrCmd_01C 1, _02BD
    ScrCmd_016 _040D
    ScrCmd_002

_02BD:
    ScrCmd_14E
    ScrCmd_01F 0x966
    ScrCmd_014 0x7D6
    ScrCmd_029 0x800C, 0x4000
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _02E2
    ScrCmd_016 _0291
    ScrCmd_002

_02E2:
    ScrCmd_028 0x8004, 2
    ScrCmd_016 _04A8
    ScrCmd_002

_02F0:
    ScrCmd_011 0x4003, 1
    ScrCmd_01C 1, _0305
    ScrCmd_016 _030E
    ScrCmd_002

_0305:
    ScrCmd_02C 13
    ScrCmd_016 _023A

_030E:
    ScrCmd_02C 5
_0311:
    ScrCmd_040 1, 1, 0, 1, 0x800C
    ScrCmd_042 96, 0
    ScrCmd_042 97, 1
    ScrCmd_042 98, 2
    ScrCmd_042 99, 3
    ScrCmd_043
    ScrCmd_029 0x8008, 0x800C
    ScrCmd_011 0x8008, 0
    ScrCmd_01C 1, _0360
    ScrCmd_011 0x8008, 1
    ScrCmd_01C 1, _0368
    ScrCmd_011 0x8008, 2
    ScrCmd_01C 1, _0373
    ScrCmd_016 _023A
    ScrCmd_002

_0360:
    ScrCmd_016 _0381
    ScrCmd_002

_0368:
    ScrCmd_02C 18
    ScrCmd_016 _030E
    ScrCmd_002

_0373:
    ScrCmd_02C 19
    ScrCmd_016 _030E
    ScrCmd_002

_037E:
    ScrCmd_02C 117
_0381:
    ScrCmd_041 1, 1, 0, 1, 0x800C
    ScrCmd_042 36, 0
    ScrCmd_042 37, 1
    ScrCmd_042 38, 2
    ScrCmd_042 39, 3
    ScrCmd_042 40, 4
    ScrCmd_043
    ScrCmd_029 0x8008, 0x800C
    ScrCmd_011 0x8008, 0
    ScrCmd_01C 1, _03E1
    ScrCmd_011 0x8008, 1
    ScrCmd_01C 1, _03EC
    ScrCmd_011 0x8008, 2
    ScrCmd_01C 1, _03F7
    ScrCmd_011 0x8008, 3
    ScrCmd_01C 1, _0402
    ScrCmd_016 _0311
    ScrCmd_002

_03E1:
    ScrCmd_02C 14
    ScrCmd_016 _037E
    ScrCmd_002

_03EC:
    ScrCmd_02C 15
    ScrCmd_016 _037E
    ScrCmd_002

_03F7:
    ScrCmd_02C 16
    ScrCmd_016 _037E
    ScrCmd_002

_0402:
    ScrCmd_02C 17
    ScrCmd_016 _037E
    ScrCmd_002

_040D:
    ScrCmd_02C 27
    ScrCmd_040 1, 1, 0, 1, 0x800C
    ScrCmd_042 105, 0
    ScrCmd_042 106, 1
    ScrCmd_042 107, 2
    ScrCmd_042 108, 3
    ScrCmd_042 109, 4
    ScrCmd_043
    ScrCmd_029 0x8008, 0x800C
    ScrCmd_011 0x8008, 0
    ScrCmd_01C 1, _0470
    ScrCmd_011 0x8008, 1
    ScrCmd_01C 1, _047E
    ScrCmd_011 0x8008, 2
    ScrCmd_01C 1, _048C
    ScrCmd_011 0x8008, 3
    ScrCmd_01C 1, _049A
    ScrCmd_016 _0291
    ScrCmd_002

_0470:
    ScrCmd_028 0x8004, 0
    ScrCmd_016 _04A8
    ScrCmd_002

_047E:
    ScrCmd_028 0x8004, 1
    ScrCmd_016 _04A8
    ScrCmd_002

_048C:
    ScrCmd_028 0x8004, 2
    ScrCmd_016 _04A8
    ScrCmd_002

_049A:
    ScrCmd_028 0x8004, 3
    ScrCmd_016 _04A8
    ScrCmd_002

_04A8:
    ScrCmd_02C 28
    ScrCmd_040 1, 1, 0, 1, 0x800C
    ScrCmd_042 110, 0
    ScrCmd_042 111, 1
    ScrCmd_042 112, 2
    ScrCmd_042 113, 3
    ScrCmd_042 114, 4
    ScrCmd_042 115, 5
    ScrCmd_043
    ScrCmd_029 0x8008, 0x800C
    ScrCmd_011 0x8008, 0
    ScrCmd_01C 1, _051C
    ScrCmd_011 0x8008, 1
    ScrCmd_01C 1, _052A
    ScrCmd_011 0x8008, 2
    ScrCmd_01C 1, _0538
    ScrCmd_011 0x8008, 3
    ScrCmd_01C 1, _0546
    ScrCmd_011 0x8008, 4
    ScrCmd_01C 1, _0554
    ScrCmd_016 _0291
    ScrCmd_002

_051C:
    ScrCmd_028 0x8005, 0
    ScrCmd_016 _0562
    ScrCmd_002

_052A:
    ScrCmd_028 0x8005, 1
    ScrCmd_016 _0562
    ScrCmd_002

_0538:
    ScrCmd_028 0x8005, 2
    ScrCmd_016 _0562
    ScrCmd_002

_0546:
    ScrCmd_028 0x8005, 3
    ScrCmd_016 _0562
    ScrCmd_002

_0554:
    ScrCmd_028 0x8005, 4
    ScrCmd_016 _0562
    ScrCmd_002

_0562:
    ScrCmd_02C 20
    ScrCmd_02C 21
    ScrCmd_034
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_011 0x4003, 0
    ScrCmd_01D 1, _0600
    ScrCmd_011 0x4003, 1
    ScrCmd_01D 1, _0608
    ScrCmd_028 0x800C, 0
_0596:
    ScrCmd_194 0x800C, 0x8004, 0x8005, 0x4004
    ScrCmd_195 0x4002, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _05C1
    ScrCmd_196 0x4002
    ScrCmd_197 0x800C
    ScrCmd_016 _0596

_05C1:
    ScrCmd_0A1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_011 0x4002, 0xFF
    ScrCmd_01C 1, _05E4
    ScrCmd_016 _0610
    ScrCmd_002

_05E4:
    ScrCmd_02C 215
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0291
    ScrCmd_016 _0562
    ScrCmd_002

_0600:
    ScrCmd_028 0x4004, 0
    ScrCmd_01B

_0608:
    ScrCmd_028 0x4004, 1
    ScrCmd_01B

_0610:
    ScrCmd_011 0x4003, 1
    ScrCmd_01C 1, _0625
    ScrCmd_016 _070D
    ScrCmd_002

_0625:
    ScrCmd_02C 219
    ScrCmd_040 30, 1, 0, 1, 0x800C
    ScrCmd_33A 1
    ScrCmd_042 13, 0
    ScrCmd_042 14, 1
    ScrCmd_042 5, 2
    ScrCmd_043
    ScrCmd_029 0x8008, 0x800C
    ScrCmd_011 0x8008, 0
    ScrCmd_01C 1, _0669
    ScrCmd_011 0x8008, 1
    ScrCmd_01C 1, _06BB
    ScrCmd_016 _0291
    ScrCmd_002

_0669:
    ScrCmd_02C 212
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0625
    ScrCmd_034
    ScrCmd_0F2 8, 0x8005, 0x8004, 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _06AB
    ScrCmd_011 0x800C, 3
    ScrCmd_01C 1, _06B3
    ScrCmd_016 _070D
    ScrCmd_002

_06AB:
    ScrCmd_016 _0625
    ScrCmd_002

_06B3:
    ScrCmd_016 _0625
    ScrCmd_002

_06BB:
    ScrCmd_02C 212
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0625
    ScrCmd_034
    ScrCmd_0F3 8, 0x8005, 0x8004, 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _06FD
    ScrCmd_011 0x800C, 3
    ScrCmd_01C 1, _0705
    ScrCmd_016 _070D
    ScrCmd_002

_06FD:
    ScrCmd_016 _0625
    ScrCmd_002

_0705:
    ScrCmd_150
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_070D:
    ScrCmd_0FA 0x8004, 0x8005, 0x8007, 0x4002
    ScrCmd_011 0x4003, 1
    ScrCmd_01D 1, _07B5
    ScrCmd_011 0x4003, 2
    ScrCmd_01C 1, _078A
    ScrCmd_109 0x800C
    ScrCmd_026 0x800C, 1
    ScrCmd_0FF 0x800C, 0
    ScrCmd_02F 22
    ScrCmd_109 0x800C
    ScrCmd_0FD 0x800C, 0
    ScrCmd_0FE 0x800C, 1
    ScrCmd_02F 64
    ScrCmd_0F8 25
    ScrCmd_0F9 25
    ScrCmd_034
_0761:
    ScrCmd_011 0x4003, 0
    ScrCmd_01C 1, _07BC
    ScrCmd_011 0x4003, 1
    ScrCmd_01C 1, _07F1
    ScrCmd_011 0x4003, 2
    ScrCmd_01C 1, _0830
    ScrCmd_002

_078A:
    ScrCmd_109 0x800C
    ScrCmd_026 0x800C, 1
    ScrCmd_0FF 0x800C, 0
    ScrCmd_02C 177
    ScrCmd_109 0x800C
    ScrCmd_0FD 0x800C, 0
    ScrCmd_0FE 0x800C, 1
    ScrCmd_034
    ScrCmd_016 _0761

_07B5:
    ScrCmd_02C 210
    ScrCmd_100
    ScrCmd_01B

_07BC:
    ScrCmd_168 0, 0, 19, 5, 77
    ScrCmd_01A _010D
    ScrCmd_05F
    ScrCmd_05E 0xFF, _0DA0
    ScrCmd_05E 0, _0E08
    ScrCmd_05F
    ScrCmd_01A _0115
    ScrCmd_05F
    ScrCmd_016 _086A
    ScrCmd_002

_07F1:
    ScrCmd_01E 0x966
    ScrCmd_028 0x40D5, 5
    ScrCmd_168 0, 0, 7, 5, 77
    ScrCmd_01A _010D
    ScrCmd_05F
    ScrCmd_05E 0xFF, _0DB0
    ScrCmd_05E 1, _0E18
    ScrCmd_05F
    ScrCmd_01A _0115
    ScrCmd_05F
    ScrCmd_016 _086A
    ScrCmd_002

_0830:
    ScrCmd_168 0, 0, 28, 5, 77
    ScrCmd_01A _010D
    ScrCmd_05F
    ScrCmd_05E 0xFF, _0DC0
    ScrCmd_05E 2, _0E28
    ScrCmd_05F
    ScrCmd_01A _0115
    ScrCmd_05F
    ScrCmd_02F 211
    ScrCmd_034
    ScrCmd_016 _086A
    ScrCmd_002

_086A:
    ScrCmd_011 0x4003, 2
    ScrCmd_01C 1, _08CD
    ScrCmd_0C6
    ScrCmd_14D 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0892
    ScrCmd_016 _08A0
    ScrCmd_002

_0892:
    ScrCmd_0CD 0
    ScrCmd_02F 66
    ScrCmd_016 _08AE
    ScrCmd_002

_08A0:
    ScrCmd_0CD 0
    ScrCmd_02F 67
    ScrCmd_016 _08AE
    ScrCmd_002

_08AE:
    ScrCmd_05E 0xFF, _0E00
    ScrCmd_05F
    ScrCmd_02F 68
    ScrCmd_0F8 26
    ScrCmd_0F9 26
    ScrCmd_034
    ScrCmd_016 _0947
    ScrCmd_002

_08CD:
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_101
    ScrCmd_110 0x8004, 0x8005, 0x8007, 0x4002
    ScrCmd_028 0x40CC, 0
    ScrCmd_0BE 117, 0, 28, 3, 1
    ScrCmd_060
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_10C 0x4003
    ScrCmd_110 0x8004, 0x8005, 0x8007, 0x4002
    ScrCmd_107 0x8004
    ScrCmd_118
    ScrCmd_0FB 0x4002
    ScrCmd_028 0x800C, 28
    ScrCmd_01A _0052
    ScrCmd_01A _008B
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _070D
    ScrCmd_02C 116
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0947:
    ScrCmd_01F 0x220
    ScrCmd_028 0x40CC, 1
    ScrCmd_01A _0D20
    ScrCmd_049 0x603
    ScrCmd_01F 0x201
    ScrCmd_01F 0x202
    ScrCmd_01F 0x203
    ScrCmd_01F 0x204
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_0BE 118, 0, 29, 7, 0
    ScrCmd_117
    ScrCmd_10C 0x4003
    ScrCmd_113
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_114
    ScrCmd_0F8 3
    ScrCmd_0F9 3
    ScrCmd_049 0x645
    ScrCmd_05E 0, _0E38
    ScrCmd_05F
    ScrCmd_102 0
    ScrCmd_103 1
    ScrCmd_02F 69
    ScrCmd_0F8 19
    ScrCmd_0F9 19
    ScrCmd_05E 0, _0E54
    ScrCmd_05F
    ScrCmd_0FD 0, 0
    ScrCmd_02F 70
    ScrCmd_10B 0, 0x800C
    ScrCmd_111 0
    ScrCmd_01A _0C47
    ScrCmd_112
    ScrCmd_0F8 20
    ScrCmd_0F9 20
    ScrCmd_05E 0, _0E5C
    ScrCmd_05F
    ScrCmd_0FD 1, 0
    ScrCmd_02F 71
    ScrCmd_10B 1, 0x800C
    ScrCmd_111 1
    ScrCmd_01A _0C47
    ScrCmd_112
    ScrCmd_0F8 21
    ScrCmd_0F9 21
    ScrCmd_003 8, 0x800C
    ScrCmd_0FD 2, 0
    ScrCmd_02F 72
    ScrCmd_10B 2, 0x800C
    ScrCmd_111 2
    ScrCmd_01A _0C47
    ScrCmd_112
    ScrCmd_0F8 22
    ScrCmd_0F9 22
    ScrCmd_05E 0, _0E64
    ScrCmd_05F
    ScrCmd_0FD 3, 0
    ScrCmd_02F 73
    ScrCmd_10B 3, 0x800C
    ScrCmd_111 3
    ScrCmd_01A _0C47
    ScrCmd_112
    ScrCmd_0F8 23
    ScrCmd_0F9 23
    ScrCmd_05E 0, _0E6C
    ScrCmd_05F
    ScrCmd_02F 74
    ScrCmd_034
    ScrCmd_0F8 4
    ScrCmd_0F9 4
    ScrCmd_049 0x645
    ScrCmd_003 30, 0x800C
    ScrCmd_113
    ScrCmd_0BC 6, 1, 20, 0
    ScrCmd_0BD
    ScrCmd_114
    ScrCmd_2B1
    ScrCmd_101
    ScrCmd_117
    ScrCmd_110 0x8004, 0x8005, 0x8007, 0x4002
    ScrCmd_10C 0x4003
    ScrCmd_01A _0D3A
    ScrCmd_2B0
    ScrCmd_0BC 6, 1, 1, 0x7FFF
    ScrCmd_0BD
    ScrCmd_108 0x800C
    ScrCmd_111 0x800C
    ScrCmd_10B 0x800C, 0x800C
    ScrCmd_01A _0C47
    ScrCmd_112
    ScrCmd_02F 76
    ScrCmd_115 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0B50
    ScrCmd_104 0
    ScrCmd_106 1
    ScrCmd_10E 2
    ScrCmd_10D 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0B1B
    ScrCmd_02F 79
    ScrCmd_016 _0B50

_0B1B:
    ScrCmd_02F 77
    ScrCmd_034
    ScrCmd_05E 0, _0E64
    ScrCmd_05E 5, _0E54
    ScrCmd_05F
    ScrCmd_003 15, 0x800C
    ScrCmd_04E 0x483
    ScrCmd_04F
    ScrCmd_05E 0, _0E6C
    ScrCmd_05E 5, _0E6C
    ScrCmd_05F
_0B50:
    ScrCmd_02F 78
    ScrCmd_034
    ScrCmd_049 0x645
    ScrCmd_108 0x800C
    ScrCmd_111 0x800C
    ScrCmd_10B 0x800C, 0x800C
    ScrCmd_01A _0C47
    ScrCmd_112
    ScrCmd_003 30, 0x800C
    ScrCmd_0F8 24
    ScrCmd_0F9 24
    ScrCmd_2BB
    ScrCmd_003 10, 0x800C
    ScrCmd_2B1
    ScrCmd_113
    ScrCmd_0BC 6, 1, 20, 0
    ScrCmd_0BD
    ScrCmd_114
    ScrCmd_110 0x8004, 0x8005, 0x8007, 0x4002
    ScrCmd_10F 0x8004
    ScrCmd_118
    ScrCmd_0FB 0x4002
    ScrCmd_028 0x40CC, 0
    ScrCmd_011 0x4003, 0
    ScrCmd_01C 1, _0BF2
    ScrCmd_0BE 117, 0, 7, 3, 1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_028 0x800C, 7
    ScrCmd_01A _0052
    ScrCmd_01F 0x966
    ScrCmd_028 0x40D5, 0
    ScrCmd_016 _0C45

_0BF2:
    ScrCmd_0BE 117, 0, 18, 3, 1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_028 0x800C, 19
    ScrCmd_01A _0052
    ScrCmd_01A _007F
    ScrCmd_011 0x8004, 0xFFFF
    ScrCmd_01C 1, _0C3E
    ScrCmd_0CD 0
    ScrCmd_261 1, 0x8004
    ScrCmd_02C 80
    ScrCmd_028 0x8005, 1
    ScrCmd_014 0x7FF
_0C3E:
    ScrCmd_02C 82
    ScrCmd_031
    ScrCmd_034
_0C45:
    ScrCmd_002

_0C47:
    ScrCmd_049 0x645
    ScrCmd_011 0x800C, 1
    ScrCmd_01D 1, _0C8E
    ScrCmd_011 0x800C, 2
    ScrCmd_01D 1, _0C98
    ScrCmd_011 0x800C, 3
    ScrCmd_01D 1, _0CAC
    ScrCmd_011 0x800C, 4
    ScrCmd_01D 1, _0CC8
    ScrCmd_011 0x800C, 5
    ScrCmd_01D 4, _0CEE
    ScrCmd_01B

_0C8E:
    ScrCmd_049 0x646
    ScrCmd_04B 0x646
    ScrCmd_01B

_0C98:
    ScrCmd_049 0x646
    ScrCmd_003 5, 0x800C
    ScrCmd_049 0x646
    ScrCmd_04B 0x646
    ScrCmd_01B

_0CAC:
    ScrCmd_049 0x646
    ScrCmd_04B 0x646
    ScrCmd_049 0x646
    ScrCmd_003 5, 0x800C
    ScrCmd_049 0x646
    ScrCmd_04B 0x646
    ScrCmd_01B

_0CC8:
    ScrCmd_049 0x646
    ScrCmd_003 5, 0x800C
    ScrCmd_049 0x646
    ScrCmd_04B 0x646
    ScrCmd_049 0x646
    ScrCmd_003 5, 0x800C
    ScrCmd_049 0x646
    ScrCmd_04B 0x646
    ScrCmd_01B

_0CEE:
    ScrCmd_049 0x646
    ScrCmd_003 5, 0x800C
    ScrCmd_049 0x646
    ScrCmd_003 5, 0x800C
    ScrCmd_049 0x646
    ScrCmd_003 10, 0x800C
    ScrCmd_049 0x646
    ScrCmd_003 5, 0x800C
    ScrCmd_049 0x646
    ScrCmd_04B 0x646
    ScrCmd_01B

_0D20:
    ScrCmd_10A 0, 0x4020
    ScrCmd_10A 1, 0x4021
    ScrCmd_10A 2, 0x4022
    ScrCmd_10A 3, 0x4023
    ScrCmd_01B

_0D3A:
    ScrCmd_108 0x800C
    ScrCmd_10A 0x800C, 0x4024
    ScrCmd_01F 0x205
    ScrCmd_064 5
    ScrCmd_108 0x4000
    ScrCmd_011 0x4000, 0
    ScrCmd_01C 1, _0D86
    ScrCmd_011 0x4000, 1
    ScrCmd_01C 1, _0D8C
    ScrCmd_011 0x4000, 2
    ScrCmd_01C 1, _0D92
    ScrCmd_011 0x4000, 3
    ScrCmd_01C 1, _0D98
    ScrCmd_01B

_0D86:
    ScrCmd_065 1
    ScrCmd_01B

_0D8C:
    ScrCmd_065 2
    ScrCmd_01B

_0D92:
    ScrCmd_065 3
    ScrCmd_01B

_0D98:
    ScrCmd_065 4
    ScrCmd_01B

    .balign 4, 0
_0DA0:
    MoveAction_00F 2
    MoveAction_00C 3
    MoveAction_022
    EndMovement

    .balign 4, 0
_0DB0:
    MoveAction_00F 2
    MoveAction_00C 3
    MoveAction_022
    EndMovement

    .balign 4, 0
_0DC0:
    MoveAction_00F
    MoveAction_00C 3
    EndMovement

    .byte 62
    .byte 0
    .byte 1
    .byte 0
    .byte 3
    .byte 0
    .byte 1
    .byte 0
    .byte 62
    .byte 0
    .byte 1
    .byte 0
    .byte 1
    .byte 0
    .byte 1
    .byte 0
    .byte 61
    .byte 0
    .byte 1
    .byte 0
    .byte 2
    .byte 0
    .byte 1
    .byte 0
    .byte 60
    .byte 0
    .byte 1
    .byte 0
    .byte 0
    .byte 0
    .byte 1
    .byte 0
    .byte 60
    .byte 0
    .byte 1
    .byte 0
    .byte 3
    .byte 0
    .byte 1
    .byte 0
    .byte 60
    .byte 0
    .byte 1
    .byte 0
    .byte 1
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_0E00:
    MoveAction_020
    EndMovement

    .balign 4, 0
_0E08:
    MoveAction_03F 2
    MoveAction_00C
    MoveAction_00F
    EndMovement

    .balign 4, 0
_0E18:
    MoveAction_03F 2
    MoveAction_00C
    MoveAction_00F
    EndMovement

    .balign 4, 0
_0E28:
    MoveAction_03F 2
    MoveAction_00C
    MoveAction_023
    EndMovement

    .balign 4, 0
_0E38:
    MoveAction_03F 2
    MoveAction_022
    MoveAction_03F
    MoveAction_023
    MoveAction_03F
    MoveAction_025
    EndMovement

    .balign 4, 0
_0E54:
    MoveAction_022
    EndMovement

    .balign 4, 0
_0E5C:
    MoveAction_020
    EndMovement

    .balign 4, 0
_0E64:
    MoveAction_023
    EndMovement

    .balign 4, 0
_0E6C:
    MoveAction_021
    EndMovement

_0E74:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_028 0x4003, 2
    ScrCmd_028 0x8004, 0
    ScrCmd_02C 111
    ScrCmd_016 _0E93
    ScrCmd_002

_0E93:
    ScrCmd_02C 112
    ScrCmd_041 1, 1, 0, 1, 0x800C
    ScrCmd_042 113, 0
    ScrCmd_042 114, 1
    ScrCmd_042 115, 2
    ScrCmd_043
    ScrCmd_029 0x8008, 0x800C
    ScrCmd_011 0x8008, 0
    ScrCmd_01C 1, _0EE1
    ScrCmd_011 0x8008, 1
    ScrCmd_01C 1, _1169
    ScrCmd_011 0x8008, 2
    ScrCmd_01C 1, _138E
    ScrCmd_016 _138E
    ScrCmd_002

_0EE1:
    ScrCmd_041 1, 1, 0, 1, 0x800C
    ScrCmd_042 155, 0
    ScrCmd_042 156, 1
    ScrCmd_042 157, 2
    ScrCmd_042 158, 3
    ScrCmd_043
    ScrCmd_029 0x8008, 0x800C
    ScrCmd_011 0x8008, 0
    ScrCmd_01C 1, _0F30
    ScrCmd_011 0x8008, 1
    ScrCmd_01C 1, _0F44
    ScrCmd_011 0x8008, 2
    ScrCmd_01C 1, _0F5E
    ScrCmd_016 _0F72
    ScrCmd_002

_0F30:
    ScrCmd_028 0x4004, 0
    ScrCmd_028 0x8007, 3
    ScrCmd_016 _1027
    ScrCmd_002

_0F44:
    ScrCmd_028 0x4004, 1
    ScrCmd_028 0x8005, 0
    ScrCmd_028 0x8007, 5
    ScrCmd_016 _1027
    ScrCmd_002

_0F5E:
    ScrCmd_028 0x4004, 0
    ScrCmd_028 0x8007, 7
    ScrCmd_016 _1027
    ScrCmd_002

_0F72:
    ScrCmd_02C 159
    ScrCmd_031
    ScrCmd_016 _1393

    .byte 2
    .byte 0
    .byte 44
    .byte 0
    .byte 168
    .byte 65
    .byte 0
    .byte 1
    .byte 1
    .byte 0
    .byte 1
    .byte 12
    .byte 128
    .byte 66
    .byte 0
    .byte 169
    .byte 0
    .byte 66
    .byte 0
    .byte 170
    .byte 1
    .byte 66
    .byte 0
    .byte 171
    .byte 2
    .byte 66
    .byte 0
    .byte 172
    .byte 3
    .byte 66
    .byte 0
    .byte 173
    .byte 4
    .byte 67
    .byte 0
    .byte 41
    .byte 0
    .byte 8
    .byte 128
    .byte 12
    .byte 128
    .byte 17
    .byte 0
    .byte 8
    .byte 128
    .byte 0
    .byte 0
    .byte 28
    .byte 0
    .byte 1
    .byte 47
    .byte 0
    .byte 0
    .byte 0
    .byte 17
    .byte 0
    .byte 8
    .byte 128
    .byte 1
    .byte 0
    .byte 28
    .byte 0
    .byte 1
    .byte 48
    .byte 0
    .byte 0
    .byte 0
    .byte 17
    .byte 0
    .byte 8
    .byte 128
    .byte 2
    .byte 0
    .byte 28
    .byte 0
    .byte 1
    .byte 49
    .byte 0
    .byte 0
    .byte 0
    .byte 17
    .byte 0
    .byte 8
    .byte 128
    .byte 3
    .byte 0
    .byte 28
    .byte 0
    .byte 1
    .byte 50
    .byte 0
    .byte 0
    .byte 0
    .byte 22
    .byte 0
    .byte 58
    .byte 0
    .byte 0
    .byte 0
    .byte 2
    .byte 0
    .byte 40
    .byte 0
    .byte 4
    .byte 128
    .byte 0
    .byte 0
    .byte 22
    .byte 0
    .byte 57
    .byte 0
    .byte 0
    .byte 0
    .byte 2
    .byte 0
    .byte 40
    .byte 0
    .byte 4
    .byte 128
    .byte 1
    .byte 0
    .byte 22
    .byte 0
    .byte 43
    .byte 0
    .byte 0
    .byte 0
    .byte 2
    .byte 0
    .byte 40
    .byte 0
    .byte 4
    .byte 128
    .byte 2
    .byte 0
    .byte 22
    .byte 0
    .byte 29
    .byte 0
    .byte 0
    .byte 0
    .byte 2
    .byte 0
    .byte 40
    .byte 0
    .byte 4
    .byte 128
    .byte 3
    .byte 0
    .byte 22
    .byte 0
    .byte 15
    .byte 0
    .byte 0
    .byte 0
    .byte 2
    .byte 0
    .byte 44
    .byte 0
    .byte 174
    .byte 49
    .byte 0
    .byte 22
    .byte 0
    .byte 110
    .byte 3
    .byte 0
    .byte 0
    .byte 2
    .byte 0

_1027:
    ScrCmd_011 0x4004, 1
    ScrCmd_01C 1, _1101
    ScrCmd_016 _103A

_103A:
    ScrCmd_02C 160
    ScrCmd_041 1, 1, 0, 1, 0x800C
    ScrCmd_042 161, 0
    ScrCmd_042 162, 1
    ScrCmd_042 163, 2
    ScrCmd_042 164, 3
    ScrCmd_042 165, 4
    ScrCmd_042 166, 5
    ScrCmd_043
    ScrCmd_029 0x8008, 0x800C
    ScrCmd_011 0x8008, 0
    ScrCmd_01C 1, _10AE
    ScrCmd_011 0x8008, 1
    ScrCmd_01C 1, _10BC
    ScrCmd_011 0x8008, 2
    ScrCmd_01C 1, _10CA
    ScrCmd_011 0x8008, 3
    ScrCmd_01C 1, _10D8
    ScrCmd_011 0x8008, 4
    ScrCmd_01C 1, _10E6
    ScrCmd_016 _10F4
    ScrCmd_002

_10AE:
    ScrCmd_028 0x8005, 0
    ScrCmd_016 _1101
    ScrCmd_002

_10BC:
    ScrCmd_028 0x8005, 1
    ScrCmd_016 _1101
    ScrCmd_002

_10CA:
    ScrCmd_028 0x8005, 2
    ScrCmd_016 _1101
    ScrCmd_002

_10D8:
    ScrCmd_028 0x8005, 3
    ScrCmd_016 _1101
    ScrCmd_002

_10E6:
    ScrCmd_028 0x8005, 4
    ScrCmd_016 _1101
    ScrCmd_002

_10F4:
    ScrCmd_02C 167
    ScrCmd_031
    ScrCmd_016 _1393
    ScrCmd_002

_1101:
    ScrCmd_02C 175
    ScrCmd_02C 176
    ScrCmd_034
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_028 0x800C, 0
_111B:
    ScrCmd_194 0x800C, 0x8004, 0x8005, 0
    ScrCmd_195 0x4002, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _1146
    ScrCmd_196 0x4002
    ScrCmd_197 0x800C
    ScrCmd_016 _111B

_1146:
    ScrCmd_0A1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_011 0x4002, 0xFF
    ScrCmd_01C 1, _10F4
    ScrCmd_016 _070D
    ScrCmd_002

_1169:
    ScrCmd_02C 117
_116C:
    ScrCmd_041 1, 1, 0, 1, 0x800C
    ScrCmd_042 121, 0
    ScrCmd_042 118, 1
    ScrCmd_042 119, 2
    ScrCmd_042 120, 3
    ScrCmd_042 122, 4
    ScrCmd_043
    ScrCmd_029 0x8008, 0x800C
    ScrCmd_011 0x8008, 0
    ScrCmd_01C 1, _1375
    ScrCmd_011 0x8008, 1
    ScrCmd_01C 1, _11CF
    ScrCmd_011 0x8008, 2
    ScrCmd_01C 1, _124A
    ScrCmd_011 0x8008, 3
    ScrCmd_01C 1, _12E1
    ScrCmd_016 _0E93
    ScrCmd_002

_11CC:
    ScrCmd_02C 117
_11CF:
    ScrCmd_041 1, 1, 0, 1, 0x800C
    ScrCmd_042 125, 0
    ScrCmd_042 126, 1
    ScrCmd_042 127, 2
    ScrCmd_042 129, 3
    ScrCmd_043
    ScrCmd_029 0x8008, 0x800C
    ScrCmd_011 0x8008, 0
    ScrCmd_01C 1, _121E
    ScrCmd_011 0x8008, 1
    ScrCmd_01C 1, _1229
    ScrCmd_011 0x8008, 2
    ScrCmd_01C 1, _1234
    ScrCmd_016 _123F
    ScrCmd_002

_121E:
    ScrCmd_02C 130
    ScrCmd_016 _11CC
    ScrCmd_002

_1229:
    ScrCmd_02C 131
    ScrCmd_016 _11CC
    ScrCmd_002

_1234:
    ScrCmd_02C 132
    ScrCmd_016 _11CC
    ScrCmd_002

_123F:
    ScrCmd_016 _116C
    ScrCmd_002

_1247:
    ScrCmd_02C 117
_124A:
    ScrCmd_041 1, 1, 0, 1, 0x800C
    ScrCmd_042 135, 0
    ScrCmd_042 136, 1
    ScrCmd_042 137, 2
    ScrCmd_042 138, 3
    ScrCmd_042 139, 4
    ScrCmd_043
    ScrCmd_029 0x8008, 0x800C
    ScrCmd_011 0x8008, 0
    ScrCmd_01C 1, _12AA
    ScrCmd_011 0x8008, 1
    ScrCmd_01C 1, _12B5
    ScrCmd_011 0x8008, 2
    ScrCmd_01C 1, _12C0
    ScrCmd_011 0x8008, 3
    ScrCmd_01C 1, _12CB
    ScrCmd_016 _12D6
    ScrCmd_002

_12AA:
    ScrCmd_02C 140
    ScrCmd_016 _1247
    ScrCmd_002

_12B5:
    ScrCmd_02C 141
    ScrCmd_016 _1247
    ScrCmd_002

_12C0:
    ScrCmd_02C 142
    ScrCmd_016 _1247
    ScrCmd_002

_12CB:
    ScrCmd_02C 143
    ScrCmd_016 _1247
    ScrCmd_002

_12D6:
    ScrCmd_016 _116C
    ScrCmd_002

_12DE:
    ScrCmd_02C 117
_12E1:
    ScrCmd_041 1, 1, 0, 1, 0x800C
    ScrCmd_042 145, 0
    ScrCmd_042 146, 1
    ScrCmd_042 147, 2
    ScrCmd_042 148, 3
    ScrCmd_042 149, 4
    ScrCmd_043
    ScrCmd_029 0x8008, 0x800C
    ScrCmd_011 0x8008, 0
    ScrCmd_01C 1, _1341
    ScrCmd_011 0x8008, 1
    ScrCmd_01C 1, _134C
    ScrCmd_011 0x8008, 2
    ScrCmd_01C 1, _1357
    ScrCmd_011 0x8008, 3
    ScrCmd_01C 1, _1362
    ScrCmd_016 _136D
    ScrCmd_002

_1341:
    ScrCmd_02C 150
    ScrCmd_016 _12DE
    ScrCmd_002

_134C:
    ScrCmd_02C 151
    ScrCmd_016 _12DE
    ScrCmd_002

_1357:
    ScrCmd_02C 152
    ScrCmd_016 _12DE
    ScrCmd_002

_1362:
    ScrCmd_02C 153
    ScrCmd_016 _12DE
    ScrCmd_002

_136D:
    ScrCmd_016 _116C
    ScrCmd_002

_1375:
    ScrCmd_02C 124
    ScrCmd_02C 117
    ScrCmd_016 _116C

    .byte 2
    .byte 0
    .byte 44
    .byte 0
    .byte 123
    .byte 22
    .byte 0
    .byte 7
    .byte 0
    .byte 0
    .byte 0
    .byte 2
    .byte 0

_138E:
    ScrCmd_02C 116
    ScrCmd_031
_1393:
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_1399:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_116
    ScrCmd_061
    ScrCmd_002

    .byte 0
    .byte 0
    .byte 0
