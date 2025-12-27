# include "macros/frscrcmd.inc"

    .data

    .long _0172 - 4
    .short 0xFD13

    .balign 4, 0
_0008:
    .short 0xEEEE
    .byte 0x00
    .short 0x800F
    .byte 0x01
    .short 0x800A
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_0014:
    .short 0xEEEE
    .byte 0x00
    .short 0xEEEF
    .byte 0x00
    .short 0x800F
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_0020:
    .short 0x800B
    .byte 0x01
    .short 0x800C
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_0028:
    .short 0x0000
    .short 0xEEEE
    .byte 0x01
    .short 0x0078
    .short 0x0078
    .byte 0x00
    .byte 0x00
    .short 0x0001
    .short 0x800F
    .byte 0x03
    .short 0x0028
    .short 0x0068
    .byte 0x01
    .byte 0x01
    .short 0x0002
    .short 0x800F
    .byte 0x03
    .short 0x0028
    .short 0x0078
    .byte 0x01
    .byte 0x01
    .short 0x0005
    .short 0x8009
    .byte 0x00
    .short 0x0078
    .short 0x00A8
    .byte 0x01
    .byte 0x01
    .short 0x0006
    .short 0x800A
    .byte 0x00
    .short 0x0088
    .short 0x00A8
    .byte 0x01
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_0064:
    .short 0x0000
    .short 0xEEEE
    .byte 0x01
    .short 0x0078
    .short 0x0078
    .byte 0x00
    .byte 0x00
    .short 0x0001
    .short 0x800F
    .byte 0x03
    .short 0x0028
    .short 0x0068
    .byte 0x01
    .byte 0x01
    .short 0x0002
    .short 0x800F
    .byte 0x03
    .short 0x0028
    .short 0x0078
    .byte 0x01
    .byte 0x01
    .short 0x0007
    .short 0xEEEF
    .byte 0x00
    .short 0x0078
    .short 0x00A8
    .byte 0x01
    .byte 0x00
    .byte 0x00
    .short 0x0008
    .short 0xEEEF
    .byte 0x00
    .short 0x0088
    .short 0x00A8
    .byte 0x01
    .byte 0x00
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_00A0:
    .short 0x0003
    .short 0x800B
    .byte 0x01
    .short 0x0088
    .short 0x0038
    .byte 0x01
    .byte 0x01
    .short 0x0004
    .short 0x800C
    .byte 0x01
    .short 0x0078
    .short 0x0038
    .byte 0x01
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_00B8:
    .short 0x0004
    .short 0x0001
    .short 0x0006
    .short 0x0003
    .short 0x0004
    .short 0x0003
    .short 0x0003
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_00CC:
    .short 0x0004
    .short 0x0001
    .short 0x0006
    .short 0x0004
    .short 0x0004
    .short 0x0002
    .short 0x0003
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_00E0:
    .short 0x0005
    .short 0x0001
    .short 0x0007
    .short 0x0003
    .short 0x0005
    .short 0x0003
    .short 0x0002
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_00F4:
    .short 0x0005
    .short 0x0001
    .short 0x0007
    .short 0x0004
    .short 0x0005
    .short 0x0002
    .short 0x0002
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_0108:
    .short 0x0007
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_0110:
    .short 0x0006
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_0118:
    .short 0x0016
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_0120:
    .short 0x0004
    .short 0x0003
    .short 0x0006
    .short 0x0002
    .short 0x0004
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_0130:
    .short 0x0004
    .short 0x0002
    .short 0x0006
    .short 0x0003
    .short 0x0004
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_0140:
    .short 0x0006
    .short 0x0001
    .short 0x0002
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_014C:
    .short 0x0007
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_0154:
    .short 0x0003
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_015C:
    .short 0x0002
    .short 0x0001
    .short 0x0006
    .short 0x0001
    .short 0x0003
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_016C:
    .short 0x0002
    .short 0x0001
    .short 0xFD13

