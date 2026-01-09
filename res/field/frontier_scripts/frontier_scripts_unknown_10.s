# include "macros/frscrcmd.inc"

    .data

    .long _0039 - 4
    .long _08D9 - 4
    .short 0xFD13

    .balign 4, 0
_000C:
    .short 0xEEEE
    .byte 0x00
    .short 0xEEEF
    .byte 0x00
    .short 0xFD13

    .balign 4, 0
_0014:
    .short 0x0000
    .short 0xEEEE
    .byte 0x01
    .short 0x0070
    .short 0x0070
    .byte 0x00
    .byte 0x00
    .short 0x0002
    .short 0xEEEF
    .byte 0x00
    .short 0x0070
    .short 0x0040
    .byte 0x01
    .byte 0x00
    .byte 0x00
    .short 0x0003
    .short 0xEEEF
    .byte 0x00
    .short 0x0080
    .short 0x0040
    .byte 0x01
    .byte 0x00
    .byte 0x01
    .short 0xFD13

_0039:
    FrontierScrCmd_39
    FrontierScrCmd_5A 0x444
    FrontierScrCmd_AA
    FrontierScrCmd_05 1, 0x8008
    FrontierScrCmd_B2 0, 0, 0, 0x8008
    FrontierScrCmd_05 1, 0x8008
    FrontierScrCmd_36
    FrontierScrCmd_35 176
    FrontierScrCmd_36
    FrontierScrCmd_22 _000C
    FrontierScrCmd_24 _0014
    FrontierScrCmd_0A _0070
    FrontierScrCmd_01

_0070:
    FrontierScrCmd_13 6, 1, 1, 0
    FrontierScrCmd_14
    FrontierScrCmd_0A _0084
    FrontierScrCmd_01

_0084:
    FrontierScrCmd_11 0
    FrontierScrCmd_1B 31, 5, 0, 1, 0x8008
    FrontierScrCmd_CA 1
    FrontierScrCmd_1C 26, 255, 1
    FrontierScrCmd_1C 27, 255, 2
    FrontierScrCmd_1C 28, 255, 4
    FrontierScrCmd_1C 29, 255, 5
    FrontierScrCmd_1C 30, 255, 6
    FrontierScrCmd_1C 31, 255, 7
    FrontierScrCmd_1D
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _010E
    FrontierScrCmd_20 0x8008, 2
    FrontierScrCmd_0B 1, _012F
    FrontierScrCmd_20 0x8008, 4
    FrontierScrCmd_0B 1, _01CA
    FrontierScrCmd_20 0x8008, 5
    FrontierScrCmd_0B 1, _01F1
    FrontierScrCmd_20 0x8008, 6
    FrontierScrCmd_0B 1, _0218
    FrontierScrCmd_0A _023F
    FrontierScrCmd_01

_010E:
    FrontierScrCmd_B2 7, 1, 0, 0x8008
    FrontierScrCmd_06 0x8004, 0
    FrontierScrCmd_06 0x8009, 1
    FrontierScrCmd_3D 0x4003, 0
    FrontierScrCmd_0A _0254
    FrontierScrCmd_01

_012F:
    FrontierScrCmd_3D 0x40B8, 3
    FrontierScrCmd_3D 0x4003, 0
    FrontierScrCmd_0A _0143
    FrontierScrCmd_01

_0143:
    FrontierScrCmd_11 14
    FrontierScrCmd_16 31, 11, 0, 1, 0x8008
    FrontierScrCmd_CA 1
    FrontierScrCmd_17 32, 0
    FrontierScrCmd_17 33, 1
    FrontierScrCmd_17 31, 2
    FrontierScrCmd_19
    FrontierScrCmd_20 0x8008, 0
    FrontierScrCmd_0B 1, _0188
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _01A9
    FrontierScrCmd_0A _0084
    FrontierScrCmd_01

