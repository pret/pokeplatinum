    .include "macros/scrcmd.inc"

    .data

    .long _0082-.-4
    .long _0C18-.-4
    .long _0C2B-.-4
    .long _0C3E-.-4
    .long _0C51-.-4
    .long _0C64-.-4
    .long _0C77-.-4
    .long _0CD1-.-4
    .long _0CE4-.-4
    .long _0CF7-.-4
    .long _0D5C-.-4
    .long _0D8D-.-4
    .long _0DBE-.-4
    .long _0FF0-.-4
    .long _00F6-.-4
    .long _05CC-.-4
    .long _1003-.-4
    .long _101A-.-4
    .long _102F-.-4
    .long _1046-.-4
    .long _105D-.-4
    .long _1074-.-4
    .long _108B-.-4
    .long _10A2-.-4
    .long _10B9-.-4
    .long _10E9-.-4
    .long _1119-.-4
    .long _1149-.-4
    .long _1184-.-4
    .long _0FB0-.-4
    .long _1204-.-4
    .long _123E-.-4
    .short 0xFD13

_0082:
    ScrCmd_020 0x155
    ScrCmd_01D 1, _00E0
    ScrCmd_011 0x411A, 2
    ScrCmd_01D 4, _00BA
    ScrCmd_14D 0x4000
    ScrCmd_011 0x4000, 0
    ScrCmd_01C 1, _00D0
    ScrCmd_011 0x4000, 1
    ScrCmd_01C 1, _00D8
    ScrCmd_002

_00BA:
    ScrCmd_186 6, 0x2B8, 0x254
    ScrCmd_188 6, 17
    ScrCmd_189 6, 3
    ScrCmd_01B

_00D0:
    ScrCmd_028 0x4020, 97
    ScrCmd_002

_00D8:
    ScrCmd_028 0x4020, 0
    ScrCmd_002

_00E0:
    ScrCmd_186 26, 0x2CD, 0x251
    ScrCmd_188 26, 14
    ScrCmd_189 26, 0
    ScrCmd_01B

_00F6:
    ScrCmd_060
    ScrCmd_05E 6, _0444
    ScrCmd_05F
    ScrCmd_014 0x7F8
    ScrCmd_069 0x8004, 0x8005
    ScrCmd_011 0x8004, 0x2A9
    ScrCmd_01D 1, _02E1
    ScrCmd_011 0x8004, 0x2AA
    ScrCmd_01D 1, _02ED
    ScrCmd_011 0x8004, 0x2AB
    ScrCmd_01D 1, _02F9
    ScrCmd_011 0x8004, 0x2AC
    ScrCmd_01D 1, _0305
    ScrCmd_14D 0x8004
    ScrCmd_011 0x8004, 0
    ScrCmd_01D 1, _0297
    ScrCmd_011 0x8004, 1
    ScrCmd_01D 1, _029F
    ScrCmd_034
    ScrCmd_014 0x7F9
    ScrCmd_168 21, 19, 12, 3, 77
    ScrCmd_16B 77
    ScrCmd_169 77
    ScrCmd_01F 0x191
    ScrCmd_064 25
    ScrCmd_05E 25, _0564
    ScrCmd_05F
    ScrCmd_16C 77
    ScrCmd_169 77
    ScrCmd_16A 77
    ScrCmd_05E 6, _0484
    ScrCmd_05F
    ScrCmd_02C 4
    ScrCmd_034
    ScrCmd_05E 25, _056C
    ScrCmd_05F
    ScrCmd_069 0x8004, 0x8005
    ScrCmd_011 0x8004, 0x2A9
    ScrCmd_01D 1, _0311
    ScrCmd_011 0x8004, 0x2AA
    ScrCmd_01D 1, _032D
    ScrCmd_011 0x8004, 0x2AB
    ScrCmd_01D 1, _0349
    ScrCmd_011 0x8004, 0x2AC
    ScrCmd_01D 1, _0365
    ScrCmd_02C 5
    ScrCmd_02C 6
    ScrCmd_034
    ScrCmd_069 0x8004, 0x8005
    ScrCmd_011 0x8004, 0x2A9
    ScrCmd_01D 1, _0381
    ScrCmd_011 0x8004, 0x2AA
    ScrCmd_01D 1, _039D
    ScrCmd_011 0x8004, 0x2AB
    ScrCmd_01D 1, _03B9
    ScrCmd_011 0x8004, 0x2AC
    ScrCmd_01D 1, _03D5
    ScrCmd_065 25
    ScrCmd_003 20, 0x800C
    ScrCmd_14D 0x8004
    ScrCmd_011 0x8004, 0
    ScrCmd_01D 1, _02A7
    ScrCmd_011 0x8004, 1
    ScrCmd_01D 1, _02C4
    ScrCmd_034
    ScrCmd_069 0x8004, 0x8005
    ScrCmd_011 0x8004, 0x2A9
    ScrCmd_01D 1, _03F1
    ScrCmd_011 0x8004, 0x2AA
    ScrCmd_01D 1, _0405
    ScrCmd_011 0x8004, 0x2AB
    ScrCmd_01D 1, _0419
    ScrCmd_011 0x8004, 0x2AC
    ScrCmd_01D 1, _042D
    ScrCmd_065 6
    ScrCmd_028 0x40F5, 1
    ScrCmd_061
    ScrCmd_002