_0172:
    FrontierScrCmd_6C
    FrontierScrCmd_0C _0BCF
    FrontierScrCmd_0C _0C15
    FrontierScrCmd_06 0x8006, 0
    FrontierScrCmd_84 43, 0, 0x8008
    FrontierScrCmd_20 0x8008, 3
    FrontierScrCmd_0B 1, _01CE
    FrontierScrCmd_20 0x8008, 6
    FrontierScrCmd_0B 1, _01CE
    FrontierScrCmd_06 0x8001, 5
    FrontierScrCmd_06 0x8002, 6
    FrontierScrCmd_06 0x800F, 232
    FrontierScrCmd_22 _0008
    FrontierScrCmd_24 _0028
    FrontierScrCmd_0A _01F8
    FrontierScrCmd_01

_01CE:
    FrontierScrCmd_4A 43
    FrontierScrCmd_06 0x8001, 7
    FrontierScrCmd_06 0x8002, 8
    FrontierScrCmd_06 0x800F, 232
    FrontierScrCmd_22 _0014
    FrontierScrCmd_24 _0064
    FrontierScrCmd_0A _01F8
    FrontierScrCmd_01

_01F8:
    FrontierScrCmd_13 6, 1, 1, 0
    FrontierScrCmd_14
    FrontierScrCmd_3E 0x40DE, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _0226
    FrontierScrCmd_20 0x8008, 2
    FrontierScrCmd_0B 1, _04FB
    FrontierScrCmd_01

_0226:
    FrontierScrCmd_3D 0x40DE, 3
    FrontierScrCmd_0C _025C
    FrontierScrCmd_84 43, 0, 0x8008
    FrontierScrCmd_20 0x8008, 3
    FrontierScrCmd_0B 1, _0270
    FrontierScrCmd_20 0x8008, 6
    FrontierScrCmd_0B 1, _0270
    FrontierScrCmd_0A _0965
    FrontierScrCmd_01

_025C:
    FrontierScrCmd_28 0x8001, _00B8
    FrontierScrCmd_28 0x8002, _00CC
    FrontierScrCmd_29
    FrontierScrCmd_0D

_0270:
    FrontierScrCmd_0C _0ACD
    FrontierScrCmd_20 0x8003, 0
    FrontierScrCmd_0B 1, _077B
    FrontierScrCmd_0C _09A5
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _09B7
    FrontierScrCmd_0C _09C5
    FrontierScrCmd_0C _09E9
    FrontierScrCmd_0C _0A0D
    FrontierScrCmd_0A _02B0
    FrontierScrCmd_01

_02B0:
    FrontierScrCmd_84 33, 0, 0x8008
    FrontierScrCmd_7A 0, 0x8008
    FrontierScrCmd_11 3
    FrontierScrCmd_20 0x8006, 0
    FrontierScrCmd_0B 1, _02E9
    FrontierScrCmd_1A 31, 13, 0, 0, 0x8008
    FrontierScrCmd_CA 1
    FrontierScrCmd_1C 146, 255, 0
    FrontierScrCmd_0A _034B
    FrontierScrCmd_01

_02E9:
    FrontierScrCmd_0C _0C57
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _0330
    FrontierScrCmd_71 0x8008
    FrontierScrCmd_20 0x8008, 0
    FrontierScrCmd_0B 1, _0330
    FrontierScrCmd_1A 31, 11, 0, 0, 0x8008
    FrontierScrCmd_CA 1
    FrontierScrCmd_1C 146, 255, 0
    FrontierScrCmd_1C 0x110, 255, 1
    FrontierScrCmd_0A _034B
    FrontierScrCmd_01

_0330:
    FrontierScrCmd_1A 31, 13, 0, 0, 0x8008
    FrontierScrCmd_CA 1
    FrontierScrCmd_1C 146, 255, 0
    FrontierScrCmd_0A _034B
    FrontierScrCmd_01

_034B:
    FrontierScrCmd_1C 148, 255, 2
    FrontierScrCmd_1D
    FrontierScrCmd_12
    FrontierScrCmd_06 0x8000, 0
    FrontierScrCmd_20 0x8008, 2
    FrontierScrCmd_0B 1, _0B27
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _0B65
    FrontierScrCmd_0A _037F
    FrontierScrCmd_01

_037F:
    FrontierScrCmd_06 0x8006, 0
    FrontierScrCmd_11 12
    FrontierScrCmd_36
    FrontierScrCmd_35 5
    FrontierScrCmd_84 58, 0, 0x8008
    FrontierScrCmd_0A _039F
    FrontierScrCmd_01