_0188:
    FrontierScrCmd_B2 7, 2, 0, 0x8008
    FrontierScrCmd_06 0x8004, 0
    FrontierScrCmd_06 0x8009, 2
    FrontierScrCmd_3D 0x40B9, 0
    FrontierScrCmd_0A _0254
    FrontierScrCmd_01

_01A9:
    FrontierScrCmd_B2 7, 3, 0, 0x8008
    FrontierScrCmd_06 0x8004, 0
    FrontierScrCmd_06 0x8009, 3
    FrontierScrCmd_3D 0x40B9, 1
    FrontierScrCmd_0A _0254
    FrontierScrCmd_01

_01CA:
    FrontierScrCmd_B2 7, 4, 0, 0x8008
    FrontierScrCmd_06 0x8004, 0
    FrontierScrCmd_06 0x8009, 4
    FrontierScrCmd_3D 0x40BD, 3
    FrontierScrCmd_3D 0x4003, 0
    FrontierScrCmd_0A _0254
    FrontierScrCmd_01

_01F1:
    FrontierScrCmd_B2 7, 5, 0, 0x8008
    FrontierScrCmd_06 0x8004, 0
    FrontierScrCmd_06 0x8009, 5
    FrontierScrCmd_3D 0x40BB, 3
    FrontierScrCmd_3D 0x4003, 0
    FrontierScrCmd_0A _0254
    FrontierScrCmd_01

_0218:
    FrontierScrCmd_B2 7, 6, 0, 0x8008
    FrontierScrCmd_06 0x8004, 0
    FrontierScrCmd_06 0x8009, 6
    FrontierScrCmd_3D 0x40BE, 3
    FrontierScrCmd_3D 0x4003, 0
    FrontierScrCmd_0A _0254
    FrontierScrCmd_01

_023F:
    FrontierScrCmd_B2 7, 7, 0, 0x8008
    FrontierScrCmd_06 0x8004, 1
    FrontierScrCmd_0A _0254
    FrontierScrCmd_01

_0254:
    FrontierScrCmd_10 4
    FrontierScrCmd_0A _0260
    FrontierScrCmd_01

_0260:
    FrontierScrCmd_06 0x800A, 1
    FrontierScrCmd_AC 0x800A, 0x8004, 0, 0x8008
    FrontierScrCmd_20 0x8008, 0
    FrontierScrCmd_0B 1, _0260
    FrontierScrCmd_AD 0x800A
    FrontierScrCmd_36
    FrontierScrCmd_B2 9, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 7
    FrontierScrCmd_0B 1, _09C0
    FrontierScrCmd_B1 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _02B8
    FrontierScrCmd_36
    FrontierScrCmd_35 170
    FrontierScrCmd_36
    FrontierScrCmd_0A _02C0
    FrontierScrCmd_01

_02B8:
    FrontierScrCmd_0A _09AD
    FrontierScrCmd_01

_02C0:
    FrontierScrCmd_06 0x800A, 0
    FrontierScrCmd_AC 0x800A, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 0
    FrontierScrCmd_0B 1, _02C0
    FrontierScrCmd_AD 0x800A
    FrontierScrCmd_36
    FrontierScrCmd_AE 0x8009, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _0302
    FrontierScrCmd_11 3
    FrontierScrCmd_0A _0084
    FrontierScrCmd_01

_0302:
    FrontierScrCmd_B2 9, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _0345
    FrontierScrCmd_20 0x8008, 5
    FrontierScrCmd_0B 1, _0345
    FrontierScrCmd_20 0x8008, 4
    FrontierScrCmd_0B 1, _0345
    FrontierScrCmd_20 0x8008, 6
    FrontierScrCmd_0B 1, _0345
    FrontierScrCmd_0A _0758
    FrontierScrCmd_01

_0345:
    FrontierScrCmd_11 2
    FrontierScrCmd_13 6, 1, 0, 0
    FrontierScrCmd_14
    FrontierScrCmd_12
    FrontierScrCmd_B2 13, 0, 0, 0x8008
    FrontierScrCmd_0A _037E
    FrontierScrCmd_01

