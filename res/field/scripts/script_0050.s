    .include "macros/scrcmd.inc"

    .data

    .long _005A-.-4
    .long _0090-.-4
    .long _03F8-.-4
    .long _00D7-.-4
    .long _0350-.-4
    .long _0363-.-4
    .long _0376-.-4
    .long _03D2-.-4
    .long _03E5-.-4
    .long _0634-.-4
    .long _0647-.-4
    .long _0670-.-4
    .long _0683-.-4
    .long _0696-.-4
    .long _06A9-.-4
    .long _06C0-.-4
    .long _06D5-.-4
    .long _06EC-.-4
    .long _0703-.-4
    .long _0722-.-4
    .long _0735-.-4
    .long _0754-.-4
    .short 0xFD13

_005A:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_020 138
    ScrCmd_01C 1, _0082
    ScrCmd_0CE 0
    ScrCmd_0CD 1
    ScrCmd_02C 0
    ScrCmd_031
    ScrCmd_01E 138
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0082:
    ScrCmd_0CE 0
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0090:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_15B 0, 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _00C1
    ScrCmd_020 122
    ScrCmd_01C 1, _00CC
    ScrCmd_02C 8
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_00C1:
    ScrCmd_02C 10
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_00CC:
    ScrCmd_02C 9
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_00D7:
    ScrCmd_060
    ScrCmd_01F 0x17C
    ScrCmd_188 3, 16
    ScrCmd_189 3, 2
    ScrCmd_069 0x8004, 0x8005
    ScrCmd_011 0x8005, 0x2EC
    ScrCmd_01C 1, _011E
    ScrCmd_011 0x8005, 0x2ED
    ScrCmd_01C 1, _0144
    ScrCmd_011 0x8005, 0x2EE
    ScrCmd_01C 1, _016A
    ScrCmd_016 _0190
    ScrCmd_002

_011E:
    ScrCmd_186 3, 0x10F, 0x2EC
    ScrCmd_064 3
    ScrCmd_05E 0xFF, _02A0
    ScrCmd_05E 3, _02B8
    ScrCmd_05F
    ScrCmd_016 _01B6
    ScrCmd_002

_0144:
    ScrCmd_186 3, 0x10F, 0x2ED
    ScrCmd_064 3
    ScrCmd_05E 0xFF, _02A0
    ScrCmd_05E 3, _02B8
    ScrCmd_05F
    ScrCmd_016 _01B6
    ScrCmd_002

_016A:
    ScrCmd_186 3, 0x10F, 0x2EE
    ScrCmd_064 3
    ScrCmd_05E 0xFF, _02A0
    ScrCmd_05E 3, _02B8
    ScrCmd_05F
    ScrCmd_016 _01B6
    ScrCmd_002

_0190:
    ScrCmd_186 3, 0x10F, 0x2EF
    ScrCmd_064 3
    ScrCmd_05E 0xFF, _02A0
    ScrCmd_05E 3, _02B8
    ScrCmd_05F
    ScrCmd_016 _01B6
    ScrCmd_002

_01B6:
    ScrCmd_049 0x602
    ScrCmd_02C 2
    ScrCmd_034
    ScrCmd_014 0x7FA
    ScrCmd_0CE 0
    ScrCmd_0CD 1
    ScrCmd_02C 3
    ScrCmd_034
    ScrCmd_05E 3, _0340
    ScrCmd_05F
    ScrCmd_02C 4
    ScrCmd_05E 3, _0348
    ScrCmd_05F
    ScrCmd_02C 5
    ScrCmd_034
    ScrCmd_069 0x8004, 0x8005
    ScrCmd_011 0x8005, 0x2EC
    ScrCmd_01C 1, _021F
    ScrCmd_011 0x8005, 0x2ED
    ScrCmd_01C 1, _0239
    ScrCmd_011 0x8005, 0x2EE
    ScrCmd_01C 1, _0253
    ScrCmd_016 _026D
    ScrCmd_002

_021F:
    ScrCmd_05E 0xFF, _0310
    ScrCmd_05E 3, _02C0
    ScrCmd_05F
    ScrCmd_016 _0287
    ScrCmd_002

