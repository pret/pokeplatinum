    .include "macros/scrcmd.inc"

    .data

    .long _00A2-.-4
    .long _00B9-.-4
    .long _0075-.-4
    .long _0012-.-4
    .short 0xFD13

_0012:
    ScrCmd_284 0x4000
    ScrCmd_011 0x4000, 26
    ScrCmd_01C 4, _003F
    ScrCmd_011 0x4000, 10
    ScrCmd_01C 4, _0051
    ScrCmd_011 0x4000, 10
    ScrCmd_01C 0, _0063
    End

_003F:
    ScrCmd_18A 2, 0x2C6, 0x29E
    ScrCmd_18A 3, 0x2C6, 0x29E
    End

_0051:
    ScrCmd_18A 2, 0x2C6, 0x29E
    ScrCmd_18A 4, 0x2C6, 0x29E
    End

_0063:
    ScrCmd_18A 3, 0x2C6, 0x29E
    ScrCmd_18A 4, 0x2C6, 0x29E
    End

_0075:
    ScrCmd_284 0x4000
    ScrCmd_011 0x4000, 26
    ScrCmd_01C 4, _003F
    ScrCmd_011 0x4000, 10
    ScrCmd_01C 4, _0051
    ScrCmd_011 0x4000, 10
    ScrCmd_01C 0, _0063
    End

_00A2:
    ScrCmd_036 0, 1, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    End

_00B9:
    ScrCmd_036 1, 1, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    End
