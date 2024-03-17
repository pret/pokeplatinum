    .include "macros/scrcmd.inc"

    .data

    .long _001E-.-4
    .long _0071-.-4
    .long _0084-.-4
    .long _009B-.-4
    .long _00B2-.-4
    .long _00C7-.-4
    .long _04C4-.-4
    .short 0xFD13

_001E:
    ScrCmd_011 0x4087, 2
    ScrCmd_01D 4, _005B
    ScrCmd_14D 0x4000
    ScrCmd_011 0x4000, 0
    ScrCmd_01C 1, _004B
    ScrCmd_011 0x4000, 1
    ScrCmd_01C 1, _0053
    ScrCmd_002

_004B:
    ScrCmd_028 0x4020, 97
    ScrCmd_002

_0053:
    ScrCmd_028 0x4020, 0
    ScrCmd_002

_005B:
    ScrCmd_186 3, 186, 0x331
    ScrCmd_189 3, 1
    ScrCmd_188 3, 15
    ScrCmd_01B

_0071:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 10
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0084:
    ScrCmd_036 11, 1, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    ScrCmd_002

_009B:
    ScrCmd_036 12, 1, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    ScrCmd_002

_00B2:
    ScrCmd_037 3, 0
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03A 13, 0x800C
    ScrCmd_014 0x7D0
    ScrCmd_002

_00C7:
    ScrCmd_060
    ScrCmd_05E 3, _03C4
    ScrCmd_05E 0xFF, _04A0
    ScrCmd_05F
    ScrCmd_069 0x8004, 0x8005
    ScrCmd_011 0x8005, 0x339
    ScrCmd_01C 1, _0124
    ScrCmd_011 0x8005, 0x33A
    ScrCmd_01C 1, _0134
    ScrCmd_011 0x8005, 0x33B
    ScrCmd_01C 1, _0144
    ScrCmd_011 0x8005, 0x33C
    ScrCmd_01C 1, _0154
    ScrCmd_011 0x8005, 0x33D
    ScrCmd_01C 1, _0164
    ScrCmd_002

_0124:
    ScrCmd_05E 3, _03D4
    ScrCmd_05F
    ScrCmd_016 _0174

_0134:
    ScrCmd_05E 3, _03E4
    ScrCmd_05F
    ScrCmd_016 _0174

_0144:
    ScrCmd_05E 3, _03F4
    ScrCmd_05F
    ScrCmd_016 _0174

_0154:
    ScrCmd_05E 3, _0400
    ScrCmd_05F
    ScrCmd_016 _0174

_0164:
    ScrCmd_05E 3, _0410
    ScrCmd_05F
    ScrCmd_016 _0174

_0174:
    ScrCmd_020 143
    ScrCmd_01C 0, _027C
    ScrCmd_14D 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _019F
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _01B2
    ScrCmd_002

_019F:
    ScrCmd_014 0x7F8
    ScrCmd_0CF 0
    ScrCmd_0CD 1
    ScrCmd_02C 2
    ScrCmd_016 _01C5

_01B2:
    ScrCmd_014 0x7F8
    ScrCmd_0CF 0
    ScrCmd_0CD 1
    ScrCmd_02C 7
    ScrCmd_016 _01C5

_01C5:
    ScrCmd_034
    ScrCmd_05E 3, _0488
    ScrCmd_05E 0xFF, _04BC
    ScrCmd_05F
    ScrCmd_126
    ScrCmd_05E 3, _0490
    ScrCmd_05F
    ScrCmd_14D 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0205
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0211
    ScrCmd_002

_0205:
    ScrCmd_0CD 0
    ScrCmd_02C 3
    ScrCmd_016 _021D

_0211:
    ScrCmd_0CD 0
    ScrCmd_02C 8
    ScrCmd_016 _021D

_021D:
    ScrCmd_028 0x8004, 4
    ScrCmd_028 0x8005, 5
    ScrCmd_014 0x7FC
    ScrCmd_14D 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _024D
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0259
    ScrCmd_002

_024D:
    ScrCmd_0CD 0
    ScrCmd_02C 4
    ScrCmd_016 _0262

_0259:
    ScrCmd_02C 9
    ScrCmd_016 _0262

_0262:
    ScrCmd_034
    ScrCmd_05E 3, _0498
    ScrCmd_05F
    ScrCmd_065 3
    ScrCmd_028 0x4087, 1
    ScrCmd_061
    ScrCmd_002

_027C:
    ScrCmd_14D 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _029C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _02C8
    ScrCmd_002