_039F:
    FrontierScrCmd_89 2, 0x8000, 0x8008
    FrontierScrCmd_20 0x8008, 0
    FrontierScrCmd_0B 1, _039F
    FrontierScrCmd_8A 2, 0x8000
    FrontierScrCmd_12
    FrontierScrCmd_07 0x8010, 0x8000
    FrontierScrCmd_20 0x8010, 1
    FrontierScrCmd_0B 1, _0B4B
    FrontierScrCmd_0C _0605
    FrontierScrCmd_0A _0270
    FrontierScrCmd_01

_03DD:
    FrontierScrCmd_6F
    FrontierScrCmd_84 43, 0, 0x8008
    FrontierScrCmd_20 0x8008, 3
    FrontierScrCmd_0B 1, _0437
    FrontierScrCmd_20 0x8008, 6
    FrontierScrCmd_0B 1, _0443
    FrontierScrCmd_05 30, 0x8008
    FrontierScrCmd_3D 0x40D8, 1
    FrontierScrCmd_13 6, 1, 0, 0
    FrontierScrCmd_14
    FrontierScrCmd_25 0
    FrontierScrCmd_25 1
    FrontierScrCmd_25 2
    FrontierScrCmd_25 5
    FrontierScrCmd_25 6
    FrontierScrCmd_23 0x800F
    FrontierScrCmd_23 0x800A
    FrontierScrCmd_02

_0437:
    FrontierScrCmd_C8 1
    FrontierScrCmd_0A _0443
    FrontierScrCmd_01

_0443:
    FrontierScrCmd_05 30, 0x8008
    FrontierScrCmd_3D 0x40D8, 1
    FrontierScrCmd_36
    FrontierScrCmd_35 6
    FrontierScrCmd_20 0x8004, 100
    FrontierScrCmd_0E 1, _04D1
    FrontierScrCmd_84 43, 0, 0x8008
    FrontierScrCmd_20 0x8008, 6
    FrontierScrCmd_0E 1, _04DF
    FrontierScrCmd_13 6, 1, 0, 0
    FrontierScrCmd_14
    FrontierScrCmd_36
    FrontierScrCmd_35 8
    FrontierScrCmd_84 43, 0, 0x8008
    FrontierScrCmd_20 0x8008, 3
    FrontierScrCmd_0E 1, _04F7
    FrontierScrCmd_25 0
    FrontierScrCmd_25 1
    FrontierScrCmd_25 2
    FrontierScrCmd_25 7
    FrontierScrCmd_25 8
    FrontierScrCmd_23 0x800F
    FrontierScrCmd_23 0x800A
    FrontierScrCmd_84 43, 0, 0x8008
    FrontierScrCmd_20 0x8008, 6
    FrontierScrCmd_0B 1, _04D5
    FrontierScrCmd_02

_04D1:
    FrontierScrCmd_12
    FrontierScrCmd_0D

_04D5:
    FrontierScrCmd_B6
    FrontierScrCmd_04 14, 1
    FrontierScrCmd_01

_04DF:
    FrontierScrCmd_0F 15
    FrontierScrCmd_77
    FrontierScrCmd_73 0x8008
    FrontierScrCmd_78
    FrontierScrCmd_55 0x61B
    FrontierScrCmd_57 0x61B
    FrontierScrCmd_12
    FrontierScrCmd_0D

_04F7:
    FrontierScrCmd_37
    FrontierScrCmd_0D

_04FB:
    FrontierScrCmd_3D 0x40DE, 3
    FrontierScrCmd_06 0x8006, 1
    FrontierScrCmd_0C _025C
    FrontierScrCmd_0C _051B
    FrontierScrCmd_0A _053F
    FrontierScrCmd_01

_051B:
    FrontierScrCmd_28 1, _014C
    FrontierScrCmd_28 2, _014C
    FrontierScrCmd_28 0x8001, _016C
    FrontierScrCmd_28 0x8002, _016C
    FrontierScrCmd_29
    FrontierScrCmd_0D