_0297:
    ScrCmd_0CD 0
    ScrCmd_02C 2
    ScrCmd_01B

_029F:
    ScrCmd_0CD 0
    ScrCmd_02C 3
    ScrCmd_01B

_02A7:
    ScrCmd_0CD 0
    ScrCmd_02C 7
    ScrCmd_034
    ScrCmd_003 15, 0x800C
    ScrCmd_05E 0xFF, _052C
    ScrCmd_05F
    ScrCmd_02C 8
    ScrCmd_01B

_02C4:
    ScrCmd_0CD 0
    ScrCmd_02C 9
    ScrCmd_034
    ScrCmd_003 15, 0x800C
    ScrCmd_05E 0xFF, _052C
    ScrCmd_05F
    ScrCmd_02C 10
    ScrCmd_01B

_02E1:
    ScrCmd_05E 6, _0458
    ScrCmd_05F
    ScrCmd_01B

_02ED:
    ScrCmd_05E 6, _0464
    ScrCmd_05F
    ScrCmd_01B

_02F9:
    ScrCmd_05E 6, _046C
    ScrCmd_05F
    ScrCmd_01B

_0305:
    ScrCmd_05E 6, _0478
    ScrCmd_05F
    ScrCmd_01B

_0311:
    ScrCmd_05E 25, _0574
    ScrCmd_05E 6, _048C
    ScrCmd_05E 0xFF, _04EC
    ScrCmd_05F
    ScrCmd_01B

_032D:
    ScrCmd_05E 25, _0580
    ScrCmd_05E 6, _0498
    ScrCmd_05E 0xFF, _04FC
    ScrCmd_05F
    ScrCmd_01B

_0349:
    ScrCmd_05E 25, _058C
    ScrCmd_05E 6, _04A4
    ScrCmd_05E 0xFF, _050C
    ScrCmd_05F
    ScrCmd_01B

_0365:
    ScrCmd_05E 25, _0598
    ScrCmd_05E 6, _04B0
    ScrCmd_05E 0xFF, _051C
    ScrCmd_05F
    ScrCmd_01B

_0381:
    ScrCmd_05E 25, _05AC
    ScrCmd_05E 6, _04D4
    ScrCmd_05E 0xFF, _0554
    ScrCmd_05F
    ScrCmd_01B

_039D:
    ScrCmd_05E 25, _05B4
    ScrCmd_05E 6, _04D4
    ScrCmd_05E 0xFF, _0554
    ScrCmd_05F
    ScrCmd_01B

_03B9:
    ScrCmd_05E 25, _05BC
    ScrCmd_05E 6, _04D4
    ScrCmd_05E 0xFF, _0554
    ScrCmd_05F
    ScrCmd_01B

_03D5:
    ScrCmd_05E 25, _05C4
    ScrCmd_05E 6, _04D4
    ScrCmd_05E 0xFF, _0554
    ScrCmd_05F
    ScrCmd_01B

_03F1:
    ScrCmd_05E 6, _04BC
    ScrCmd_05E 0xFF, _0534
    ScrCmd_05F
    ScrCmd_01B

_0405:
    ScrCmd_05E 6, _04BC
    ScrCmd_05E 0xFF, _0534
    ScrCmd_05F
    ScrCmd_01B

