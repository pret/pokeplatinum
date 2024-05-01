    .include "macros/scrcmd.inc"

    .data

    .long _000A-.-4
    .long _003A-.-4
    .short 0xFD13

_000A:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_22D 2, 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _002F
    ScrCmd_02C 0
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_002F:
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_003A:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_22D 2, 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _009A
    ScrCmd_016 _005A

_005A:
    ScrCmd_14D 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _007A
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0086
    End

_007A:
    ScrCmd_0CD 0
    ScrCmd_02C 2
    ScrCmd_016 _0092

_0086:
    ScrCmd_0CD 0
    ScrCmd_02C 3
    ScrCmd_016 _0092

_0092:
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_009A:
    ScrCmd_020 0x964
    ScrCmd_01C 0, _005A
    ScrCmd_020 240
    ScrCmd_01C 1, _00C4
    ScrCmd_01E 240
    ScrCmd_21B
    ScrCmd_0CD 0
    ScrCmd_02C 4
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00C4:
    ScrCmd_0CD 0
    ScrCmd_0E3 0x4001, 0x4000
    ScrCmd_0E2 1, 0x4001
    ScrCmd_0DA 2, 0x4000, 0, 1
    ScrCmd_14D 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _00FA
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0103
    End

_00FA:
    ScrCmd_02C 5
    ScrCmd_016 _010F

_0103:
    ScrCmd_0CD 0
    ScrCmd_02C 6
    ScrCmd_016 _010F

_010F:
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .byte 0
