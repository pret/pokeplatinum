    .include "macros/scrcmd.inc"

    .data

    .long _0006-.-4
    .short 0xFD13

_0006:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_1E5 48
    ScrCmd_235 0, 0x800C
    ScrCmd_1F9 0x800C
    ScrCmd_029 0x8008, 0x800C
    ScrCmd_011 0x8008, 0
    ScrCmd_01C 1, _005C
    ScrCmd_011 0x8008, 1
    ScrCmd_01C 1, _0074
    ScrCmd_011 0x8008, 2
    ScrCmd_01C 1, _0092
    ScrCmd_011 0x8008, 3
    ScrCmd_01C 1, _00AA
    ScrCmd_016 _005C
    ScrCmd_002

_005C:
    ScrCmd_235 4, 0x8004, 0x8005
    ScrCmd_1FB 0x8004, 0x8005
    ScrCmd_031
    ScrCmd_016 _0129
    ScrCmd_002

_0074:
    ScrCmd_235 1, 2, 0x8004, 0x8005
    ScrCmd_1FB 0x8004, 0x8005
    ScrCmd_031
    ScrCmd_235 2
    ScrCmd_016 _0129
    ScrCmd_002

_0092:
    ScrCmd_235 1, 0, 0x8004, 0x8005
    ScrCmd_1FB 0x8004, 0x8005
    ScrCmd_016 _00AA
    ScrCmd_002

_00AA:
    ScrCmd_235 6, 0x8006
    ScrCmd_011 0x8006, 0
    ScrCmd_01C 5, _00EB
    ScrCmd_016 _00C5
    ScrCmd_002

_00C5:
    ScrCmd_235 1, 3, 0x8004, 0x8005
    ScrCmd_1F9 0x8004
    ScrCmd_1F9 0x8005
    ScrCmd_1FB 0x8004, 0x8005
    ScrCmd_235 2
    ScrCmd_031
    ScrCmd_016 _0129
    ScrCmd_002

_00EB:
    ScrCmd_235 1, 1, 0x8004, 0x8005
    ScrCmd_1F9 0x8004
    ScrCmd_1F9 0x8005
    ScrCmd_1FB 0x8004, 0x8005
    ScrCmd_235 3, 0x8006, 0x8004, 0x8005
    ScrCmd_1F9 0x8006
    ScrCmd_1F9 0x8004
    ScrCmd_1F9 0x8005
    ScrCmd_1FB 0x8004, 0x8005
    ScrCmd_031
    ScrCmd_016 _0129
    ScrCmd_002

_0129:
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

    .byte 0
