    .include "macros/scrcmd.inc"

    .data

    .long _003E-.-4
    .long _0055-.-4
    .long _0059-.-4
    .long _014C-.-4
    .long _0173-.-4
    .long _019A-.-4
    .long _01C1-.-4
    .long _01C3-.-4
    .long _01C5-.-4
    .long _01C7-.-4
    .long _03C4-.-4
    .long _03D7-.-4
    .long _03EA-.-4
    .long _0394-.-4
    .long _03FD-.-4
    .short 0xFD13

_003E:
    ScrCmd_020 0x97D
    ScrCmd_01C 1, _004B
    ScrCmd_002

_004B:
    ScrCmd_186 0, 9, 6
    ScrCmd_002

_0055:
    ScrCmd_25E
    ScrCmd_002

_0059:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_020 0x97D
    ScrCmd_01C 1, _0109
    ScrCmd_020 173
    ScrCmd_01C 1, _0114
    ScrCmd_02C 0
    ScrCmd_034
    ScrCmd_0E5 0x199, 0
    ScrCmd_0EC 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _011F
    ScrCmd_01E 173
    ScrCmd_028 0x410D, 1
    ScrCmd_02C 1
    ScrCmd_034
    ScrCmd_1BD 0x8004
    ScrCmd_029 0x4002, 0x8004
    ScrCmd_011 0x8004, 0
    ScrCmd_01C 1, _00D5
    ScrCmd_011 0x8004, 2
    ScrCmd_01C 1, _00E5
    ScrCmd_011 0x8004, 3
    ScrCmd_01C 1, _00F5
    ScrCmd_002

_00D5:
    ScrCmd_05E 0, _0128
    ScrCmd_05F
    ScrCmd_016 _0105

_00E5:
    ScrCmd_05E 0, _0134
    ScrCmd_05F
    ScrCmd_016 _0105

_00F5:
    ScrCmd_05E 0, _0140
    ScrCmd_05F
    ScrCmd_016 _0105

_0105:
    ScrCmd_061
    ScrCmd_002

_0109:
    ScrCmd_02C 3
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0114:
    ScrCmd_02C 2
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_011F:
    ScrCmd_0EB
    ScrCmd_061
    ScrCmd_002

    .balign 4, 0
_0128:
    .short 15, 1
    .short 33, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0134:
    .short 13, 1
    .short 32, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0140:
    .short 15, 1
    .short 34, 1
    .short 0xFE, 0x00

_014C:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_020 0x97D
    ScrCmd_01C 1, _0168
    ScrCmd_02C 13
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0168:
    ScrCmd_02C 16
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0173:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_020 0x97D
    ScrCmd_01C 1, _018F
    ScrCmd_02C 14
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_018F:
    ScrCmd_02C 17
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_019A:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_020 0x97D
    ScrCmd_01C 1, _01B6
    ScrCmd_02C 15
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_01B6:
    ScrCmd_02C 18
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_01C1:
    ScrCmd_002

_01C3:
    ScrCmd_002

_01C5:
    ScrCmd_002

_01C7:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_020 0x97D
    ScrCmd_01C 1, _0347
    ScrCmd_02C 10
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _01FB
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0341
    ScrCmd_002

_01FB:
    ScrCmd_028 0x410D, 0
    ScrCmd_049 0x5E5
    ScrCmd_0CD 0
    ScrCmd_02C 11
    ScrCmd_034
    ScrCmd_01F 0x295
    ScrCmd_01E 0x97D
    ScrCmd_25F
    ScrCmd_003 30, 0x800C
    ScrCmd_05E 2, _036C
    ScrCmd_05E 1, _0374
    ScrCmd_05E 3, _037C
    ScrCmd_05F
    ScrCmd_186 2, 2, 6
    ScrCmd_186 1, 14, 6
    ScrCmd_186 3, 8, 12
    ScrCmd_01A _0296
    ScrCmd_01A _0296
    ScrCmd_01A _0296
    ScrCmd_065 2
    ScrCmd_065 1
    ScrCmd_065 3
    ScrCmd_011 0x4002, 0
    ScrCmd_01C 1, _02C0
    ScrCmd_011 0x4002, 2
    ScrCmd_01C 1, _02DA
    ScrCmd_011 0x4002, 3
    ScrCmd_01C 1, _02F4
    ScrCmd_002

_0296:
    ScrCmd_065 2
    ScrCmd_065 1
    ScrCmd_065 3
    ScrCmd_003 2, 0x800C
    ScrCmd_01F 0x236
    ScrCmd_064 2
    ScrCmd_064 1
    ScrCmd_064 3
    ScrCmd_003 2, 0x800C
    ScrCmd_01B

_02C0:
    ScrCmd_05E 0, _0354
    ScrCmd_05E 0xFF, _0384
    ScrCmd_05F
    ScrCmd_016 _030E
    ScrCmd_002

_02DA:
    ScrCmd_05E 0, _0360
    ScrCmd_05E 0xFF, _038C
    ScrCmd_05F
    ScrCmd_016 _030E
    ScrCmd_002

_02F4:
    ScrCmd_05E 0, _0354
    ScrCmd_05E 0xFF, _0384
    ScrCmd_05F
    ScrCmd_016 _030E
    ScrCmd_002

_030E:
    ScrCmd_02C 3
    ScrCmd_034
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_065 0
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_01E 0x235
    ScrCmd_01F 0x182
    ScrCmd_028 0x40A9, 1
    ScrCmd_061
    ScrCmd_002

_0341:
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0347:
    ScrCmd_02C 12
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

    .balign 4, 0
_0354:
    .short 63, 1
    .short 34, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0360:
    .short 63, 1
    .short 32, 1
    .short 0xFE, 0x00

    .balign 4, 0
_036C:
    .short 13, 2
    .short 0xFE, 0x00

    .balign 4, 0
_0374:
    .short 13, 2
    .short 0xFE, 0x00

    .balign 4, 0
_037C:
    .short 13, 2
    .short 0xFE, 0x00

    .balign 4, 0
_0384:
    .short 35, 1
    .short 0xFE, 0x00

    .balign 4, 0
_038C:
    .short 33, 1
    .short 0xFE, 0x00

_0394:
    ScrCmd_060
    ScrCmd_05E 0, _03BC
    ScrCmd_05F
    ScrCmd_02C 4
    ScrCmd_034
    ScrCmd_05E 0xFF, _03B4
    ScrCmd_05F
    ScrCmd_061
    ScrCmd_002

    .balign 4, 0
_03B4:
    .short 12, 1
    .short 0xFE, 0x00

    .balign 4, 0
_03BC:
    .short 33, 1
    .short 0xFE, 0x00

_03C4:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 13
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_03D7:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 14
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_03EA:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 15
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_03FD:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_020 173
    ScrCmd_01C 1, _0450
    ScrCmd_05E 4, _0470
    ScrCmd_05F
    ScrCmd_02C 5
    ScrCmd_034
    ScrCmd_05E 0, _0460
    ScrCmd_05F
    ScrCmd_003 20, 0x800C
    ScrCmd_02C 6
    ScrCmd_02C 7
    ScrCmd_034
    ScrCmd_003 20, 0x800C
    ScrCmd_05E 0, _0468
    ScrCmd_05F
    ScrCmd_02C 8
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0450:
    ScrCmd_068
    ScrCmd_02C 9
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

    .balign 4, 0
_0460:
    .short 34, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0468:
    .short 32, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0470:
    .short 32, 1
    .short 0xFE, 0x00