_0239:
    ScrCmd_05E 0xFF, _031C
    ScrCmd_05E 3, _02D0
    ScrCmd_05F
    ScrCmd_016 _0287
    ScrCmd_002

_0253:
    ScrCmd_05E 0xFF, _0328
    ScrCmd_05E 3, _02E8
    ScrCmd_05F
    ScrCmd_016 _0287
    ScrCmd_002

_026D:
    ScrCmd_05E 0xFF, _0334
    ScrCmd_05E 3, _02F8
    ScrCmd_05F
    ScrCmd_016 _0287
    ScrCmd_002

_0287:
    ScrCmd_049 0x603
    ScrCmd_065 3
    ScrCmd_014 0x7FB
    ScrCmd_028 0x4079, 3
    ScrCmd_061
    ScrCmd_002

    .balign 4, 0
_02A0:
    .short 62, 7
    .short 71, 1
    .short 18, 1
    .short 72, 1
    .short 3, 1
    .short 0xFE, 0x00

    .balign 4, 0
_02B8:
    .short 18, 9
    .short 0xFE, 0x00

    .balign 4, 0
_02C0:
    .short 17, 1
    .short 18, 4
    .short 38, 1
    .short 0xFE, 0x00

    .balign 4, 0
_02D0:
    .short 17, 1
    .short 18, 3
    .short 16, 1
    .short 18, 1
    .short 38, 1
    .short 0xFE, 0x00

    .balign 4, 0
_02E8:
    .short 16, 1
    .short 18, 4
    .short 38, 1
    .short 0xFE, 0x00

    .balign 4, 0
_02F8:
    .short 16, 1
    .short 18, 3
    .short 16, 1
    .short 18, 1
    .short 38, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0310:
    .short 33, 1
    .short 34, 1
    .short 0xFE, 0x00

    .balign 4, 0
_031C:
    .short 33, 1
    .short 34, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0328:
    .short 32, 1
    .short 34, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0334:
    .short 32, 1
    .short 34, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0340:
    .short 35, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0348:
    .short 34, 1
    .short 0xFE, 0x00

_0350:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 14
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0363:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 16
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0376:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_020 0x109
    ScrCmd_01C 1, _03BD
    ScrCmd_02C 17
    ScrCmd_028 0x8004, 26
    ScrCmd_028 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _03C8
    ScrCmd_014 0x7FC
    ScrCmd_01E 0x109
    ScrCmd_016 _03BD
    ScrCmd_002

_03BD:
    ScrCmd_02C 18
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_03C8:
    ScrCmd_014 0x7E1
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_03D2:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 19
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_03E5:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 20
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_03F8:
    ScrCmd_060
    ScrCmd_069 0x8004, 0x8005
    ScrCmd_011 0x8005, 0x2EC
    ScrCmd_01C 1, _042F
    ScrCmd_011 0x8005, 0x2ED
    ScrCmd_01C 1, _0449
    ScrCmd_011 0x8005, 0x2EE
    ScrCmd_01C 1, _0463
    ScrCmd_016 _047D
    ScrCmd_002

_042F:
    ScrCmd_05E 0xFF, _055C
    ScrCmd_05E 4, _0604
    ScrCmd_05F
    ScrCmd_016 _0497
    ScrCmd_002

_0449:
    ScrCmd_05E 0xFF, _055C
    ScrCmd_05E 4, _0610
    ScrCmd_05F
    ScrCmd_016 _0497
    ScrCmd_002

_0463:
    ScrCmd_05E 0xFF, _055C
    ScrCmd_05E 4, _061C
    ScrCmd_05F
    ScrCmd_016 _0497
    ScrCmd_002

_047D:
    ScrCmd_05E 0xFF, _055C
    ScrCmd_05E 4, _0628
    ScrCmd_05F
    ScrCmd_016 _0497
    ScrCmd_002