_053F:
    FrontierScrCmd_84 33, 0, 0x8008
    FrontierScrCmd_7A 0, 0x8008
    FrontierScrCmd_11 3
    FrontierScrCmd_20 0x8006, 0
    FrontierScrCmd_0B 1, _0578
    FrontierScrCmd_1A 31, 11, 0, 0, 0x8008
    FrontierScrCmd_CA 1
    FrontierScrCmd_1C 146, 255, 0
    FrontierScrCmd_0A _059B
    FrontierScrCmd_01

_0578:
    FrontierScrCmd_1A 31, 9, 0, 0, 0x8008
    FrontierScrCmd_CA 1
    FrontierScrCmd_1C 146, 255, 0
    FrontierScrCmd_1C 0x110, 255, 1
    FrontierScrCmd_0A _059B
    FrontierScrCmd_01

_059B:
    FrontierScrCmd_1C 147, 255, 2
    FrontierScrCmd_1C 148, 255, 3
    FrontierScrCmd_1D
    FrontierScrCmd_12
    FrontierScrCmd_07 0x8010, 0x8008
    FrontierScrCmd_20 0x8010, 0
    FrontierScrCmd_0B 1, _05F1
    FrontierScrCmd_20 0x8010, 1
    FrontierScrCmd_0B 1, _0629
    FrontierScrCmd_20 0x8010, 2
    FrontierScrCmd_0B 1, _06E7
    FrontierScrCmd_20 0x8010, 3
    FrontierScrCmd_0B 1, _0745
    FrontierScrCmd_0A _05F1
    FrontierScrCmd_01

_05F1:
    FrontierScrCmd_0C _0605
    FrontierScrCmd_06 0x8006, 0
    FrontierScrCmd_0A _0965
    FrontierScrCmd_01

_0605:
    FrontierScrCmd_28 0x8001, _0154
    FrontierScrCmd_28 0x8002, _0154
    FrontierScrCmd_28 1, _015C
    FrontierScrCmd_28 2, _015C
    FrontierScrCmd_29
    FrontierScrCmd_0D

_0629:
    FrontierScrCmd_70 0x8008
    FrontierScrCmd_20 0x8008, 0
    FrontierScrCmd_0E 1, _06DB
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0E 1, _06E1
    FrontierScrCmd_1F 0x8008, 1
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _053F
    FrontierScrCmd_0C _0667
    FrontierScrCmd_0A _053F
    FrontierScrCmd_01

_0667:
    FrontierScrCmd_0C _0689
    FrontierScrCmd_0A _0693
    FrontierScrCmd_01

_0675:
    FrontierScrCmd_0C _0689
    FrontierScrCmd_08 0x8005, 1
    FrontierScrCmd_0A _0693
    FrontierScrCmd_01

_0689:
    FrontierScrCmd_84 36, 0, 0x8005
    FrontierScrCmd_0D

_0693:
    FrontierScrCmd_0A _069B
    FrontierScrCmd_01

_069B:
    FrontierScrCmd_06 0x8006, 1
    FrontierScrCmd_0F 10
    FrontierScrCmd_84 43, 0, 0x8008
    FrontierScrCmd_77
    FrontierScrCmd_6D 1, 0x8008, 0x8005, 0x8005
    FrontierScrCmd_78
    FrontierScrCmd_20 0x8005, 1
    FrontierScrCmd_0B 1, _06CE
    FrontierScrCmd_11 8
    FrontierScrCmd_0D

_06CE:
    FrontierScrCmd_55 0x61B
    FrontierScrCmd_7B 0
    FrontierScrCmd_11 7
    FrontierScrCmd_0D

_06DB:
    FrontierScrCmd_11 6
    FrontierScrCmd_0D

_06E1:
    FrontierScrCmd_11 9
    FrontierScrCmd_0D

_06E7:
    FrontierScrCmd_11 4
    FrontierScrCmd_1F 0x8008, 0
    FrontierScrCmd_12
    FrontierScrCmd_20 0x8008, 0
    FrontierScrCmd_0B 1, _0707
    FrontierScrCmd_0A _053F
    FrontierScrCmd_01

