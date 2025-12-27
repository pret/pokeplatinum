# include "macros/frscrcmd.inc"

    .data

    .long _00E2 - 4
    .short 0xFD13

    .balign 4, 0
_0008:
    .short 0xEEEE
    .byte 0x00
    .short 0x800F
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_0010:
    .short 0x800B
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_0018:
    .short 0x0000
    .short 0xEEEE
    .byte 0x00
    .short 0x0078
    .short 0x0070
    .byte 0x00
    .byte 0x00
    .short 0x0001
    .short 0x800F
    .byte 0x03
    .short 0x0030
    .short 0x0068
    .byte 0x01
    .byte 0x01
    .short 0x0003
    .short 0x8009
    .byte 0x00
    .short 0x0080
    .short 0x00A8
    .byte 0x01
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_003C:
    .short 0x0002
    .short 0x800B
    .byte 0x01
    .short 0x0080
    .short 0x0038
    .byte 0x01
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_004C:
    .short 0x0022
    .short 0x0001
    .short 0x0004
    .short 0x0001
    .short 0x0002
    .short 0x0001
    .short 0x0006
    .short 0x0003
    .short 0x0000
    .short 0x0001
    .short 0x0004
    .short 0x0003
    .short 0x0003
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_006C:
    .short 0x0007
    .short 0x0003
    .short 0x0005
    .short 0x0003
    .short 0x0002
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_007C:
    .short 0x0007
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_0084:
    .short 0x0006
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_008C:
    .short 0x0007
    .short 0x0001
    .short 0x0004
    .short 0x0002
    .short 0x0006
    .short 0x0003
    .short 0x0004
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_00A0:
    .short 0x0006
    .short 0x0001
    .short 0x0002
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_00AC:
    .short 0x0007
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_00B4:
    .short 0x0003
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_00BC:
    .short 0x0002
    .short 0x0001
    .short 0x0006
    .short 0x0001
    .short 0x0003
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_00CC:
    .short 0x0002
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_00D4:
    .short 0x000B
    .short 0x0003
    .short 0x0009
    .short 0x0003
    .short 0x0002
    .short 0x0001
    .short 0xFD13

_00E2:
    FrontierScrCmd_6C
    FrontierScrCmd_3E 0x40D9, 0x8001
    FrontierScrCmd_0C _0176
    FrontierScrCmd_0C _018F
    FrontierScrCmd_84 43, 0, 0x8008
    FrontierScrCmd_20 0x8008, 4
    FrontierScrCmd_0B 1, _015A
    FrontierScrCmd_20 0x8008, 5
    FrontierScrCmd_0B 1, _015A
    FrontierScrCmd_0A _0168
    FrontierScrCmd_01

_0120:
    FrontierScrCmd_22 _0008
    FrontierScrCmd_24 _0018
    FrontierScrCmd_06 0x8003, 0
    FrontierScrCmd_13 6, 1, 1, 0
    FrontierScrCmd_14
    FrontierScrCmd_20 0x8001, 1
    FrontierScrCmd_0B 1, _01A0
    FrontierScrCmd_20 0x8001, 2
    FrontierScrCmd_0B 1, _0394
    FrontierScrCmd_01

_015A:
    FrontierScrCmd_06 0x800F, 235
    FrontierScrCmd_0A _0120
    FrontierScrCmd_01

_0168:
    FrontierScrCmd_06 0x800F, 231
    FrontierScrCmd_0A _0120
    FrontierScrCmd_01

_0176:
    FrontierScrCmd_20 0x8001, 0
    FrontierScrCmd_0B 1, _018D
    FrontierScrCmd_84 55, 0, 0x8009
    FrontierScrCmd_0D

_018D:
    FrontierScrCmd_0D

_018F:
    FrontierScrCmd_20 0x8001, 3
    FrontierScrCmd_0B 1, _019E
    FrontierScrCmd_0D

_019E:
    FrontierScrCmd_0D

_01A0:
    FrontierScrCmd_3D 0x40D9, 3
    FrontierScrCmd_3E 0x40D9, 0x8001
    FrontierScrCmd_84 100, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _03EF
    FrontierScrCmd_0C _03CF
    FrontierScrCmd_0A _01CF
    FrontierScrCmd_01