_0366:
    FrontierScrCmd_AF 0x8009, 2, 0x8008
    FrontierScrCmd_AF 0x8009, 3, 0x8008
    FrontierScrCmd_0A _037E
    FrontierScrCmd_01

_037E:
    FrontierScrCmd_AF 0x8009, 0, 0x8008
    FrontierScrCmd_AF 0x8009, 1, 0x8008
    FrontierScrCmd_20 0x8008, 2
    FrontierScrCmd_0B 1, _0366
    FrontierScrCmd_B0 0x8002, 0x8005
    FrontierScrCmd_3D 0x4002, 0x8002
    FrontierScrCmd_3D 0x4005, 0x8005
    FrontierScrCmd_13 6, 1, 1, 0
    FrontierScrCmd_14
    FrontierScrCmd_0A _03C1
    FrontierScrCmd_01

_03C1:
    FrontierScrCmd_10 4
    FrontierScrCmd_0A _03CD
    FrontierScrCmd_01

_03CD:
    FrontierScrCmd_06 0x800A, 2
    FrontierScrCmd_AC 0x800A, 0x8002, 0x8005, 0x8008
    FrontierScrCmd_20 0x8008, 0
    FrontierScrCmd_0B 1, _03CD
    FrontierScrCmd_AD 0x800A
    FrontierScrCmd_36
    FrontierScrCmd_20 0x8002, 255
    FrontierScrCmd_0B 1, _0084
    FrontierScrCmd_B2 1, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 0
    FrontierScrCmd_0B 1, _044E
    FrontierScrCmd_B2 9, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _045D
    FrontierScrCmd_20 0x8008, 5
    FrontierScrCmd_0B 1, _04F9
    FrontierScrCmd_20 0x8008, 4
    FrontierScrCmd_0B 1, _0620
    FrontierScrCmd_20 0x8008, 6
    FrontierScrCmd_0B 1, _06BC
    FrontierScrCmd_01

_044E:
    FrontierScrCmd_7C 0
    FrontierScrCmd_11 1
    FrontierScrCmd_0A _0084
    FrontierScrCmd_01

_045D:
    FrontierScrCmd_B2 2, 1, 0, 0x8008
    FrontierScrCmd_07 0x8010, 0x8008
    FrontierScrCmd_20 0x8010, 1
    FrontierScrCmd_0B 1, _0499
    FrontierScrCmd_20 0x8010, 2
    FrontierScrCmd_0B 1, _04B4
    FrontierScrCmd_20 0x8010, 3
    FrontierScrCmd_0B 1, _04CF
    FrontierScrCmd_0A _0758
    FrontierScrCmd_01

_0499:
    FrontierScrCmd_B2 5, 0, 0, 0x8008
    FrontierScrCmd_7E 0, 0x8008, 0, 0
    FrontierScrCmd_11 6
    FrontierScrCmd_0A _0084
    FrontierScrCmd_01

_04B4:
    FrontierScrCmd_B2 5, 1, 0, 0x8008
    FrontierScrCmd_7E 0, 0x8008, 0, 0
    FrontierScrCmd_11 6
    FrontierScrCmd_0A _0084
    FrontierScrCmd_01

_04CF:
    FrontierScrCmd_B2 5, 0, 0, 0x8008
    FrontierScrCmd_7E 0, 0x8008, 0, 0
    FrontierScrCmd_B2 5, 1, 0, 0x8008
    FrontierScrCmd_7E 1, 0x8008, 0, 0
    FrontierScrCmd_11 7
    FrontierScrCmd_0A _0084
    FrontierScrCmd_01