_0419:
    ScrCmd_05E 6, _04C8
    ScrCmd_05E 0xFF, _0544
    ScrCmd_05F
    ScrCmd_01B

_042D:
    ScrCmd_05E 6, _04C8
    ScrCmd_05E 0xFF, _0544
    ScrCmd_05F
    ScrCmd_01B

    .balign 4, 0
_0444:
    MoveAction_03F
    MoveAction_021
    MoveAction_04B
    MoveAction_03F
    EndMovement

    .balign 4, 0
_0458:
    MoveAction_00E
    MoveAction_00D
    EndMovement

    .balign 4, 0
_0464:
    MoveAction_00D
    EndMovement

    .balign 4, 0
_046C:
    MoveAction_00F
    MoveAction_00D
    EndMovement

    .balign 4, 0
_0478:
    MoveAction_00F 2
    MoveAction_00D
    EndMovement

    .balign 4, 0
_0484:
    MoveAction_024
    EndMovement

    .balign 4, 0
_048C:
    MoveAction_03F 4
    MoveAction_023
    EndMovement

    .balign 4, 0
_0498:
    MoveAction_03F 3
    MoveAction_023
    EndMovement

    .balign 4, 0
_04A4:
    MoveAction_03F 2
    MoveAction_023
    EndMovement

    .balign 4, 0
_04B0:
    MoveAction_03F 4
    MoveAction_022
    EndMovement

    .balign 4, 0
_04BC:
    MoveAction_00F
    MoveAction_00D 9
    EndMovement

    .balign 4, 0
_04C8:
    MoveAction_00E
    MoveAction_00D 9
    EndMovement

    .balign 4, 0
_04D4:
    MoveAction_03F
    MoveAction_021
    EndMovement

    .byte 63
    .byte 0
    .byte 1
    .byte 0
    .byte 32
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_04EC:
    MoveAction_03F 4
    MoveAction_03E
    MoveAction_023
    EndMovement

    .balign 4, 0
_04FC:
    MoveAction_03F 3
    MoveAction_03E
    MoveAction_023
    EndMovement

    .balign 4, 0
_050C:
    MoveAction_03F 2
    MoveAction_03E
    MoveAction_023
    EndMovement

    .balign 4, 0
_051C:
    MoveAction_03F 4
    MoveAction_03E
    MoveAction_022
    EndMovement

    .balign 4, 0
_052C:
    MoveAction_020
    EndMovement

    .balign 4, 0
_0534:
    MoveAction_03F 2
    MoveAction_023
    MoveAction_021
    EndMovement

    .balign 4, 0
_0544:
    MoveAction_03F 2
    MoveAction_022
    MoveAction_021
    EndMovement

    .balign 4, 0
_0554:
    MoveAction_03F
    MoveAction_03E
    MoveAction_021
    EndMovement

    .balign 4, 0
_0564:
    MoveAction_00D
    EndMovement

    .balign 4, 0
_056C:
    MoveAction_04B
    EndMovement

    .balign 4, 0
_0574:
    MoveAction_00D 4
    MoveAction_00E 2
    EndMovement

    .balign 4, 0
_0580:
    MoveAction_00D 4
    MoveAction_00E
    EndMovement

    .balign 4, 0
_058C:
    MoveAction_00D 4
    MoveAction_022
    EndMovement

    .balign 4, 0
_0598:
    MoveAction_00D
    MoveAction_00E
    MoveAction_00D 3
    MoveAction_023
    EndMovement

    .balign 4, 0
_05AC:
    MoveAction_00D 8
    EndMovement

    .balign 4, 0
_05B4:
    MoveAction_00D 8
    EndMovement

    .balign 4, 0
_05BC:
    MoveAction_00D 8
    EndMovement

    .balign 4, 0
_05C4:
    MoveAction_00D 8
    EndMovement

_05CC:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_14D 0x8004
    ScrCmd_011 0x8004, 0
    ScrCmd_01C 1, _05F4
    ScrCmd_011 0x8004, 1
    ScrCmd_01C 1, _0625
    ScrCmd_002

_05F4:
    ScrCmd_0CD 0
    ScrCmd_02C 19
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0611
    ScrCmd_016 _061A

_0611:
    ScrCmd_02C 20
    ScrCmd_016 _0656

_061A:
    ScrCmd_02C 21
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0625:
    ScrCmd_0CD 0
    ScrCmd_02C 24
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0642
    ScrCmd_016 _064B