_01CF:
    FrontierScrCmd_0C _046D
    FrontierScrCmd_20 0x800C, 0
    FrontierScrCmd_0B 1, _020F
    FrontierScrCmd_0C _0382
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _0217
    FrontierScrCmd_0C _034C
    FrontierScrCmd_0C _0360
    FrontierScrCmd_0C _0374
    FrontierScrCmd_0A _0741
    FrontierScrCmd_01

_020F:
    FrontierScrCmd_0A _02DE
    FrontierScrCmd_01

_0217:
    FrontierScrCmd_0A _0273
    FrontierScrCmd_01

_021F:
    FrontierScrCmd_0A _0227
    FrontierScrCmd_01

_0227:
    FrontierScrCmd_70 0x8008
    FrontierScrCmd_20 0x8008, 0
    FrontierScrCmd_0E 1, _06A7
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0E 1, _06AD
    FrontierScrCmd_1F 0x8008, 1
    FrontierScrCmd_20 0x8008, 0
    FrontierScrCmd_0E 1, _0328
    FrontierScrCmd_84 38, 0, 0x8008
    FrontierScrCmd_11 20
    FrontierScrCmd_0C _0330
    FrontierScrCmd_12
    FrontierScrCmd_0A _03EF
    FrontierScrCmd_01

_0273:
    FrontierScrCmd_70 0x8008
    FrontierScrCmd_20 0x8008, 0
    FrontierScrCmd_0E 1, _06A7
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0E 1, _06AD
    FrontierScrCmd_1F 0x8008, 1
    FrontierScrCmd_20 0x8008, 0
    FrontierScrCmd_0E 1, _0328
    FrontierScrCmd_84 38, 0, 0x8008
    FrontierScrCmd_84 43, 0, 0x8008
    FrontierScrCmd_20 0x8008, 5
    FrontierScrCmd_0B 1, _02D4
    FrontierScrCmd_11 19
    FrontierScrCmd_0C _0330
    FrontierScrCmd_12
    FrontierScrCmd_0A _03EF
    FrontierScrCmd_01

_02D4:
    FrontierScrCmd_12
    FrontierScrCmd_0A _03EF
    FrontierScrCmd_01

_02DE:
    FrontierScrCmd_70 0x8008
    FrontierScrCmd_20 0x8008, 0
    FrontierScrCmd_0E 1, _06A7
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0E 1, _06AD
    FrontierScrCmd_1F 0x8008, 1
    FrontierScrCmd_20 0x8008, 0
    FrontierScrCmd_0E 1, _0320
    FrontierScrCmd_12
    FrontierScrCmd_84 37, 0, 0x8008
    FrontierScrCmd_0A _03EF
    FrontierScrCmd_01

_0320:
    FrontierScrCmd_0C _0641
    FrontierScrCmd_0D

_0328:
    FrontierScrCmd_0C _0633
    FrontierScrCmd_0D

_0330:
    FrontierScrCmd_84 46, 0, 0x8008
    FrontierScrCmd_7A 1, 0x8008
    FrontierScrCmd_7B 0
    FrontierScrCmd_11 21
    FrontierScrCmd_58 0x4C5
    FrontierScrCmd_59
    FrontierScrCmd_0D

_034C:
    FrontierScrCmd_28 2, _008C
    FrontierScrCmd_29
    FrontierScrCmd_25 2
    FrontierScrCmd_23 0x800B
    FrontierScrCmd_0D

_0360:
    FrontierScrCmd_28 3, _00A0
    FrontierScrCmd_28 1, _00AC
    FrontierScrCmd_29
    FrontierScrCmd_0D

_0374:
    FrontierScrCmd_11 0
    FrontierScrCmd_58 0x48E
    FrontierScrCmd_59
    FrontierScrCmd_39
    FrontierScrCmd_0D

_0382:
    FrontierScrCmd_84 34, 0, 0x8008
    FrontierScrCmd_84 35, 0, 0x8008
    FrontierScrCmd_0D

_0394:
    FrontierScrCmd_3D 0x40D9, 3
    FrontierScrCmd_3E 0x40D9, 0x8001
    FrontierScrCmd_06 0x8003, 1
    FrontierScrCmd_84 100, 0, 0x8008
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _03EF
    FrontierScrCmd_0C _03CF
    FrontierScrCmd_0C _03DB
    FrontierScrCmd_0A _0741
    FrontierScrCmd_01

