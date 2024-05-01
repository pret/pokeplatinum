    .include "macros/scrcmd.inc"

    .data

    .long _0006-.-4
    .short 0xFD13

_0006:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_011 0x40B5, 1
    ScrCmd_01C 4, _002C
    ScrCmd_028 0x40B5, 1
    ScrCmd_02C 0
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_002C:
    ScrCmd_134 18, 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0125
    ScrCmd_134 17, 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _00A7
    ScrCmd_134 16, 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0089
    GoTo _006B

_006B:
    ScrCmd_213 0x8000, 12
    ScrCmd_011 0x8000, 0xFF
    ScrCmd_01C 5, _00C5
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0089:
    ScrCmd_213 0x8000, 14
    ScrCmd_011 0x8000, 0xFF
    ScrCmd_01C 5, _00E5
    ScrCmd_02C 2
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00A7:
    ScrCmd_213 0x8000, 24
    ScrCmd_011 0x8000, 0xFF
    ScrCmd_01C 5, _0105
    ScrCmd_02C 3
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00C5:
    ScrCmd_198 0x8000, 0x8001
    ScrCmd_0D0 0, 0x8000
    ScrCmd_02C 4
    ScrCmd_028 0x8004, 16
    ScrCmd_014 0x7D9
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00E5:
    ScrCmd_198 0x8000, 0x8001
    ScrCmd_0D0 0, 0x8000
    ScrCmd_02C 5
    ScrCmd_028 0x8004, 17
    ScrCmd_014 0x7D9
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0105:
    ScrCmd_198 0x8000, 0x8001
    ScrCmd_0D0 0, 0x8000
    ScrCmd_02C 6
    ScrCmd_028 0x8004, 18
    ScrCmd_014 0x7D9
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0125:
    ScrCmd_02C 7
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End