_0707:
    FrontierScrCmd_3D 0x40D8, 2
    FrontierScrCmd_84 39, 0, 0x8008
    FrontierScrCmd_86
    FrontierScrCmd_11 0
    FrontierScrCmd_77
    FrontierScrCmd_72 0x8008
    FrontierScrCmd_78
    FrontierScrCmd_55 0x61B
    FrontierScrCmd_57 0x61B
    FrontierScrCmd_13 6, 1, 0, 0
    FrontierScrCmd_14
    FrontierScrCmd_12
    FrontierScrCmd_6F
    FrontierScrCmd_84 2, 0, 0x8008
    FrontierScrCmd_01

_0745:
    FrontierScrCmd_11 5
    FrontierScrCmd_1F 0x8008, 1
    FrontierScrCmd_12
    FrontierScrCmd_20 0x8008, 0
    FrontierScrCmd_0B 1, _0765
    FrontierScrCmd_0A _053F
    FrontierScrCmd_01

_0765:
    FrontierScrCmd_84 37, 0, 0x8008
    FrontierScrCmd_06 0x8000, 0
    FrontierScrCmd_0A _03DD
    FrontierScrCmd_01

_077B:
    FrontierScrCmd_06 0x8000, 0
    FrontierScrCmd_0A _087B
    FrontierScrCmd_01

_0789:
    FrontierScrCmd_84 43, 0, 0x8008
    FrontierScrCmd_20 0x8008, 3
    FrontierScrCmd_0B 1, _07B3
    FrontierScrCmd_20 0x8008, 6
    FrontierScrCmd_0B 1, _07B3
    FrontierScrCmd_0A _07DF
    FrontierScrCmd_01

_07B3:
    FrontierScrCmd_71 0x8008
    FrontierScrCmd_20 0x8008, 0
    FrontierScrCmd_0B 1, _0817
    FrontierScrCmd_0C _0C57
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _0817
    FrontierScrCmd_0A _07DF
    FrontierScrCmd_01

_07DF:
    FrontierScrCmd_70 0x8008
    FrontierScrCmd_20 0x8008, 0
    FrontierScrCmd_0E 1, _06DB
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0E 1, _06E1
    FrontierScrCmd_1F 0x8008, 1
    FrontierScrCmd_20 0x8008, 0
    FrontierScrCmd_0E 1, _095D
    FrontierScrCmd_0A _0817
    FrontierScrCmd_01

_0817:
    FrontierScrCmd_84 38, 0, 0x8008
    FrontierScrCmd_11 13
    FrontierScrCmd_84 46, 0, 0x8008
    FrontierScrCmd_7A 1, 0x8008
    FrontierScrCmd_7B 0
    FrontierScrCmd_11 14
    FrontierScrCmd_58 0x4C5
    FrontierScrCmd_59
    FrontierScrCmd_84 43, 0, 0x8008
    FrontierScrCmd_20 0x8008, 3
    FrontierScrCmd_0B 1, _0869
    FrontierScrCmd_20 0x8008, 6
    FrontierScrCmd_0B 1, _0869
    FrontierScrCmd_12
    FrontierScrCmd_0A _03DD
    FrontierScrCmd_01

_0869:
    FrontierScrCmd_06 0x8004, 100
    FrontierScrCmd_10 16
    FrontierScrCmd_0A _03DD
    FrontierScrCmd_01

_087B:
    FrontierScrCmd_06 0x8004, 0
    FrontierScrCmd_84 43, 0, 0x8008
    FrontierScrCmd_20 0x8008, 3
    FrontierScrCmd_0B 1, _08AB
    FrontierScrCmd_20 0x8008, 6
    FrontierScrCmd_0B 1, _08AB
    FrontierScrCmd_0A _08E9
    FrontierScrCmd_01

_08AB:
    FrontierScrCmd_71 0x8008
    FrontierScrCmd_20 0x8008, 0
    FrontierScrCmd_0B 1, _08D7
    FrontierScrCmd_0C _0C57
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _0945
    FrontierScrCmd_0A _08E9
    FrontierScrCmd_01

_08D7:
    FrontierScrCmd_06 0x8004, 100
    FrontierScrCmd_10 16
    FrontierScrCmd_0A _0945
    FrontierScrCmd_01