_0642:
    ScrCmd_02C 25
    ScrCmd_016 _0656

_064B:
    ScrCmd_02C 26
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0656:
    ScrCmd_034
    ScrCmd_1BD 0x800C
    ScrCmd_011 0x800C, 3
    ScrCmd_01D 1, _099F
    ScrCmd_011 0x800C, 1
    ScrCmd_01D 1, _09B3
    ScrCmd_011 0x800C, 0
    ScrCmd_01D 1, _09C7
    ScrCmd_01A _0919
    ScrCmd_2A0 0x8004, 0x350, 0x351
    ScrCmd_0EC 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0A73
    ScrCmd_02C 16
    ScrCmd_069 0x8004, 0x8005
    ScrCmd_011 0x8005, 0x253
    ScrCmd_01D 1, _09DB
    ScrCmd_011 0x8005, 0x255
    ScrCmd_01D 1, _09E7
    ScrCmd_02C 17
    ScrCmd_034
    ScrCmd_003 15, 0x800C
    ScrCmd_069 0x8004, 0x8005
    ScrCmd_011 0x8005, 0x253
    ScrCmd_01D 1, _09F3
    ScrCmd_011 0x8005, 0x255
    ScrCmd_01D 1, _09FF
    ScrCmd_065 7
    ScrCmd_02C 18
    ScrCmd_034
    ScrCmd_069 0x8004, 0x8005
    ScrCmd_011 0x8005, 0x253
    ScrCmd_01D 1, _0A0B
    ScrCmd_011 0x8005, 0x255
    ScrCmd_01D 1, _0A17
    ScrCmd_065 20
    ScrCmd_14D 0x8004
    ScrCmd_011 0x8004, 0
    ScrCmd_01D 1, _0A23
    ScrCmd_011 0x8004, 1
    ScrCmd_01D 1, _0A28
    ScrCmd_034
    ScrCmd_069 0x8004, 0x8005
    ScrCmd_011 0x8005, 0x253
    ScrCmd_01D 1, _0A4B
    ScrCmd_011 0x8005, 0x255
    ScrCmd_01D 1, _0A5F
    ScrCmd_003 10, 0x800C
    ScrCmd_0CD 0
    ScrCmd_14D 0x8004
    ScrCmd_011 0x8004, 0
    ScrCmd_01D 1, _0A2D
    ScrCmd_011 0x8004, 1
    ScrCmd_01D 1, _0A32
    ScrCmd_034
    ScrCmd_003 15, 0x800C
    ScrCmd_01F 0x28A
    ScrCmd_186 26, 0x2B4, 0x25E
    ScrCmd_064 26
    ScrCmd_014 0x807
    ScrCmd_05E 26, _0A7C
    ScrCmd_05F
    ScrCmd_02C 29
    ScrCmd_034
    ScrCmd_05E 6, _0B3C
    ScrCmd_05E 0xFF, _0B9C
    ScrCmd_05F
    ScrCmd_14D 0x8004
    ScrCmd_011 0x8004, 0
    ScrCmd_01D 1, _0A37
    ScrCmd_011 0x8004, 1
    ScrCmd_01D 1, _0A3C
    ScrCmd_02C 32
    ScrCmd_14D 0x8004
    ScrCmd_011 0x8004, 0
    ScrCmd_01D 1, _0A41
    ScrCmd_011 0x8004, 1
    ScrCmd_01D 1, _0A46
    ScrCmd_034
    ScrCmd_05E 6, _0B44
    ScrCmd_05E 26, _0A88
    ScrCmd_05F
    ScrCmd_065 6
    ScrCmd_069 0x8004, 0x8005
    ScrCmd_011 0x8005, 0x253
    ScrCmd_01C 1, _083A
    ScrCmd_011 0x8005, 0x255
    ScrCmd_01C 1, _0854
    ScrCmd_002

_083A:
    ScrCmd_05E 0xFF, _0BB0
    ScrCmd_05E 26, _0A94
    ScrCmd_05F
    ScrCmd_016 _086E
    ScrCmd_002

_0854:
    ScrCmd_05E 0xFF, _0BBC
    ScrCmd_05E 26, _0AA0
    ScrCmd_05F
    ScrCmd_016 _086E
    ScrCmd_002

