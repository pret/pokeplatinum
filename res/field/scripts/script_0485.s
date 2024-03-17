    .include "macros/scrcmd.inc"

    .data

    .long _001A-.-4
    .long _0082-.-4
    .long _00B8-.-4
    .long _00E4-.-4
    .long _0458-.-4
    .long _05F4-.-4
    .short 0xFD13

_001A:
    ScrCmd_011 0x4057, 1
    ScrCmd_01D 1, _00AA
    ScrCmd_020 0x12D
    ScrCmd_01C 1, _0080
    ScrCmd_166 0x4000
    ScrCmd_011 0x4000, 0
    ScrCmd_01C 1, _0080
    ScrCmd_22D 2, 0x4000
    ScrCmd_011 0x4000, 0
    ScrCmd_01C 1, _0080
    ScrCmd_07E 0x1C4, 1, 0x4000
    ScrCmd_011 0x4000, 0
    ScrCmd_01C 1, _0080
    ScrCmd_28B 1, 0x4000
    ScrCmd_011 0x4000, 0
    ScrCmd_01C 1, _0080
    ScrCmd_01F 0x252
_0080:
    ScrCmd_002

_0082:
    ScrCmd_020 0x12D
    ScrCmd_01C 1, _009A
    ScrCmd_011 0x408D, 1
    ScrCmd_01D 1, _009C
_009A:
    ScrCmd_002

_009C:
    ScrCmd_18C 3, 0
    ScrCmd_01B

    .byte 30
    .byte 0
    .byte 202
    .byte 2
    .byte 27
    .byte 0

_00AA:
    ScrCmd_028 0x4057, 2
    ScrCmd_028 0x4085, 1
    ScrCmd_01B

_00B8:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_020 0x12D
    ScrCmd_01C 1, _00D6
    ScrCmd_02C 7
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_00D6:
    ScrCmd_272 1
    ScrCmd_02C 8
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_00E4:
    ScrCmd_020 0x12D
    ScrCmd_01C 1, _022D
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_028 0x408D, 1
    ScrCmd_0CD 0
    ScrCmd_14D 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0219
    ScrCmd_02C 0
_0114:
    ScrCmd_034
    ScrCmd_01A _0240
    ScrCmd_0CD 0
    ScrCmd_02C 2
    ScrCmd_034
_0124:
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_271 0x800C
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0222
    ScrCmd_0CD 0
    ScrCmd_272 1
    ScrCmd_02C 3
    ScrCmd_03E 0x800C
    ScrCmd_034
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0124
    ScrCmd_01A _029A
    ScrCmd_003 15, 0x800C
    ScrCmd_054 0, 10
    ScrCmd_0BC 6, 6, 0, 0x7FFF
    ScrCmd_0BD
    ScrCmd_270 3, 1
    ScrCmd_333 0
    ScrCmd_0BE 0x18F, 0, 0x38C, 0x1EC, 0
    ScrCmd_003 15, 0x800C
    ScrCmd_0BC 6, 6, 1, 0x7FFF
    ScrCmd_0BD
    ScrCmd_01A _02B8
    ScrCmd_011 0x4057, 2
    ScrCmd_01D 5, _01F0
    ScrCmd_011 0x4057, 2
    ScrCmd_01D 1, _01F5
    ScrCmd_031
    ScrCmd_034
    ScrCmd_333 127
    ScrCmd_055 10
    ScrCmd_01E 0x12D
    ScrCmd_01E 0x252
    ScrCmd_01E 0x2CA
    ScrCmd_028 0x408D, 0
    ScrCmd_061
    ScrCmd_002

_01F0:
    ScrCmd_02C 5
    ScrCmd_01B

_01F5:
    ScrCmd_02C 4
    ScrCmd_034
    ScrCmd_05E 21, _05EC
    ScrCmd_05F
    ScrCmd_05E 0xFF, _0438
    ScrCmd_05F
    ScrCmd_003 15, 0x800C
    ScrCmd_02C 11
    ScrCmd_01B

_0219:
    ScrCmd_02C 1
    ScrCmd_016 _0114

_0222:
    ScrCmd_02C 6
    ScrCmd_034
    ScrCmd_016 _0124