_08E9:
    FrontierScrCmd_70 0x8008
    FrontierScrCmd_20 0x8008, 0
    FrontierScrCmd_0E 1, _06DB
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0E 1, _06E1
    FrontierScrCmd_1F 0x8008, 1
    FrontierScrCmd_20 0x8008, 0
    FrontierScrCmd_0E 1, _0955
    FrontierScrCmd_84 43, 0, 0x8008
    FrontierScrCmd_20 0x8008, 3
    FrontierScrCmd_0B 1, _08D7
    FrontierScrCmd_20 0x8008, 6
    FrontierScrCmd_0B 1, _08D7
    FrontierScrCmd_12
    FrontierScrCmd_0A _0945
    FrontierScrCmd_01

_0945:
    FrontierScrCmd_84 37, 0, 0x8008
    FrontierScrCmd_0A _03DD
    FrontierScrCmd_01

_0955:
    FrontierScrCmd_0C _0675
    FrontierScrCmd_0D

_095D:
    FrontierScrCmd_0C _0667
    FrontierScrCmd_0D

_0965:
    FrontierScrCmd_0C _0A1B
    FrontierScrCmd_20 0x8003, 0
    FrontierScrCmd_0B 1, _077B
    FrontierScrCmd_0C _09A5
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _09B7
    FrontierScrCmd_0C _09C5
    FrontierScrCmd_0C _09E9
    FrontierScrCmd_0C _0A0D
    FrontierScrCmd_0A _053F
    FrontierScrCmd_01

_09A5:
    FrontierScrCmd_84 34, 0, 0x8008
    FrontierScrCmd_84 35, 0, 0x8008
    FrontierScrCmd_0D

_09B7:
    FrontierScrCmd_06 0x8000, 1
    FrontierScrCmd_0A _0789
    FrontierScrCmd_01

_09C5:
    FrontierScrCmd_28 3, _0120
    FrontierScrCmd_28 4, _0130
    FrontierScrCmd_29
    FrontierScrCmd_25 3
    FrontierScrCmd_25 4
    FrontierScrCmd_23 0x800B
    FrontierScrCmd_23 0x800C
    FrontierScrCmd_0D

_09E9:
    FrontierScrCmd_28 0x8001, _0140
    FrontierScrCmd_28 0x8002, _0140
    FrontierScrCmd_28 1, _014C
    FrontierScrCmd_28 2, _014C
    FrontierScrCmd_29
    FrontierScrCmd_0D

_0A0D:
    FrontierScrCmd_11 2
    FrontierScrCmd_58 0x48E
    FrontierScrCmd_59
    FrontierScrCmd_39
    FrontierScrCmd_0D

_0A1B:
    FrontierScrCmd_84 40, 0, 0x8008
    FrontierScrCmd_0C _0A61
    FrontierScrCmd_0C _0AB5
    FrontierScrCmd_85 0
    FrontierScrCmd_3A
    FrontierScrCmd_12
    FrontierScrCmd_0C _0AC1
    FrontierScrCmd_85 1
    FrontierScrCmd_3A
    FrontierScrCmd_12
    FrontierScrCmd_0C _0A91
    FrontierScrCmd_3F 0
    FrontierScrCmd_87
    FrontierScrCmd_88 0x8003
    FrontierScrCmd_13 6, 1, 1, 0
    FrontierScrCmd_14
    FrontierScrCmd_0D

_0A61:
    FrontierScrCmd_84 41, 0, 0x800B
    FrontierScrCmd_84 41, 1, 0x800C
    FrontierScrCmd_22 _0020
    FrontierScrCmd_24 _00A0
    FrontierScrCmd_28 3, _00E0
    FrontierScrCmd_28 4, _00F4
    FrontierScrCmd_29
    FrontierScrCmd_0D

_0A91:
    FrontierScrCmd_28 0x8001, _0108
    FrontierScrCmd_28 0x8002, _0108
    FrontierScrCmd_28 3, _0110
    FrontierScrCmd_28 4, _0110
    FrontierScrCmd_29
    FrontierScrCmd_0D

_0AB5:
    FrontierScrCmd_28 3, _0118
    FrontierScrCmd_29
    FrontierScrCmd_0D