_03CF:
    FrontierScrCmd_28 3, _004C
    FrontierScrCmd_29
    FrontierScrCmd_0D

_03DB:
    FrontierScrCmd_28 1, _00AC
    FrontierScrCmd_28 3, _00CC
    FrontierScrCmd_29
    FrontierScrCmd_0D

_03EF:
    FrontierScrCmd_6F
    FrontierScrCmd_05 30, 0x8008
    FrontierScrCmd_3D 0x40D8, 1
    FrontierScrCmd_84 43, 0, 0x8008
    FrontierScrCmd_07 0x8010, 0x8008
    FrontierScrCmd_20 0x8010, 4
    FrontierScrCmd_0B 1, _043F
    FrontierScrCmd_20 0x8010, 5
    FrontierScrCmd_0B 1, _043F
    FrontierScrCmd_13 6, 1, 0, 0
    FrontierScrCmd_14
    FrontierScrCmd_25 3
    FrontierScrCmd_25 1
    FrontierScrCmd_23 0x800F
    FrontierScrCmd_02

_043F:
    FrontierScrCmd_13 6, 1, 0, 0
    FrontierScrCmd_14
    FrontierScrCmd_25 3
    FrontierScrCmd_25 1
    FrontierScrCmd_23 0x800F
    FrontierScrCmd_02
    FrontierScrCmd_3D 0x40D9, 0
    FrontierScrCmd_3E 0x40D9, 0x8001
    FrontierScrCmd_0C _046D
    FrontierScrCmd_01

_046D:
    FrontierScrCmd_84 40, 0, 0x8008
    FrontierScrCmd_0C _04A8
    FrontierScrCmd_85 0
    FrontierScrCmd_3A
    FrontierScrCmd_12
    FrontierScrCmd_0C _04C8
    FrontierScrCmd_3F 0
    FrontierScrCmd_84 59, 0, 0x8008
    FrontierScrCmd_87
    FrontierScrCmd_88 0x800C
    FrontierScrCmd_13 6, 1, 1, 0
    FrontierScrCmd_14
    FrontierScrCmd_0D

_04A8:
    FrontierScrCmd_84 41, 0, 0x800B
    FrontierScrCmd_22 _0010
    FrontierScrCmd_24 _003C
    FrontierScrCmd_28 2, _006C
    FrontierScrCmd_29
    FrontierScrCmd_0D

_04C8:
    FrontierScrCmd_28 3, _007C
    FrontierScrCmd_28 2, _0084
    FrontierScrCmd_29
    FrontierScrCmd_0D

_04DC:
    FrontierScrCmd_84 33, 0, 0x800C
    FrontierScrCmd_7A 0, 0x800C
    FrontierScrCmd_11 1
    FrontierScrCmd_84 43, 0, 0x8008
    FrontierScrCmd_20 0x8008, 0
    FrontierScrCmd_0B 5, _052C
    FrontierScrCmd_84 36, 0, 0x8008
    FrontierScrCmd_20 0x8008, 20
    FrontierScrCmd_0B 1, _078C
    FrontierScrCmd_20 0x8008, 48
    FrontierScrCmd_0B 1, _078C
    FrontierScrCmd_0A _052C
    FrontierScrCmd_01

_052C:
    FrontierScrCmd_20 0x8003, 0
    FrontierScrCmd_0B 1, _0554
    FrontierScrCmd_1A 31, 11, 0, 0, 0x8008
    FrontierScrCmd_CA 1
    FrontierScrCmd_1C 146, 255, 0
    FrontierScrCmd_0A _0577
    FrontierScrCmd_01

_0554:
    FrontierScrCmd_1A 31, 9, 0, 0, 0x8008
    FrontierScrCmd_CA 1
    FrontierScrCmd_1C 146, 255, 0
    FrontierScrCmd_1C 0x110, 255, 1
    FrontierScrCmd_0A _0577
    FrontierScrCmd_01