_029C:
    ScrCmd_0CF 0
    ScrCmd_0CD 1
    ScrCmd_020 0x115
    ScrCmd_01D 0, _02BE
    ScrCmd_020 0x115
    ScrCmd_01D 1, _02C3
    ScrCmd_016 _02F4

_02BE:
    ScrCmd_02C 0
    ScrCmd_01B

_02C3:
    ScrCmd_02C 1
    ScrCmd_01B

_02C8:
    ScrCmd_0CF 0
    ScrCmd_0CD 1
    ScrCmd_020 0x115
    ScrCmd_01D 0, _02EA
    ScrCmd_020 0x115
    ScrCmd_01D 1, _02EF
    ScrCmd_016 _02F4

_02EA:
    ScrCmd_02C 5
    ScrCmd_01B

_02EF:
    ScrCmd_02C 6
    ScrCmd_01B

_02F4:
    ScrCmd_034
    ScrCmd_011 0x8005, 0x339
    ScrCmd_01C 1, _0339
    ScrCmd_011 0x8005, 0x33A
    ScrCmd_01C 1, _0351
    ScrCmd_011 0x8005, 0x33B
    ScrCmd_01C 1, _0369
    ScrCmd_011 0x8005, 0x33C
    ScrCmd_01C 1, _0381
    ScrCmd_011 0x8005, 0x33D
    ScrCmd_01C 1, _0399
    ScrCmd_002

_0339:
    ScrCmd_05E 3, _0420
    ScrCmd_05E 0xFF, _04AC
    ScrCmd_05F
    ScrCmd_016 _03B1

_0351:
    ScrCmd_05E 3, _0434
    ScrCmd_05E 0xFF, _04AC
    ScrCmd_05F
    ScrCmd_016 _03B1

_0369:
    ScrCmd_05E 3, _0448
    ScrCmd_05E 0xFF, _04AC
    ScrCmd_05F
    ScrCmd_016 _03B1

_0381:
    ScrCmd_05E 3, _0458
    ScrCmd_05E 0xFF, _04AC
    ScrCmd_05F
    ScrCmd_016 _03B1

_0399:
    ScrCmd_05E 3, _046C
    ScrCmd_05E 0xFF, _04AC
    ScrCmd_05F
    ScrCmd_016 _03B1

_03B1:
    ScrCmd_05E 3, _0480
    ScrCmd_05F
    ScrCmd_01E 0x115
    ScrCmd_061
    ScrCmd_002

    .balign 4, 0
_03C4:
    MoveAction_023
    MoveAction_04B
    MoveAction_041
    EndMovement

    .balign 4, 0
_03D4:
    MoveAction_00F 4
    MoveAction_00C 2
    MoveAction_00F
    EndMovement

    .balign 4, 0
_03E4:
    MoveAction_00F 4
    MoveAction_00C
    MoveAction_00F
    EndMovement

    .balign 4, 0
_03F4:
    MoveAction_00F 4
    MoveAction_00F
    EndMovement

    .balign 4, 0
_0400:
    MoveAction_00F 4
    MoveAction_00D
    MoveAction_00F
    EndMovement

    .balign 4, 0
_0410:
    MoveAction_00F 4
    MoveAction_00D 2
    MoveAction_00F
    EndMovement

    .balign 4, 0
_0420:
    MoveAction_00F
    MoveAction_00E 4
    MoveAction_00E 2
    MoveAction_00D 2
    EndMovement

    .balign 4, 0
_0434:
    MoveAction_00F
    MoveAction_00E 4
    MoveAction_00E 2
    MoveAction_00D
    EndMovement

    .balign 4, 0
_0448:
    MoveAction_00F
    MoveAction_00E 4
    MoveAction_00E 2
    EndMovement

    .balign 4, 0
_0458:
    MoveAction_00F
    MoveAction_00E 4
    MoveAction_00E 2
    MoveAction_00C
    EndMovement

    .balign 4, 0
_046C:
    MoveAction_00F
    MoveAction_00E 4
    MoveAction_00E 2
    MoveAction_00C 2
    EndMovement

    .balign 4, 0
_0480:
    MoveAction_023
    EndMovement

    .balign 4, 0
_0488:
    MoveAction_00E 2
    EndMovement

    .balign 4, 0
_0490:
    MoveAction_023
    EndMovement

    .balign 4, 0
_0498:
    MoveAction_00E 12
    EndMovement

    .balign 4, 0
_04A0:
    MoveAction_03F
    MoveAction_002
    EndMovement

    .balign 4, 0
_04AC:
    MoveAction_047
    MoveAction_00F
    MoveAction_048
    EndMovement

    .balign 4, 0
