    .include "macros/scrcmd.inc"

    .data

    .long _0039-.-4
    .long _0158-.-4
    .long _0196-.-4
    .long _01A0-.-4
    .long _0248-.-4
    .long _001A-.-4
    .short 0xFD13

_001A:
    ScrCmd_020 142
    ScrCmd_01C 1, _0027
    End

_0027:
    ScrCmd_01E 0x29C
    ScrCmd_065 2
    ScrCmd_065 1
    ScrCmd_01F 142
    End

_0039:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_1BD 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _007B
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _008B
    ScrCmd_011 0x800C, 2
    ScrCmd_01C 1, _009B
    ScrCmd_011 0x800C, 3
    ScrCmd_01C 1, _00AB
    End

_007B:
    ScrCmd_05E 0, _01B8
    ScrCmd_05F
    ScrCmd_016 _00BB

_008B:
    ScrCmd_05E 0, _01DC
    ScrCmd_05F
    ScrCmd_016 _00BB

_009B:
    ScrCmd_05E 0, _0200
    ScrCmd_05F
    ScrCmd_016 _00BB

_00AB:
    ScrCmd_05E 0, _0224
    ScrCmd_05F
    ScrCmd_016 _00BB

_00BB:
    ScrCmd_15B 4, 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _01A0
    ScrCmd_1CD 9, 91, 0, 0, 0
    ScrCmd_02C 0
    ScrCmd_034
    ScrCmd_01E 142
    ScrCmd_0E5 0x13E, 0
    ScrCmd_01F 142
    ScrCmd_0EC 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0248
    ScrCmd_02C 1
    ScrCmd_0CD 0
    ScrCmd_02C 2
    ScrCmd_04E 0x489
    ScrCmd_04F
    ScrCmd_15C 4
    ScrCmd_260 23
    ScrCmd_023 0x10A
    ScrCmd_023 0x118
    ScrCmd_023 0x11C
    ScrCmd_023 0x145
    ScrCmd_023 0x14A
    ScrCmd_023 0x154
    ScrCmd_023 0x157
    ScrCmd_023 0x165
    ScrCmd_1CD 10, 91, 0x13E, 0, 0
    ScrCmd_028 0x407B, 1
    ScrCmd_01E 0x206
    ScrCmd_01F 0x207
    ScrCmd_02C 3
    ScrCmd_016 _0158

_0158:
    ScrCmd_028 0x8004, 0x188
    ScrCmd_028 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0196
    ScrCmd_014 0x7FC
    ScrCmd_01E 125
    ScrCmd_0D1 0, 0x8004
    ScrCmd_0D3 1, 0x8004
    ScrCmd_02C 4
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0196:
    ScrCmd_014 0x7E1
    ScrCmd_034
    ScrCmd_061
    End

_01A0:
    ScrCmd_020 125
    ScrCmd_01C 0, _0158
    ScrCmd_02C 5
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .balign 4, 0
_01B8:
    MoveAction_002 4
    MoveAction_000 4
    MoveAction_003 4
    MoveAction_001 4
    MoveAction_002 4
    MoveAction_000 4
    MoveAction_003 4
    MoveAction_001 4
    EndMovement

    .balign 4, 0
_01DC:
    MoveAction_003 4
    MoveAction_001 4
    MoveAction_002 4
    MoveAction_000 4
    MoveAction_003 4
    MoveAction_001 4
    MoveAction_002 4
    MoveAction_000 4
    EndMovement

    .balign 4, 0
_0200:
    MoveAction_000 4
    MoveAction_002 4
    MoveAction_001 4
    MoveAction_003 4
    MoveAction_000 4
    MoveAction_002 4
    MoveAction_001 4
    MoveAction_003 4
    EndMovement

    .balign 4, 0
_0224:
    MoveAction_000 4
    MoveAction_003 4
    MoveAction_001 4
    MoveAction_002 4
    MoveAction_000 4
    MoveAction_003 4
    MoveAction_001 4
    MoveAction_002 4
    EndMovement

_0248:
    ScrCmd_01F 0x29C
    ScrCmd_0EB
    ScrCmd_061
    End

    .byte 0
    .byte 0