_022D:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 5
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0240:
    ScrCmd_069 0x8000, 0x8001
    ScrCmd_029 0x8008, 0x8000
    ScrCmd_011 0x8008, 0x38D
    ScrCmd_01C 1, _0272
    ScrCmd_011 0x8008, 0x38E
    ScrCmd_01C 1, _0286
    ScrCmd_05E 0xFF, _0328
    ScrCmd_05F
    ScrCmd_01B

_0272:
    ScrCmd_05E 0xFF, _0338
    ScrCmd_05E 3, _0364
    ScrCmd_05F
    ScrCmd_01B

_0286:
    ScrCmd_05E 0xFF, _034C
    ScrCmd_05E 3, _0370
    ScrCmd_05F
    ScrCmd_01B

_029A:
    ScrCmd_05E 0xFF, _0384
    ScrCmd_05E 3, _0384
    ScrCmd_05F
    ScrCmd_01B

_02AE:
    ScrCmd_05E 21, _066C
    ScrCmd_01B

_02B8:
    ScrCmd_05E 3, _0404
    ScrCmd_05E 0xFF, _03C8
    ScrCmd_05E 16, _0440
    ScrCmd_05F
    ScrCmd_04C 0x1EC, 0
    ScrCmd_04D
    ScrCmd_011 0x4057, 2
    ScrCmd_01D 1, _02AE
    ScrCmd_05E 3, _038C
    ScrCmd_05E 16, _03B0
    ScrCmd_05E 0xFF, _039C
    ScrCmd_05F
    ScrCmd_05E 16, _0448
    ScrCmd_05F
    ScrCmd_01E 0x25C
    ScrCmd_065 16
    ScrCmd_04C 0x1EC, 0
    ScrCmd_04D
    ScrCmd_05E 3, _03C0
    ScrCmd_05F
    ScrCmd_01B

    .balign 4, 0
_0328:
    MoveAction_000
    MoveAction_041
    MoveAction_003
    EndMovement

    .balign 4, 0
_0338:
    MoveAction_00E
    MoveAction_00C
    MoveAction_041
    MoveAction_003
    EndMovement

    .balign 4, 0
_034C:
    MoveAction_00D
    MoveAction_00E 2
    MoveAction_00C
    MoveAction_041
    MoveAction_003
    EndMovement

    .balign 4, 0
_0364:
    MoveAction_03F
    MoveAction_002
    EndMovement

    .balign 4, 0
_0370:
    MoveAction_03F
    MoveAction_001
    MoveAction_03F 2
    MoveAction_002
    EndMovement

    .balign 4, 0
_0384:
    MoveAction_000
    EndMovement

    .balign 4, 0
_038C:
    MoveAction_003
    MoveAction_04B
    MoveAction_041
    EndMovement

    .balign 4, 0
_039C:
    MoveAction_041
    MoveAction_003
    MoveAction_04B
    MoveAction_041
    EndMovement

    .balign 4, 0
_03B0:
    MoveAction_002
    MoveAction_04B
    MoveAction_041
    EndMovement

    .balign 4, 0
_03C0:
    MoveAction_002
    EndMovement

    .balign 4, 0
_03C8:
    MoveAction_002
    MoveAction_041
    MoveAction_001
    MoveAction_041
    MoveAction_003
    MoveAction_041
    MoveAction_001
    MoveAction_041
    MoveAction_002
    MoveAction_041
    MoveAction_000
    MoveAction_041
    MoveAction_001
    MoveAction_041
    EndMovement

    .balign 4, 0
_0404:
    MoveAction_001
    MoveAction_041
    MoveAction_003
    MoveAction_041
    MoveAction_001
    MoveAction_041
    MoveAction_002
    MoveAction_041
    MoveAction_000
    MoveAction_041
    EndMovement

    .byte 33
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_0438:
    MoveAction_022
    EndMovement

    .balign 4, 0
_0440:
    MoveAction_00D 12
    EndMovement

    .balign 4, 0
_0448:
    MoveAction_000
    MoveAction_041
    MoveAction_04C 12
    EndMovement