_04BC:
    MoveAction_00E 2
    EndMovement

_04C4:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_0CD 0
    ScrCmd_1BD 0x8002
    ScrCmd_14D 0x8000
    ScrCmd_011 0x8000, 0
    ScrCmd_01D 1, _0653
    ScrCmd_011 0x8000, 1
    ScrCmd_01D 1, _0658
    ScrCmd_034
    ScrCmd_050 0x47E
    ScrCmd_308 189, 0x332
    ScrCmd_05E 241, _06F8
    ScrCmd_05F
    ScrCmd_309
    ScrCmd_05E 3, _0690
    ScrCmd_05E 0xFF, _06D0
    ScrCmd_05F
    ScrCmd_003 15, 0x800C
    ScrCmd_011 0x8000, 0
    ScrCmd_01D 1, _065D
    ScrCmd_011 0x8000, 1
    ScrCmd_01D 1, _0662
    ScrCmd_034
    ScrCmd_003 15, 0x800C
    ScrCmd_052
    ScrCmd_011 0x8002, 0
    ScrCmd_01D 1, _05D1
    ScrCmd_011 0x8002, 1
    ScrCmd_01D 1, _05E5
    ScrCmd_011 0x8002, 2
    ScrCmd_01D 1, _05F9
    ScrCmd_011 0x8002, 3
    ScrCmd_01D 1, _0605
    ScrCmd_011 0x8000, 0
    ScrCmd_01D 1, _0667
    ScrCmd_011 0x8000, 1
    ScrCmd_01D 1, _066C
    ScrCmd_034
    ScrCmd_011 0x8002, 0
    ScrCmd_01D 1, _0611
    ScrCmd_011 0x8002, 1
    ScrCmd_01D 1, _061D
    ScrCmd_011 0x8002, 2
    ScrCmd_01D 1, _0629
    ScrCmd_011 0x8002, 3
    ScrCmd_01D 1, _0635
    ScrCmd_016 _0641
    ScrCmd_002

_05D1:
    ScrCmd_05E 3, _0698
    ScrCmd_05E 0xFF, _06D8
    ScrCmd_05F
    ScrCmd_01B

_05E5:
    ScrCmd_05E 3, _06A0
    ScrCmd_05E 0xFF, _06E0
    ScrCmd_05F
    ScrCmd_01B

_05F9:
    ScrCmd_05E 0xFF, _06E8
    ScrCmd_05F
    ScrCmd_01B

_0605:
    ScrCmd_05E 3, _06B0
    ScrCmd_05F
    ScrCmd_01B

_0611:
    ScrCmd_05E 3, _0674
    ScrCmd_05F
    ScrCmd_01B

_061D:
    ScrCmd_05E 3, _0684
    ScrCmd_05F
    ScrCmd_01B

_0629:
    ScrCmd_05E 3, _0684
    ScrCmd_05F
    ScrCmd_01B

_0635:
    ScrCmd_05E 3, _0684
    ScrCmd_05F
    ScrCmd_01B

_0641:
    ScrCmd_065 3
    ScrCmd_01F 0x177
    ScrCmd_028 0x4087, 3
    ScrCmd_061
    ScrCmd_002

_0653:
    ScrCmd_02C 14
    ScrCmd_01B

_0658:
    ScrCmd_02C 17
    ScrCmd_01B

_065D:
    ScrCmd_02C 15
    ScrCmd_01B

_0662:
    ScrCmd_02C 18
    ScrCmd_01B

_0667:
    ScrCmd_02C 16
    ScrCmd_01B

_066C:
    ScrCmd_02C 19
    ScrCmd_01B

    .balign 4, 0
_0674:
    MoveAction_00E
    MoveAction_00D 3
    MoveAction_00E 10
    EndMovement

    .balign 4, 0
_0684:
    MoveAction_00D 3
    MoveAction_00E 10
    EndMovement

    .balign 4, 0
_0690:
    MoveAction_003
    EndMovement

    .balign 4, 0
_0698:
    MoveAction_021
    EndMovement

    .balign 4, 0
_06A0:
    MoveAction_020
    EndMovement

    .byte 35
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_06B0:
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
_06D0:
    MoveAction_003
    EndMovement

    .balign 4, 0
_06D8:
    MoveAction_020
    EndMovement

    .balign 4, 0
_06E0:
    MoveAction_021
    EndMovement

    .balign 4, 0
_06E8:
    MoveAction_022
    EndMovement

    .byte 35
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_06F8:
    MoveAction_00F
    EndMovement