_0497:
    ScrCmd_02C 6
    ScrCmd_034
    ScrCmd_014 0x800
    ScrCmd_069 0x8004, 0x8005
    ScrCmd_011 0x8005, 0x2EC
    ScrCmd_01C 1, _04DC
    ScrCmd_011 0x8005, 0x2ED
    ScrCmd_01C 1, _04F6
    ScrCmd_011 0x8005, 0x2EE
    ScrCmd_01C 1, _0510
    ScrCmd_011 0x8005, 0x2EF
    ScrCmd_01C 1, _052A
    ScrCmd_002

_04DC:
    ScrCmd_05E 0xFF, _0564
    ScrCmd_05E 4, _05B4
    ScrCmd_05F
    ScrCmd_016 _0544
    ScrCmd_002

_04F6:
    ScrCmd_05E 0xFF, _0578
    ScrCmd_05E 4, _05C8
    ScrCmd_05F
    ScrCmd_016 _0544
    ScrCmd_002

_0510:
    ScrCmd_05E 0xFF, _058C
    ScrCmd_05E 4, _05DC
    ScrCmd_05F
    ScrCmd_016 _0544
    ScrCmd_002

_052A:
    ScrCmd_05E 0xFF, _05A0
    ScrCmd_05E 4, _05F0
    ScrCmd_05F
    ScrCmd_016 _0544
    ScrCmd_002

_0544:
    ScrCmd_02C 7
    ScrCmd_031
    ScrCmd_034
    ScrCmd_014 0x801
    ScrCmd_028 0x4079, 1
    ScrCmd_061
    ScrCmd_002

    .balign 4, 0
_055C:
    .short 33, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0564:
    .short 13, 1
    .short 15, 1
    .short 13, 10
    .short 15, 12
    .short 0xFE, 0x00

    .balign 4, 0
_0578:
    .short 13, 1
    .short 15, 1
    .short 13, 9
    .short 15, 12
    .short 0xFE, 0x00

    .balign 4, 0
_058C:
    .short 13, 1
    .short 15, 1
    .short 13, 8
    .short 15, 12
    .short 0xFE, 0x00

    .balign 4, 0
_05A0:
    .short 13, 1
    .short 15, 1
    .short 13, 7
    .short 15, 12
    .short 0xFE, 0x00

    .balign 4, 0
_05B4:
    .short 15, 1
    .short 13, 10
    .short 15, 13
    .short 34, 1
    .short 0xFE, 0x00

    .balign 4, 0
_05C8:
    .short 15, 1
    .short 13, 9
    .short 15, 13
    .short 34, 1
    .short 0xFE, 0x00

    .balign 4, 0
_05DC:
    .short 15, 1
    .short 13, 8
    .short 15, 13
    .short 34, 1
    .short 0xFE, 0x00

    .balign 4, 0
_05F0:
    .short 15, 1
    .short 13, 7
    .short 15, 13
    .short 34, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0604:
    .short 75, 1
    .short 12, 3
    .short 0xFE, 0x00

    .balign 4, 0
_0610:
    .short 75, 1
    .short 12, 2
    .short 0xFE, 0x00

    .balign 4, 0
_061C:
    .short 75, 1
    .short 12, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0628:
    .short 75, 1
    .short 32, 1
    .short 0xFE, 0x00

_0634:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 21
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0647:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_020 122
    ScrCmd_01C 1, _0665
    ScrCmd_02C 11
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0665:
    ScrCmd_02C 12
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0670:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 15
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0683:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 13
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0696:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 22
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_06A9:
    ScrCmd_036 27, 0, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    ScrCmd_002

_06C0:
    ScrCmd_037 3, 0
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03A 28, 0x800C
    ScrCmd_014 0x7D0
    ScrCmd_002

_06D5:
    ScrCmd_036 29, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    ScrCmd_002

_06EC:
    ScrCmd_036 30, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    ScrCmd_002

_0703:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_04B 0x5DC
    ScrCmd_04C 66, 0
    ScrCmd_02C 24
    ScrCmd_04D
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0722:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 23
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0735:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_04B 0x5DC
    ScrCmd_04C 66, 0
    ScrCmd_02C 25
    ScrCmd_04D
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0754:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_04B 0x5DC
    ScrCmd_04C 66, 0
    ScrCmd_02C 26
    ScrCmd_04D
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

    .byte 0