_0577:
    FrontierScrCmd_1C 147, 255, 2
    FrontierScrCmd_1C 148, 255, 3
    FrontierScrCmd_1D
    FrontierScrCmd_12
    FrontierScrCmd_07 0x8010, 0x8008
    FrontierScrCmd_20 0x8010, 0
    FrontierScrCmd_0B 1, _05CD
    FrontierScrCmd_20 0x8010, 1
    FrontierScrCmd_0B 1, _05F5
    FrontierScrCmd_20 0x8010, 2
    FrontierScrCmd_0B 1, _06B3
    FrontierScrCmd_20 0x8010, 3
    FrontierScrCmd_0B 1, _0711
    FrontierScrCmd_0A _05CD
    FrontierScrCmd_01

_05CD:
    FrontierScrCmd_0C _05E1
    FrontierScrCmd_06 0x8003, 0
    FrontierScrCmd_0A _01CF
    FrontierScrCmd_01

_05E1:
    FrontierScrCmd_28 3, _00B4
    FrontierScrCmd_28 1, _00BC
    FrontierScrCmd_29
    FrontierScrCmd_0D

_05F5:
    FrontierScrCmd_70 0x8008
    FrontierScrCmd_20 0x8008, 0
    FrontierScrCmd_0E 1, _06A7
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0E 1, _06AD
    FrontierScrCmd_1F 0x8008, 1
    FrontierScrCmd_20 0x8008, 1
    FrontierScrCmd_0B 1, _04DC
    FrontierScrCmd_0C _0633
    FrontierScrCmd_0A _04DC
    FrontierScrCmd_01

_0633:
    FrontierScrCmd_0C _0655
    FrontierScrCmd_0A _065F
    FrontierScrCmd_01

_0641:
    FrontierScrCmd_0C _0655
    FrontierScrCmd_08 0x8005, 1
    FrontierScrCmd_0A _065F
    FrontierScrCmd_01

_0655:
    FrontierScrCmd_84 36, 0, 0x8005
    FrontierScrCmd_0D

_065F:
    FrontierScrCmd_0A _0667
    FrontierScrCmd_01

_0667:
    FrontierScrCmd_06 0x8003, 1
    FrontierScrCmd_0F 13
    FrontierScrCmd_84 43, 0, 0x8008
    FrontierScrCmd_77
    FrontierScrCmd_6D 1, 0x8008, 0x8005, 0x8005
    FrontierScrCmd_78
    FrontierScrCmd_20 0x8005, 1
    FrontierScrCmd_0B 1, _069A
    FrontierScrCmd_11 11
    FrontierScrCmd_0D

_069A:
    FrontierScrCmd_55 0x61B
    FrontierScrCmd_7B 0
    FrontierScrCmd_11 10
    FrontierScrCmd_0D

_06A7:
    FrontierScrCmd_11 9
    FrontierScrCmd_0D

_06AD:
    FrontierScrCmd_11 12
    FrontierScrCmd_0D

_06B3:
    FrontierScrCmd_11 2
    FrontierScrCmd_1F 0x8008, 0
    FrontierScrCmd_12
    FrontierScrCmd_20 0x8008, 0
    FrontierScrCmd_0B 1, _06D3
    FrontierScrCmd_0A _04DC
    FrontierScrCmd_01

_06D3:
    FrontierScrCmd_3D 0x40D8, 2
    FrontierScrCmd_84 39, 0, 0x8008
    FrontierScrCmd_86
    FrontierScrCmd_11 4
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

_0711:
    FrontierScrCmd_11 3
    FrontierScrCmd_1F 0x8008, 1
    FrontierScrCmd_12
    FrontierScrCmd_20 0x8008, 0
    FrontierScrCmd_0B 1, _0731
    FrontierScrCmd_0A _04DC
    FrontierScrCmd_01

_0731:
    FrontierScrCmd_84 37, 0, 0x8008
    FrontierScrCmd_0A _03EF
    FrontierScrCmd_01

_0741:
    FrontierScrCmd_84 43, 0, 0x8008
    FrontierScrCmd_20 0x8008, 0
    FrontierScrCmd_0B 5, _04DC
    FrontierScrCmd_84 36, 0, 0x8008
    FrontierScrCmd_20 0x8008, 20
    FrontierScrCmd_0B 1, _0780
    FrontierScrCmd_20 0x8008, 48
    FrontierScrCmd_0B 1, _0780
    FrontierScrCmd_0A _04DC
    FrontierScrCmd_01

