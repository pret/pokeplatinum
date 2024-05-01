    .include "macros/scrcmd.inc"

    .data

    .long _0020-.-4
    .long _0022-.-4
    .long _01CC-.-4
    .long _0298-.-4
    .long _02BF-.-4
    .long _0300-.-4
    .long _001E-.-4
    .short 0xFD13

_001E:
    End

_0020:
    End

_0022:
    ScrCmd_060
    ScrCmd_05E 0xFF, _0194
    ScrCmd_05F
    ScrCmd_069 0x4000, 0x4001
    ScrCmd_011 0x4000, 5
    ScrCmd_01D 1, _017D
    ScrCmd_072 20, 2
    ScrCmd_02C 0
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _006A
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0156
    End

_006A:
    ScrCmd_252 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 5, _008C
    ScrCmd_177 0x800C
    ScrCmd_011 0x800C, 6
    ScrCmd_01C 1, _0168
_008C:
    ScrCmd_02C 1
    ScrCmd_071 0x800C, 0x1F4
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0141
    ScrCmd_049 0x644
    ScrCmd_070 0x1F4
    ScrCmd_074
    ScrCmd_02C 2
    ScrCmd_0CD 0
    ScrCmd_02C 3
    ScrCmd_02C 4
    ScrCmd_034
    ScrCmd_073
    ScrCmd_069 0x8004, 0x8005
    ScrCmd_011 0x8004, 4
    ScrCmd_01C 1, _00E2
    ScrCmd_011 0x8004, 5
    ScrCmd_01C 1, _00F2
    End

_00E2:
    ScrCmd_05E 0xFF, _019C
    ScrCmd_05F
    ScrCmd_016 _0102

_00F2:
    ScrCmd_05E 0xFF, _01B4
    ScrCmd_05F
    ScrCmd_016 _0102

_0102:
    ScrCmd_028 0x40DA, 1
    ScrCmd_202 0
    ScrCmd_11B 125, 2, 5, 2, 1
    ScrCmd_049 0x603
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_0BE 0x1FD, 0, 68, 116, 0
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    End

_0141:
    ScrCmd_02C 6
    ScrCmd_034
    ScrCmd_073
    ScrCmd_05E 0xFF, _01C4
    ScrCmd_05F
    ScrCmd_061
    End

_0156:
    ScrCmd_034
    ScrCmd_073
    ScrCmd_05E 0xFF, _01C4
    ScrCmd_05F
    ScrCmd_061
    End

_0168:
    ScrCmd_073
    ScrCmd_02C 7
    ScrCmd_034
    ScrCmd_05E 0xFF, _01C4
    ScrCmd_05F
    ScrCmd_061
    End

_017D:
    ScrCmd_05E 0xFF, _018C
    ScrCmd_05F
    ScrCmd_01B

    .balign 4, 0
_018C:
    MoveAction_00E
    EndMovement

    .balign 4, 0
_0194:
    MoveAction_022
    EndMovement

    .balign 4, 0
_019C:
    MoveAction_020
    MoveAction_00C 3
    MoveAction_00F
    MoveAction_00C
    MoveAction_045
    EndMovement

    .balign 4, 0
_01B4:
    MoveAction_020
    MoveAction_00C 4
    MoveAction_045
    EndMovement

    .balign 4, 0
_01C4:
    MoveAction_00D
    EndMovement

_01CC:
    ScrCmd_060
    ScrCmd_02C 9
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _01F1
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _024E
    End

_01F1:
    ScrCmd_02C 10
    ScrCmd_034
    ScrCmd_05E 0xFF, _0280
    ScrCmd_05F
    ScrCmd_028 0x40DA, 0
    ScrCmd_202 1
    ScrCmd_31B 0x4002
    ScrCmd_011 0x4002, 5
    ScrCmd_01C 4, _021E
    ScrCmd_061
    End

_021E:
    ScrCmd_020 163
    ScrCmd_01C 1, _024A
    ScrCmd_05E 2, _0334
    ScrCmd_05F
    ScrCmd_02C 18
    ScrCmd_028 0x8004, 22
    ScrCmd_014 0x7D9
    ScrCmd_01E 163
    ScrCmd_034
    ScrCmd_061
    End

_024A:
    ScrCmd_061
    End

_024E:
    ScrCmd_034
    ScrCmd_05E 0xFF, _0288
    ScrCmd_05F
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_0BE 0x1FD, 0, 68, 116, 0
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    End

    .balign 4, 0
_0280:
    MoveAction_00D 5
    EndMovement

    .balign 4, 0
_0288:
    MoveAction_000
    MoveAction_00C
    MoveAction_045
    EndMovement

_0298:
    ScrCmd_060
    ScrCmd_05E 0xFF, _0280
    ScrCmd_05F
    ScrCmd_028 0x40DA, 0
    ScrCmd_31B 0x4002
    ScrCmd_011 0x4002, 5
    ScrCmd_01C 4, _021E
    ScrCmd_061
    End

_02BF:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 12
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _02EA
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _02F5
    End

_02EA:
    ScrCmd_02C 13
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_02F5:
    ScrCmd_02C 14
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0300:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_020 163
    ScrCmd_01C 1, _031E
    ScrCmd_02C 15
    ScrCmd_016 _0329
    End

_031E:
    ScrCmd_02C 19
    ScrCmd_016 _0329
    End

_0329:
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .balign 4, 0
_0334:
    MoveAction_00F 4
    MoveAction_020
    EndMovement

    .byte 14
    .byte 0
    .byte 1
    .byte 0
    .byte 35
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 15
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