_04F9:
    FrontierScrCmd_B2 2, 5, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _0614
    FrontierScrCmd_0C _081C
    FrontierScrCmd_20 0x800F, 0
    FrontierScrCmd_0B 1, _0766
    FrontierScrCmd_B2 3, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 0
    FrontierScrCmd_0B 1, _0758
    FrontierScrCmd_B2 4, 0, 0, 0x800B
    FrontierScrCmd_7E 0, 0x800B, 0, 0
    FrontierScrCmd_B2 5, 0, 0, 0x8008
    FrontierScrCmd_7E 1, 0x8008, 0, 0
    FrontierScrCmd_21 0x8008, 0x800B
    FrontierScrCmd_0B 1, _0758
    FrontierScrCmd_0A _0567
    FrontierScrCmd_01

_0567:
    FrontierScrCmd_11 15
    FrontierScrCmd_16 25, 13, 1, 1, 0x8008
    FrontierScrCmd_17 16, 0
    FrontierScrCmd_17 17, 1
    FrontierScrCmd_19
    FrontierScrCmd_10 24
    FrontierScrCmd_07 0x800B, 0x8008
    FrontierScrCmd_0A _0593
    FrontierScrCmd_01

_0593:
    FrontierScrCmd_06 0x800A, 4
    FrontierScrCmd_AC 0x800A, 0x800B, 0, 0x8008
    FrontierScrCmd_20 0x8008, 0
    FrontierScrCmd_0B 1, _0593
    FrontierScrCmd_AD 0x800A
    FrontierScrCmd_36
    FrontierScrCmd_B2 8, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _05F9
    FrontierScrCmd_20 0x8008, 0xFFFE
    FrontierScrCmd_0B 1, _05F9
    FrontierScrCmd_20 0x800B, 1
    FrontierScrCmd_0B 1, _05F9
    FrontierScrCmd_20 0x800B, 0xFFFE
    FrontierScrCmd_0B 1, _05F9
    FrontierScrCmd_0A _0605
    FrontierScrCmd_01

_05F9:
    FrontierScrCmd_11 18
    FrontierScrCmd_0A _0084
    FrontierScrCmd_01

_0605:
    FrontierScrCmd_B2 6, 0, 0, 0x8008
    FrontierScrCmd_0A _0758
    FrontierScrCmd_01

_0614:
    FrontierScrCmd_11 11
    FrontierScrCmd_0A _0084
    FrontierScrCmd_01

_0620:
    FrontierScrCmd_B2 2, 4, 0, 0x8008
    FrontierScrCmd_07 0x8010, 0x8008
    FrontierScrCmd_20 0x8010, 1
    FrontierScrCmd_0B 1, _065C
    FrontierScrCmd_20 0x8010, 2
    FrontierScrCmd_0B 1, _0677
    FrontierScrCmd_20 0x8010, 3
    FrontierScrCmd_0B 1, _0692
    FrontierScrCmd_0A _0758
    FrontierScrCmd_01

_065C:
    FrontierScrCmd_B2 5, 0, 0, 0x8008
    FrontierScrCmd_7E 0, 0x8008, 0, 0
    FrontierScrCmd_11 9
    FrontierScrCmd_0A _0084
    FrontierScrCmd_01

_0677:
    FrontierScrCmd_B2 5, 1, 0, 0x8008
    FrontierScrCmd_7E 0, 0x8008, 0, 0
    FrontierScrCmd_11 9
    FrontierScrCmd_0A _0084
    FrontierScrCmd_01

_0692:
    FrontierScrCmd_B2 5, 0, 0, 0x8008
    FrontierScrCmd_7E 0, 0x8008, 0, 0
    FrontierScrCmd_B2 5, 1, 0, 0x8008
    FrontierScrCmd_7E 1, 0x8008, 0, 0
    FrontierScrCmd_11 10
    FrontierScrCmd_0A _0084
    FrontierScrCmd_01

_06BC:
    FrontierScrCmd_B2 2, 6, 0, 0x8008
    FrontierScrCmd_07 0x8010, 0x8008
    FrontierScrCmd_20 0x8010, 1
    FrontierScrCmd_0B 1, _06F8
    FrontierScrCmd_20 0x8010, 2
    FrontierScrCmd_0B 1, _0713
    FrontierScrCmd_20 0x8010, 3
    FrontierScrCmd_0B 1, _072E
    FrontierScrCmd_0A _0758
    FrontierScrCmd_01