_086E:
    ScrCmd_02C 35
    ScrCmd_034
    ScrCmd_069 0x8004, 0x8005
    ScrCmd_011 0x8005, 0x253
    ScrCmd_01C 1, _08A9
    ScrCmd_011 0x8005, 0x255
    ScrCmd_01C 1, _08C3
    ScrCmd_002

    .byte 134
    .byte 1
    .byte 26
    .byte 0
    .byte 180
    .byte 2
    .byte 91
    .byte 2
    .byte 27
    .byte 0
    .byte 134
    .byte 1
    .byte 26
    .byte 0
    .byte 180
    .byte 2
    .byte 93
    .byte 2
    .byte 27
    .byte 0

_08A9:
    ScrCmd_05E 26, _0AAC
    ScrCmd_05E 0xFF, _0BC8
    ScrCmd_05F
    ScrCmd_016 _08DD
    ScrCmd_002

_08C3:
    ScrCmd_05E 26, _0AAC
    ScrCmd_05E 0xFF, _0BDC
    ScrCmd_05F
    ScrCmd_016 _08DD
    ScrCmd_002

_08DD:
    ScrCmd_01E 0x1A9
    ScrCmd_01E 0x28A
    ScrCmd_01F 0x20D
    ScrCmd_028 0x411F, 1
    ScrCmd_049 0x603
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_0BE 143, 0, 8, 11, 0
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_002

_0919:
    ScrCmd_14D 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0939
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _096B
    ScrCmd_002

_0939:
    ScrCmd_0DE 0x800C
    ScrCmd_028 0x8004, 0x271
    ScrCmd_011 0x800C, 0x186
    ScrCmd_01C 1, _099D
    ScrCmd_028 0x8004, 0x272
    ScrCmd_011 0x800C, 0x189
    ScrCmd_01C 1, _099D
    ScrCmd_028 0x8004, 0x270
    ScrCmd_01B

_096B:
    ScrCmd_0DE 0x800C
    ScrCmd_028 0x8004, 0x26E
    ScrCmd_011 0x800C, 0x186
    ScrCmd_01C 1, _099D
    ScrCmd_028 0x8004, 0x26F
    ScrCmd_011 0x800C, 0x189
    ScrCmd_01C 1, _099D
    ScrCmd_028 0x8004, 0x26D
    ScrCmd_01B

_099D:
    ScrCmd_01B

_099F:
    ScrCmd_05E 6, _0ABC
    ScrCmd_05E 0xFF, _0B50
    ScrCmd_05F
    ScrCmd_01B

_09B3:
    ScrCmd_05E 6, _0AC8
    ScrCmd_05E 0xFF, _0B5C
    ScrCmd_05F
    ScrCmd_01B

_09C7:
    ScrCmd_05E 6, _0AD4
    ScrCmd_05E 0xFF, _0B64
    ScrCmd_05F
    ScrCmd_01B

_09DB:
    ScrCmd_05E 20, _0BF0
    ScrCmd_05F
    ScrCmd_01B

_09E7:
    ScrCmd_05E 7, _0BF0
    ScrCmd_05F
    ScrCmd_01B

_09F3:
    ScrCmd_05E 7, _0BF8
    ScrCmd_05F
    ScrCmd_01B

_09FF:
    ScrCmd_05E 7, _0BF8
    ScrCmd_05F
    ScrCmd_01B

_0A0B:
    ScrCmd_05E 20, _0C08
    ScrCmd_05F
    ScrCmd_01B

_0A17:
    ScrCmd_05E 20, _0C08
    ScrCmd_05F
    ScrCmd_01B

_0A23:
    ScrCmd_02C 22
    ScrCmd_01B

_0A28:
    ScrCmd_02C 27
    ScrCmd_01B

_0A2D:
    ScrCmd_02C 23
    ScrCmd_01B

_0A32:
    ScrCmd_02C 28
    ScrCmd_01B

_0A37:
    ScrCmd_02C 30
    ScrCmd_01B

_0A3C:
    ScrCmd_02C 31
    ScrCmd_01B

_0A41:
    ScrCmd_02C 33
    ScrCmd_01B

_0A46:
    ScrCmd_02C 34
    ScrCmd_01B

_0A4B:
    ScrCmd_05E 6, _0B2C
    ScrCmd_05E 0xFF, _0B8C
    ScrCmd_05F
    ScrCmd_01B

