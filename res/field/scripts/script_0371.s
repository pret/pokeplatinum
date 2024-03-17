    .include "macros/scrcmd.inc"

    .data

    .long _0016-.-4
    .long _0101-.-4
    .long _012C-.-4
    .long _0058-.-4
    .long _0037-.-4
    .short 0xFD13

_0016:
    ScrCmd_011 0x40D9, 0
    ScrCmd_01C 1, _0035
    ScrCmd_01E 0x1CB
    ScrCmd_1DD 55, 0, 0x4000
    ScrCmd_029 0x4020, 0x4000
_0035:
    ScrCmd_002

_0037:
    ScrCmd_1B2 0xFF
    ScrCmd_011 0x40D9, 3
    ScrCmd_01C 1, _004A
    ScrCmd_002

_004A:
    ScrCmd_187 2, 5, 0, 6, 3
    ScrCmd_002

_0058:
    ScrCmd_028 0x40D9, 0
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_01A _015D
    ScrCmd_061
    ScrCmd_002

_0070:
    ScrCmd_02C 0
    ScrCmd_04E 0x48E
    ScrCmd_04F
    ScrCmd_14E
    ScrCmd_01B

_007D:
    ScrCmd_003 30, 0x800C
    ScrCmd_028 0x40D8, 1
    ScrCmd_1DD 43, 0, 0x800C
    ScrCmd_029 0x8008, 0x800C
    ScrCmd_011 0x8008, 4
    ScrCmd_01C 1, _00D9
    ScrCmd_011 0x8008, 5
    ScrCmd_01C 1, _00D9
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_0BE 0x146, 0, 11, 6, 0
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_061
    ScrCmd_002

_00D9:
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_0BE 0x146, 0, 15, 6, 0
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_061
    ScrCmd_002

_0101:
    ScrCmd_060
    ScrCmd_028 0x40D9, 3
    ScrCmd_1DD 100, 0, 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _007D
    ScrCmd_01A _043C
    ScrCmd_016 _0201
    ScrCmd_002

_012C:
    ScrCmd_060
    ScrCmd_028 0x40D9, 3
    ScrCmd_1DD 100, 0, 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _007D
    ScrCmd_01A _043C
    ScrCmd_01A _0448
    ScrCmd_016 _02F7
    ScrCmd_002

_015D:
    ScrCmd_1DD 40, 0, 0
    ScrCmd_01A _045C
    ScrCmd_1FE 0
    ScrCmd_030
    ScrCmd_034
    ScrCmd_01A _047E
    ScrCmd_1DD 42, 0, 0
    ScrCmd_0EC 0x800C
    ScrCmd_029 0x8004, 0x800C
    ScrCmd_01B

_018C:
    ScrCmd_1DD 37, 0, 0
    ScrCmd_016 _007D
    ScrCmd_002

_019C:
    ScrCmd_1DD 38, 0, 0
    ScrCmd_016 _007D
    ScrCmd_002

_01AC:
    ScrCmd_028 0x40D8, 2
    ScrCmd_1DD 39, 0, 0
    ScrCmd_1DC
    ScrCmd_02C 4
    ScrCmd_18D
    ScrCmd_12D 0x800C
    ScrCmd_18E
    ScrCmd_049 0x61B
    ScrCmd_04B 0x61B
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_034
    ScrCmd_1DD 2, 0, 0
    ScrCmd_002

_01E7:
    ScrCmd_016 _018C
    ScrCmd_002

_01EF:
    ScrCmd_1DD 34, 0, 0x800C
    ScrCmd_1DD 35, 0, 0x800C
    ScrCmd_01B

_0201:
    ScrCmd_01A _015D
    ScrCmd_011 0x8004, 0
    ScrCmd_01C 1, _018C
    ScrCmd_01A _01EF
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _019C
    ScrCmd_01A _0492
    ScrCmd_01A _04A6
    ScrCmd_01A _0070
    ScrCmd_016 _02F7
    ScrCmd_002

_0241:
    ScrCmd_1DD 33, 0, 0x8004
    ScrCmd_0D5 0, 0x8004
    ScrCmd_02C 1
    ScrCmd_044 31, 11, 0, 0, 0x800C
    ScrCmd_33A 1
    ScrCmd_046 146, 0xFF, 0
    ScrCmd_046 147, 0xFF, 1
    ScrCmd_046 148, 0xFF, 2
    ScrCmd_047
    ScrCmd_034
    ScrCmd_029 0x8008, 0x800C
    ScrCmd_011 0x8008, 0
    ScrCmd_01C 1, _02AD
    ScrCmd_011 0x8008, 1
    ScrCmd_01C 1, _02BB
    ScrCmd_011 0x8008, 2
    ScrCmd_01C 1, _02D9
    ScrCmd_016 _02AD
    ScrCmd_002

_02AD:
    ScrCmd_01A _04BA
    ScrCmd_016 _0201
    ScrCmd_002

_02BB:
    ScrCmd_02C 2
    ScrCmd_03E 0x800C
    ScrCmd_034
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _01AC
    ScrCmd_016 _0241
    ScrCmd_002

_02D9:
    ScrCmd_02C 3
    ScrCmd_03E 0x800C
    ScrCmd_034
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _01E7
    ScrCmd_016 _0241
    ScrCmd_002

_02F7:
    ScrCmd_1DD 43, 0, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 5, _0241
    ScrCmd_1DD 36, 0, 0x800C
    ScrCmd_011 0x800C, 20
    ScrCmd_01C 1, _0336
    ScrCmd_011 0x800C, 48
    ScrCmd_01C 1, _0336
    ScrCmd_016 _0241
    ScrCmd_002