_0458:
    ScrCmd_060
    ScrCmd_01F 0x2CA
    ScrCmd_069 0x8004, 0x8005
    ScrCmd_011 0x8005, 0x1F0
    ScrCmd_01C 1, _048D
    ScrCmd_011 0x8005, 0x1F1
    ScrCmd_01C 1, _04AF
    ScrCmd_011 0x8005, 0x1F2
    ScrCmd_01C 1, _04D1
    ScrCmd_002

_048D:
    ScrCmd_186 21, 0x386, 0x1F8
    ScrCmd_064 21
    ScrCmd_062 21
    ScrCmd_05E 21, _0598
    ScrCmd_05F
    ScrCmd_016 _04F3
    ScrCmd_002

_04AF:
    ScrCmd_186 21, 0x386, 0x1F9
    ScrCmd_064 21
    ScrCmd_062 21
    ScrCmd_05E 21, _05A4
    ScrCmd_05F
    ScrCmd_016 _04F3
    ScrCmd_002

_04D1:
    ScrCmd_186 21, 0x386, 0x1FA
    ScrCmd_064 21
    ScrCmd_062 21
    ScrCmd_05E 21, _05B0
    ScrCmd_05F
    ScrCmd_016 _04F3
    ScrCmd_002

_04F3:
    ScrCmd_05E 0xFF, _0628
    ScrCmd_05F
    ScrCmd_02C 9
    ScrCmd_034
    ScrCmd_069 0x8004, 0x8005
    ScrCmd_011 0x8005, 0x1F0
    ScrCmd_01C 1, _0531
    ScrCmd_011 0x8005, 0x1F1
    ScrCmd_01C 1, _054B
    ScrCmd_011 0x8005, 0x1F2
    ScrCmd_01C 1, _0565
    ScrCmd_002

_0531:
    ScrCmd_05E 21, _05BC
    ScrCmd_05E 0xFF, _0630
    ScrCmd_05F
    ScrCmd_016 _057F
    ScrCmd_002

_054B:
    ScrCmd_05E 21, _05CC
    ScrCmd_05E 0xFF, _0644
    ScrCmd_05F
    ScrCmd_016 _057F
    ScrCmd_002

_0565:
    ScrCmd_05E 21, _05DC
    ScrCmd_05E 0xFF, _0658
    ScrCmd_05F
    ScrCmd_016 _057F
    ScrCmd_002

_057F:
    ScrCmd_028 0x4057, 2
    ScrCmd_028 0x4085, 2
    ScrCmd_02C 10
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

    .balign 4, 0
_0598:
    MoveAction_00C 8
    MoveAction_023
    EndMovement

    .balign 4, 0
_05A4:
    MoveAction_00C 8
    MoveAction_023
    EndMovement

    .balign 4, 0
_05B0:
    MoveAction_00C 8
    MoveAction_023
    EndMovement

    .balign 4, 0
_05BC:
    MoveAction_00D
    MoveAction_00F 5
    MoveAction_00C 4
    EndMovement

    .balign 4, 0
_05CC:
    MoveAction_00C
    MoveAction_00F 5
    MoveAction_00C 3
    EndMovement

    .balign 4, 0
_05DC:
    MoveAction_00C 2
    MoveAction_00F 5
    MoveAction_00C 3
    EndMovement

    .balign 4, 0
_05EC:
    MoveAction_023
    EndMovement

_05F4:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_020 0x12D
    ScrCmd_01C 1, _061C
    ScrCmd_02C 10
    ScrCmd_031
    ScrCmd_034
    ScrCmd_05E 21, _0664
    ScrCmd_05F
    ScrCmd_061
    ScrCmd_002

_061C:
    ScrCmd_02C 12
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

    .balign 4, 0
_0628:
    MoveAction_022
    EndMovement

    .balign 4, 0
_0630:
    MoveAction_03F 2
    MoveAction_023
    MoveAction_03F 4
    MoveAction_020
    EndMovement

    .balign 4, 0
_0644:
    MoveAction_03F 2
    MoveAction_023
    MoveAction_03F 3
    MoveAction_020
    EndMovement

    .balign 4, 0
_0658:
    MoveAction_03F 2
    MoveAction_020
    EndMovement

    .balign 4, 0
_0664:
    MoveAction_000
    EndMovement

    .balign 4, 0
_066C:
    MoveAction_003
    MoveAction_04B
    EndMovement