_0A5F:
    ScrCmd_05E 6, _0B34
    ScrCmd_05E 0xFF, _0B94
    ScrCmd_05F
    ScrCmd_01B

_0A73:
    ScrCmd_0EB
    ScrCmd_061
    ScrCmd_002

    .balign 4, 0
_0A7C:
    MoveAction_010 10
    MoveAction_013 3
    EndMovement

    .balign 4, 0
_0A88:
    MoveAction_03F 2
    MoveAction_022
    EndMovement

    .balign 4, 0
_0A94:
    MoveAction_00F
    MoveAction_020
    EndMovement

    .balign 4, 0
_0AA0:
    MoveAction_00F
    MoveAction_021
    EndMovement

    .balign 4, 0
_0AAC:
    MoveAction_00F 5
    MoveAction_00C 4
    MoveAction_045
    EndMovement

    .balign 4, 0
_0ABC:
    MoveAction_00D
    MoveAction_023
    EndMovement

    .balign 4, 0
_0AC8:
    MoveAction_00D
    MoveAction_023
    EndMovement

    .balign 4, 0
_0AD4:
    MoveAction_00C
    MoveAction_023
    EndMovement

    .byte 62
    .byte 0
    .byte 1
    .byte 0
    .byte 34
    .byte 0
    .byte 1
    .byte 0
    .byte 75
    .byte 0
    .byte 1
    .byte 0
    .byte 63
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 14
    .byte 0
    .byte 4
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 13
    .byte 0
    .byte 2
    .byte 0
    .byte 14
    .byte 0
    .byte 2
    .byte 0
    .byte 13
    .byte 0
    .byte 6
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 63
    .byte 0
    .byte 1
    .byte 0
    .byte 32
    .byte 0
    .byte 1
    .byte 0
    .byte 34
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
    .byte 33
    .byte 0
    .byte 1
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
_0B2C:
    MoveAction_020
    EndMovement

    .balign 4, 0
_0B34:
    MoveAction_021
    EndMovement

    .balign 4, 0
_0B3C:
    MoveAction_026
    EndMovement

    .balign 4, 0
_0B44:
    MoveAction_00E 3
    MoveAction_00D 10
    EndMovement

    .balign 4, 0
_0B50:
    MoveAction_00C
    MoveAction_00F
    EndMovement

    .balign 4, 0
_0B5C:
    MoveAction_023
    EndMovement

    .balign 4, 0
_0B64:
    MoveAction_023
    EndMovement

    .byte 63
    .byte 0
    .byte 1
    .byte 0
    .byte 33
    .byte 0
    .byte 1
    .byte 0
    .byte 34
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
    .byte 32
    .byte 0
    .byte 1
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
_0B8C:
    MoveAction_021
    EndMovement

    .balign 4, 0
_0B94:
    MoveAction_020
    EndMovement

    .balign 4, 0
_0B9C:
    MoveAction_022
    EndMovement

    .byte 63
    .byte 0
    .byte 1
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
_0BB0:
    MoveAction_03F
    MoveAction_001
    EndMovement

    .balign 4, 0
_0BBC:
    MoveAction_03F
    MoveAction_000
    EndMovement

    .balign 4, 0
_0BC8:
    MoveAction_00D
    MoveAction_00F 5
    MoveAction_00C 5
    MoveAction_045
    EndMovement

    .balign 4, 0
_0BDC:
    MoveAction_00C
    MoveAction_00F 5
    MoveAction_00C 5
    MoveAction_045
    EndMovement

    .balign 4, 0
_0BF0:
    MoveAction_022
    EndMovement

    .balign 4, 0
_0BF8:
    MoveAction_013 4
    MoveAction_010 4
    MoveAction_024
    EndMovement

    .balign 4, 0
_0C08:
    MoveAction_013 4
    MoveAction_010 6
    MoveAction_024
    EndMovement

_0C18:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 43
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0C2B:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 49
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0C3E:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 44
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0C51:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 45
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0C64:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 46
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0C77:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_020 204
    ScrCmd_01C 1, _0CBC
    ScrCmd_02C 50
    ScrCmd_028 0x8004, 0x186
    ScrCmd_028 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0CC7
    ScrCmd_014 0x7FC
    ScrCmd_01E 204
    ScrCmd_016 _0CBC