_0336:
    ScrCmd_02C 14
    ScrCmd_044 31, 11, 0, 0, 0x800C
    ScrCmd_33A 1
    ScrCmd_046 146, 0xFF, 0
    ScrCmd_046 147, 0xFF, 1
    ScrCmd_046 148, 0xFF, 2
    ScrCmd_047
    ScrCmd_034
    ScrCmd_029 0x8008, 0x800C
    ScrCmd_011 0x8008, 0
    ScrCmd_01C 1, _0395
    ScrCmd_011 0x8008, 1
    ScrCmd_01C 1, _02BB
    ScrCmd_011 0x8008, 2
    ScrCmd_01C 1, _02D9
    ScrCmd_016 _0395
    ScrCmd_002

_0395:
    ScrCmd_01A _04BA
    ScrCmd_1DD 40, 0, 0
    ScrCmd_01A _04CE
    ScrCmd_1DD 36, 0, 0x800C
    ScrCmd_011 0x800C, 48
    ScrCmd_01C 1, _041E
    ScrCmd_0CD 0
    ScrCmd_0CE 1
    ScrCmd_02C 15
_03C7:
    ScrCmd_034
    ScrCmd_01A _047E
    ScrCmd_1DD 42, 0, 0
    ScrCmd_0EC 0x800C
    ScrCmd_029 0x8004, 0x800C
    ScrCmd_011 0x8004, 0
    ScrCmd_01C 1, _018C
    ScrCmd_1DD 36, 0, 0x800C
    ScrCmd_011 0x800C, 48
    ScrCmd_01C 1, _0429
    ScrCmd_02C 17
    ScrCmd_1DD 44, 1, 0
_040E:
    ScrCmd_034
    ScrCmd_01A _01EF
    ScrCmd_016 _019C
    ScrCmd_002

_041E:
    ScrCmd_02C 16
    ScrCmd_016 _03C7
    ScrCmd_002

_0429:
    ScrCmd_02C 18
    ScrCmd_1DD 44, 2, 0
    ScrCmd_016 _040E
    ScrCmd_002

_043C:
    ScrCmd_05E 2, _0504
    ScrCmd_05F
    ScrCmd_01B

_0448:
    ScrCmd_05E 0, _0580
    ScrCmd_05E 2, _05A0
    ScrCmd_05F
    ScrCmd_01B

_045C:
    ScrCmd_1DD 41, 0, 0x800C
    ScrCmd_029 0x4021, 0x800C
    ScrCmd_01F 0x1CB
    ScrCmd_064 1
    ScrCmd_05E 1, _0524
    ScrCmd_05F
    ScrCmd_01B

_047E:
    ScrCmd_05E 2, _0540
    ScrCmd_05E 1, _0548
    ScrCmd_05F
    ScrCmd_01B

_0492:
    ScrCmd_05E 1, _0550
    ScrCmd_05F
    ScrCmd_01E 0x1CB
    ScrCmd_065 1
    ScrCmd_01B

_04A6:
    ScrCmd_05E 2, _0574
    ScrCmd_05E 0, _0580
    ScrCmd_05F
    ScrCmd_01B

_04BA:
    ScrCmd_05E 2, _0588
    ScrCmd_05E 0, _0590
    ScrCmd_05F
    ScrCmd_01B

_04CE:
    ScrCmd_028 0x4021, 169
    ScrCmd_01F 0x1CB
    ScrCmd_064 1
    ScrCmd_05E 1, _05A8
    ScrCmd_05F
    ScrCmd_01B

    .byte 62
    .byte 0
    .byte 1
    .byte 0
    .byte 2
    .byte 0
    .byte 1
    .byte 0
    .byte 14
    .byte 0
    .byte 5
    .byte 0
    .byte 0
    .byte 0
    .byte 1
    .byte 0
    .byte 12
    .byte 0
    .byte 3
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
_0504:
    MoveAction_03E
    MoveAction_00C
    MoveAction_002
    MoveAction_00E 3
    MoveAction_000
    MoveAction_00C 3
    MoveAction_003
    EndMovement

    .balign 4, 0
_0524:
    MoveAction_00D
    MoveAction_003
    MoveAction_00F 3
    MoveAction_001
    MoveAction_00D 3
    MoveAction_002
    EndMovement

    .balign 4, 0
_0540:
    MoveAction_00F
    EndMovement

    .balign 4, 0
_0548:
    MoveAction_00E
    EndMovement

    .balign 4, 0
_0550:
    MoveAction_003
    MoveAction_00F
    MoveAction_000
    MoveAction_00C 3
    MoveAction_002
    MoveAction_00E 3
    MoveAction_000
    MoveAction_00C
    EndMovement

    .balign 4, 0
_0574:
    MoveAction_00E
    MoveAction_002
    EndMovement

    .balign 4, 0
_0580:
    MoveAction_00F
    EndMovement

    .balign 4, 0
_0588:
    MoveAction_003
    EndMovement

    .balign 4, 0
_0590:
    MoveAction_002
    MoveAction_00E
    MoveAction_003
    EndMovement

    .balign 4, 0
_05A0:
    MoveAction_002
    EndMovement

    .balign 4, 0
_05A8:
    MoveAction_009
    MoveAction_003
    MoveAction_00B 3
    MoveAction_001
    MoveAction_009 3
    MoveAction_002
    EndMovement
