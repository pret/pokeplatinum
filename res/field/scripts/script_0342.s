    .include "macros/scrcmd.inc"

    .data

    .long _001E-.-4
    .long _007A-.-4
    .long _008B-.-4
    .long _009C-.-4
    .long _00AD-.-4
    .long _00CF-.-4
    .long _00BE-.-4
    .short 0xFD13

_001E:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 0
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _003E
    GoTo _0074

_003E:
    ScrCmd_0CD 0
    ScrCmd_02C 1
    ScrCmd_034
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_04E 0x48E
    ScrCmd_04F
    ScrCmd_14E
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_0CD 0
    ScrCmd_02C 2
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0074:
    ScrCmd_034
    ScrCmd_061
    End

_007A:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 7
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_008B:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 8
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_009C:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 9
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00AD:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 10
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00BE:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 11
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00CF:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 3
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _010A
    ScrCmd_02C 5
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _010A
    ScrCmd_02C 6
    GoTo _010A
    End

_010A:
    ScrCmd_0CD 0
    ScrCmd_02C 4
    GoTo _0118
    End

_0118:
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End