_0CBC:
    ScrCmd_02C 51
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0CC7:
    ScrCmd_014 0x7E1
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0CD1:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 47
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0CE4:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 48
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0CF7:
    ScrCmd_060
    ScrCmd_05E 7, _0D30
    ScrCmd_05E 0xFF, _0D28
    ScrCmd_05F
    ScrCmd_02C 11
    ScrCmd_034
    ScrCmd_05E 7, _0D3C
    ScrCmd_05E 0xFF, _0D54
    ScrCmd_05F
    ScrCmd_061
    ScrCmd_002

    .balign 4, 0
_0D28:
    MoveAction_020
    EndMovement

    .balign 4, 0
_0D30:
    MoveAction_021
    MoveAction_04B
    EndMovement

    .balign 4, 0
_0D3C:
    MoveAction_011
    MoveAction_022
    MoveAction_03F 2
    MoveAction_00C
    MoveAction_022
    EndMovement

    .balign 4, 0
_0D54:
    MoveAction_00E
    EndMovement

_0D5C:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_15B 2, 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0D82
    ScrCmd_02C 12
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0D82:
    ScrCmd_02C 14
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0D8D:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_15B 2, 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0DB3
    ScrCmd_02C 13
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0DB3:
    ScrCmd_02C 15
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0DBE:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 36
    ScrCmd_034
    ScrCmd_068
    ScrCmd_05E 23, _0F1C
    ScrCmd_05F
    ScrCmd_02C 37
    ScrCmd_034
    ScrCmd_01E 0x155
    ScrCmd_186 26, 0x2D3, 0x259
    ScrCmd_188 26, 14
    ScrCmd_189 26, 0
    ScrCmd_01F 0x28A
    ScrCmd_064 26
    ScrCmd_1BD 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0E34
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0E5C
    ScrCmd_011 0x800C, 2
    ScrCmd_01C 1, _0EA4
    ScrCmd_011 0x800C, 3
    ScrCmd_01C 1, _0E7C
    ScrCmd_002

_0E34:
    ScrCmd_05E 0xFF, _0F48
    ScrCmd_05E 23, _0F24
    ScrCmd_05F
    ScrCmd_014 0x807
    ScrCmd_05E 26, _0F80
    ScrCmd_05F
    ScrCmd_016 _0ECC
    ScrCmd_002

_0E5C:
    ScrCmd_05E 23, _0F24
    ScrCmd_05F
    ScrCmd_014 0x807
    ScrCmd_05E 26, _0F70
    ScrCmd_05F
    ScrCmd_016 _0ECC
    ScrCmd_002

_0E7C:
    ScrCmd_05E 0xFF, _0F58
    ScrCmd_05E 23, _0F24
    ScrCmd_05F
    ScrCmd_014 0x807
    ScrCmd_05E 26, _0F90
    ScrCmd_05F
    ScrCmd_016 _0ECC
    ScrCmd_002

_0EA4:
    ScrCmd_05E 0xFF, _0F64
    ScrCmd_05E 23, _0F38
    ScrCmd_05F
    ScrCmd_014 0x807
    ScrCmd_05E 26, _0FA0
    ScrCmd_05F
    ScrCmd_016 _0ECC
    ScrCmd_002

_0ECC:
    ScrCmd_065 23
    ScrCmd_016 _0ED8
    ScrCmd_002

_0ED8:
    ScrCmd_02C 38
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0EF4
    ScrCmd_016 _0F0B
    ScrCmd_002

_0EF4:
    ScrCmd_028 0x411F, 3
    ScrCmd_01E 155
    ScrCmd_02C 39
    ScrCmd_034
    ScrCmd_014 0x808
    ScrCmd_061
    ScrCmd_002

_0F0B:
    ScrCmd_02C 40
    ScrCmd_031
    ScrCmd_034
    ScrCmd_014 0x808
    ScrCmd_061
    ScrCmd_002

    .balign 4, 0
_0F1C:
    MoveAction_04B
    EndMovement

    .balign 4, 0
_0F24:
    MoveAction_013
    MoveAction_011 2
    MoveAction_013
    MoveAction_011 9
    EndMovement

    .balign 4, 0
_0F38:
    MoveAction_011 2
    MoveAction_013 2
    MoveAction_011 9
    EndMovement

    .balign 4, 0
_0F48:
    MoveAction_03F
    MoveAction_023
    MoveAction_021
    EndMovement

    .balign 4, 0