_0780:
    FrontierScrCmd_11 14
    FrontierScrCmd_0A _078C
    FrontierScrCmd_01

_078C:
    FrontierScrCmd_20 0x8003, 0
    FrontierScrCmd_0B 1, _07B4
    FrontierScrCmd_1A 31, 11, 0, 0, 0x8008
    FrontierScrCmd_CA 1
    FrontierScrCmd_1C 146, 255, 0
    FrontierScrCmd_0A _07D7
    FrontierScrCmd_01

_07B4:
    FrontierScrCmd_1A 31, 9, 0, 0, 0x8008
    FrontierScrCmd_CA 1
    FrontierScrCmd_1C 146, 255, 0
    FrontierScrCmd_1C 0x110, 255, 1
    FrontierScrCmd_0A _07D7
    FrontierScrCmd_01

_07D7:
    FrontierScrCmd_1C 147, 255, 2
    FrontierScrCmd_1C 148, 255, 3
    FrontierScrCmd_1D
    FrontierScrCmd_12
    FrontierScrCmd_07 0x8010, 0x8008
    FrontierScrCmd_20 0x8010, 0
    FrontierScrCmd_0B 1, _082D
    FrontierScrCmd_20 0x8010, 1
    FrontierScrCmd_0B 1, _05F5
    FrontierScrCmd_20 0x8010, 2
    FrontierScrCmd_0B 1, _06B3
    FrontierScrCmd_20 0x8010, 3
    FrontierScrCmd_0B 1, _0711
    FrontierScrCmd_0A _082D
    FrontierScrCmd_01

_082D:
    FrontierScrCmd_0C _05E1
    FrontierScrCmd_06 0x8003, 0
    FrontierScrCmd_84 40, 0, 0x8008
    FrontierScrCmd_0C _092C
    FrontierScrCmd_84 36, 0, 0x8008
    FrontierScrCmd_20 0x8008, 48
    FrontierScrCmd_0B 1, _08F1
    FrontierScrCmd_7B 0
    FrontierScrCmd_80 1
    FrontierScrCmd_11 15
    FrontierScrCmd_0A _086E
    FrontierScrCmd_01

_086E:
    FrontierScrCmd_12
    FrontierScrCmd_0C _04C8
    FrontierScrCmd_48 59
    FrontierScrCmd_47 1
    FrontierScrCmd_87
    FrontierScrCmd_88 0x800C
    FrontierScrCmd_13 6, 1, 1, 0
    FrontierScrCmd_14
    FrontierScrCmd_20 0x800C, 0
    FrontierScrCmd_0B 1, _020F
    FrontierScrCmd_84 36, 0, 0x8008
    FrontierScrCmd_20 0x8008, 48
    FrontierScrCmd_0B 1, _08FD
    FrontierScrCmd_3E 0x404F, 0x8008
    FrontierScrCmd_20 0x8008, 0
    FrontierScrCmd_0E 1, _08D9
    FrontierScrCmd_11 17
    FrontierScrCmd_84 44, 1, 0x8008
    FrontierScrCmd_0A _08E1
    FrontierScrCmd_01

_08D9:
    FrontierScrCmd_3D 0x404F, 1
    FrontierScrCmd_0D

_08E1:
    FrontierScrCmd_12
    FrontierScrCmd_0C _0382
    FrontierScrCmd_0A _021F
    FrontierScrCmd_01

_08F1:
    FrontierScrCmd_11 16
    FrontierScrCmd_0A _086E
    FrontierScrCmd_01

_08FD:
    FrontierScrCmd_3E 0x404F, 0x8008
    FrontierScrCmd_20 0x8008, 2
    FrontierScrCmd_0E 1, _0924
    FrontierScrCmd_11 18
    FrontierScrCmd_84 44, 2, 0x8008
    FrontierScrCmd_0A _08E1
    FrontierScrCmd_01

_0924:
    FrontierScrCmd_3D 0x404F, 3
    FrontierScrCmd_0D

_092C:
    FrontierScrCmd_06 0x800B, 169
    FrontierScrCmd_22 _0010
    FrontierScrCmd_24 _003C
    FrontierScrCmd_28 2, _00D4
    FrontierScrCmd_29
    FrontierScrCmd_0D

    .balign 4, 0