_06F8:
    FrontierScrCmd_B2 5, 0, 0, 0x8008
    FrontierScrCmd_7E 0, 0x8008, 0, 0
    FrontierScrCmd_11 9
    FrontierScrCmd_0A _0084
    FrontierScrCmd_01

_0713:
    FrontierScrCmd_B2 5, 1, 0, 0x8008
    FrontierScrCmd_7E 0, 0x8008, 0, 0
    FrontierScrCmd_11 9
    FrontierScrCmd_0A _0084
    FrontierScrCmd_01

_072E:
    FrontierScrCmd_B2 5, 0, 0, 0x8008
    FrontierScrCmd_7E 0, 0x8008, 0, 0
    FrontierScrCmd_B2 5, 1, 0, 0x8008
    FrontierScrCmd_7E 1, 0x8008, 0, 0
    FrontierScrCmd_11 10
    FrontierScrCmd_0A _0084
    FrontierScrCmd_01

_0758:
    FrontierScrCmd_0C _081C
    FrontierScrCmd_0A _0766
    FrontierScrCmd_01

_0766:
    FrontierScrCmd_B2 12, 0, 0, 0x8008
    FrontierScrCmd_3D 0x4064, 0x8008
    FrontierScrCmd_36
    FrontierScrCmd_35 175
    FrontierScrCmd_36
    FrontierScrCmd_0F 19
    FrontierScrCmd_77
    FrontierScrCmd_73 0x8008
    FrontierScrCmd_78
    FrontierScrCmd_55 0x61B
    FrontierScrCmd_57 0x61B
    FrontierScrCmd_10 20
    FrontierScrCmd_05 10, 0x8008
    FrontierScrCmd_36
    FrontierScrCmd_35 171
    FrontierScrCmd_36
    FrontierScrCmd_12
    FrontierScrCmd_13 6, 1, 0, 0
    FrontierScrCmd_14
    FrontierScrCmd_25 0
    FrontierScrCmd_25 2
    FrontierScrCmd_25 3
    FrontierScrCmd_48 58
    FrontierScrCmd_B2 9, 0, 0, 0x8008
    FrontierScrCmd_07 0x8010, 0x8008
    FrontierScrCmd_20 0x8010, 1
    FrontierScrCmd_0B 1, _0842
    FrontierScrCmd_20 0x8010, 2
    FrontierScrCmd_0B 1, _0879
    FrontierScrCmd_20 0x8010, 3
    FrontierScrCmd_0B 1, _0879
    FrontierScrCmd_20 0x8010, 5
    FrontierScrCmd_0B 1, _088D
    FrontierScrCmd_20 0x8010, 4
    FrontierScrCmd_0B 1, _08A1
    FrontierScrCmd_20 0x8010, 6
    FrontierScrCmd_0B 1, _08B5
    FrontierScrCmd_01

_081C:
    FrontierScrCmd_B2 11, 0, 0, 0x8008
    FrontierScrCmd_07 0x800F, 0x8008
    FrontierScrCmd_20 0x8008, 0
    FrontierScrCmd_0E 1, _0838
    FrontierScrCmd_0D

_0838:
    FrontierScrCmd_11 5
    FrontierScrCmd_10 4
    FrontierScrCmd_0D

_0842:
    FrontierScrCmd_B3
    FrontierScrCmd_3D 0x40DE, 1
    FrontierScrCmd_0C _08D3
    FrontierScrCmd_0A _0858
    FrontierScrCmd_01

_0858:
    FrontierScrCmd_B4 0x8008
    FrontierScrCmd_20 0x8008, 0
    FrontierScrCmd_0B 1, _0858
    FrontierScrCmd_B5
    FrontierScrCmd_0C _08C9
    FrontierScrCmd_04 6, 0
    FrontierScrCmd_01