_0AC1:
    FrontierScrCmd_28 4, _0118
    FrontierScrCmd_29
    FrontierScrCmd_0D

_0ACD:
    FrontierScrCmd_84 40, 0, 0x8008
    FrontierScrCmd_0C _0A61
    FrontierScrCmd_0C _0AB5
    FrontierScrCmd_85 0
    FrontierScrCmd_05 30, 0x8008
    FrontierScrCmd_12
    FrontierScrCmd_0C _0AC1
    FrontierScrCmd_85 1
    FrontierScrCmd_05 30, 0x8008
    FrontierScrCmd_12
    FrontierScrCmd_0C _0A91
    FrontierScrCmd_10 16
    FrontierScrCmd_36
    FrontierScrCmd_35 4
    FrontierScrCmd_12
    FrontierScrCmd_3F 0
    FrontierScrCmd_87
    FrontierScrCmd_88 0x8003
    FrontierScrCmd_13 6, 1, 1, 0
    FrontierScrCmd_14
    FrontierScrCmd_0D

_0B27:
    FrontierScrCmd_11 5
    FrontierScrCmd_1F 0x8008, 1
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _02B0
    FrontierScrCmd_06 0x8000, 1
    FrontierScrCmd_0A _037F
    FrontierScrCmd_01

_0B4B:
    FrontierScrCmd_11 11
    FrontierScrCmd_05 30, 0x8008
    FrontierScrCmd_36
    FrontierScrCmd_35 7
    FrontierScrCmd_12
    FrontierScrCmd_0A _0765
    FrontierScrCmd_01

_0B65:
    FrontierScrCmd_0C _0C57
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _02B0
    FrontierScrCmd_71 0x8008
    FrontierScrCmd_20 0x8008, 0
    FrontierScrCmd_0B 1, _02B0
    FrontierScrCmd_0A _0B91
    FrontierScrCmd_01

_0B91:
    FrontierScrCmd_70 0x8008
    FrontierScrCmd_20 0x8008, 0
    FrontierScrCmd_0E 1, _06DB
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0E 1, _06E1
    FrontierScrCmd_1F 0x8008, 1
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _02B0
    FrontierScrCmd_0C _0667
    FrontierScrCmd_0A _02B0
    FrontierScrCmd_01

_0BCF:
    FrontierScrCmd_3E 0x40DE, 0x8008
    FrontierScrCmd_20 0x8008, 0
    FrontierScrCmd_0B 1, _0C01
    FrontierScrCmd_20 0x8000, 1
    FrontierScrCmd_0B 1, _0C03
    FrontierScrCmd_84 55, 0, 0x8009
    FrontierScrCmd_84 55, 1, 0x800A
    FrontierScrCmd_0D

_0C01:
    FrontierScrCmd_0D

_0C03:
    FrontierScrCmd_84 55, 0, 0x8009
    FrontierScrCmd_84 55, 1, 0x800A
    FrontierScrCmd_0D

_0C15:
    FrontierScrCmd_3E 0x40DE, 0x8008
    FrontierScrCmd_20 0x8008, 0
    FrontierScrCmd_0E 5, _0C4B
    FrontierScrCmd_0A _0C30
    FrontierScrCmd_01

_0C30:
    FrontierScrCmd_3E 0x40DE, 0x8008
    FrontierScrCmd_20 0x8008, 3
    FrontierScrCmd_0B 1, _0C4D
    FrontierScrCmd_0A _0C55
    FrontierScrCmd_01

_0C4B:
    FrontierScrCmd_0D

_0C4D:
    FrontierScrCmd_0A _0C55
    FrontierScrCmd_01

_0C55:
    FrontierScrCmd_0D

_0C57:
    FrontierScrCmd_84 43, 0, 0x8008
    FrontierScrCmd_20 0x8008, 3
    FrontierScrCmd_0B 1, _0C74
    FrontierScrCmd_06 0x8008, 0
    FrontierScrCmd_0D

_0C74:
    FrontierScrCmd_4B 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _0C8D
    FrontierScrCmd_06 0x8008, 0
    FrontierScrCmd_0D

_0C8D:
    FrontierScrCmd_06 0x8008, 1
    FrontierScrCmd_0D

    .balign 4, 0