_0F58:
    MoveAction_03F 2
    MoveAction_021
    EndMovement

    .balign 4, 0
_0F64:
    MoveAction_03F
    MoveAction_021
    EndMovement

    .balign 4, 0
_0F70:
    MoveAction_00C 6
    MoveAction_00E 2
    MoveAction_00C 2
    EndMovement

    .balign 4, 0
_0F80:
    MoveAction_00C 6
    MoveAction_00E 2
    MoveAction_020
    EndMovement

    .balign 4, 0
_0F90:
    MoveAction_00C 6
    MoveAction_00E 3
    MoveAction_00C
    EndMovement

    .balign 4, 0
_0FA0:
    MoveAction_00C 6
    MoveAction_00E
    MoveAction_00C
    EndMovement

_0FB0:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_05E 26, _0FE0
    ScrCmd_05F
    ScrCmd_0CD 0
    ScrCmd_02C 41
    ScrCmd_014 0x807
    ScrCmd_020 155
    ScrCmd_01C 1, _0EF4
    ScrCmd_016 _0ED8

    .byte 2
    .byte 0
    .byte 0

    .balign 4, 0
_0FE0:
    MoveAction_03F
    MoveAction_04B
    MoveAction_03F
    EndMovement

_0FF0:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 42
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_1003:
    ScrCmd_036 61, 0, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    ScrCmd_002

_101A:
    ScrCmd_037 3, 0
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03A 62, 0x800C
    ScrCmd_014 0x7D0
    ScrCmd_002

_102F:
    ScrCmd_036 63, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    ScrCmd_002

_1046:
    ScrCmd_036 64, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    ScrCmd_002

_105D:
    ScrCmd_036 65, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    ScrCmd_002

_1074:
    ScrCmd_036 66, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    ScrCmd_002

_108B:
    ScrCmd_036 67, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    ScrCmd_002

_10A2:
    ScrCmd_036 68, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    ScrCmd_002

_10B9:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_262 0x182, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _1179
    ScrCmd_263 3
    ScrCmd_04C 0x182, 0
    ScrCmd_02C 57
    ScrCmd_031
    ScrCmd_04D
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_10E9:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_262 0x182, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _1179
    ScrCmd_263 2
    ScrCmd_04C 0x182, 0
    ScrCmd_02C 58
    ScrCmd_031
    ScrCmd_04D
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_1119:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_262 0x182, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _1179
    ScrCmd_263 1
    ScrCmd_04C 0x182, 0
    ScrCmd_02C 59
    ScrCmd_031
    ScrCmd_04D
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_1149:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_262 0x182, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _1179
    ScrCmd_263 0
    ScrCmd_04C 0x182, 0
    ScrCmd_02C 60
    ScrCmd_031
    ScrCmd_04D
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_1179:
    ScrCmd_02C 56
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_1184:
    ScrCmd_060
    ScrCmd_05E 6, _11E8
    ScrCmd_05F
    ScrCmd_14D 0x8004
    ScrCmd_011 0x8004, 0
    ScrCmd_01D 1, _11D6
    ScrCmd_011 0x8004, 1
    ScrCmd_01D 1, _11DE
    ScrCmd_034
    ScrCmd_05E 6, _11FC
    ScrCmd_05F
    ScrCmd_065 6
    ScrCmd_01A _00BA
    ScrCmd_01F 0x1A8
    ScrCmd_064 6
    ScrCmd_028 0x411A, 2
    ScrCmd_061
    ScrCmd_002

_11D6:
    ScrCmd_0CD 0
    ScrCmd_02C 0
    ScrCmd_01B

_11DE:
    ScrCmd_0CD 0
    ScrCmd_02C 1
    ScrCmd_01B

    .balign 4, 0
_11E8:
    MoveAction_020
    MoveAction_04B
    MoveAction_00F 2
    MoveAction_00C
    EndMovement

    .balign 4, 0
_11FC:
    MoveAction_00D 9
    EndMovement

_1204:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 52
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _122B
    ScrCmd_02C 53
    ScrCmd_016 _1236
    ScrCmd_002

_122B:
    ScrCmd_02C 54
    ScrCmd_016 _1236
    ScrCmd_002

_1236:
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_123E:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 55
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

    .byte 0
    .byte 0
    .byte 0