_0879:
    FrontierScrCmd_AB
    FrontierScrCmd_5A 0x4AB
    FrontierScrCmd_0C _08C9
    FrontierScrCmd_04 3, 0
    FrontierScrCmd_01

_088D:
    FrontierScrCmd_AB
    FrontierScrCmd_5A 0x4A8
    FrontierScrCmd_0C _08C9
    FrontierScrCmd_04 9, 0
    FrontierScrCmd_01

_08A1:
    FrontierScrCmd_AB
    FrontierScrCmd_5A 0x4AA
    FrontierScrCmd_0C _08C9
    FrontierScrCmd_04 11, 0
    FrontierScrCmd_01

_08B5:
    FrontierScrCmd_AB
    FrontierScrCmd_5A 0x4A7
    FrontierScrCmd_0C _08C9
    FrontierScrCmd_04 15, 0
    FrontierScrCmd_01

_08C9:
    FrontierScrCmd_36
    FrontierScrCmd_35 173
    FrontierScrCmd_36
    FrontierScrCmd_0D

_08D3:
    FrontierScrCmd_36
    FrontierScrCmd_35 174

_08D9:
    FrontierScrCmd_36
    FrontierScrCmd_0D
    FrontierScrCmd_B7
    FrontierScrCmd_AA
    FrontierScrCmd_05 1, 0x8008
    FrontierScrCmd_B2 0, 0, 0, 0x8008
    FrontierScrCmd_05 1, 0x8008
    FrontierScrCmd_36
    FrontierScrCmd_35 177
    FrontierScrCmd_36
    FrontierScrCmd_22 _000C
    FrontierScrCmd_24 _0014
    FrontierScrCmd_5A 0x444
    FrontierScrCmd_13 6, 1, 1, 0
    FrontierScrCmd_14
    FrontierScrCmd_7C 0
    FrontierScrCmd_11 21
    FrontierScrCmd_1F 0x8008, 0
    FrontierScrCmd_20 0x8008, 0
    FrontierScrCmd_0B 1, _0939
    FrontierScrCmd_0A _094B
    FrontierScrCmd_01

_0939:
    FrontierScrCmd_10 24
    FrontierScrCmd_06 0x800B, 0
    FrontierScrCmd_0A _095D
    FrontierScrCmd_01

_094B:
    FrontierScrCmd_10 24
    FrontierScrCmd_06 0x800B, 1
    FrontierScrCmd_0A _095D
    FrontierScrCmd_01

_095D:
    FrontierScrCmd_06 0x800A, 5
    FrontierScrCmd_AC 0x800A, 0x800B, 0, 0x8008
    FrontierScrCmd_20 0x8008, 0
    FrontierScrCmd_0B 1, _095D
    FrontierScrCmd_AD 0x800A
    FrontierScrCmd_36
    FrontierScrCmd_B1 0x8008
    FrontierScrCmd_B2 10, 0, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _09AD
    FrontierScrCmd_20 0x800B, 1
    FrontierScrCmd_0B 1, _09C0
    FrontierScrCmd_0A _0084
    FrontierScrCmd_01

_09AD:
    FrontierScrCmd_7C 0
    FrontierScrCmd_10 25
    FrontierScrCmd_10 4
    FrontierScrCmd_0A _09C0
    FrontierScrCmd_01

_09C0:
    FrontierScrCmd_36
    FrontierScrCmd_35 172
    FrontierScrCmd_36
    FrontierScrCmd_12
    FrontierScrCmd_0A _09D2
    FrontierScrCmd_01

_09D2:
    FrontierScrCmd_13 6, 1, 0, 0
    FrontierScrCmd_14
    FrontierScrCmd_AB
    FrontierScrCmd_36
    FrontierScrCmd_35 178
    FrontierScrCmd_36
    FrontierScrCmd_02

    .balign 4, 0
