    .include "macros/scrcmd.inc"

    .data

    .long _000A-.-4
    .long _017A-.-4
    .short 0xFD13

_000A:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_020 0x137
    ScrCmd_01C 1, _0114
    ScrCmd_020 0xAAE
    ScrCmd_01C 1, _016F
    ScrCmd_277 0x8000
    ScrCmd_0D5 0, 0x8000
    ScrCmd_177 0x8002
    ScrCmd_028 0x8003, 0
_003B:
    ScrCmd_278 0x8001, 0x8003
    ScrCmd_012 0x8000, 0x8001
    ScrCmd_01C 1, _006D
    ScrCmd_026 0x8003, 1
    ScrCmd_027 0x8002, 1
    ScrCmd_011 0x8002, 0
    ScrCmd_01C 5, _003B
    GoTo _0164

_006D:
    ScrCmd_011 0x4108, 0
    ScrCmd_01D 1, _00ED
    ScrCmd_011 0x4108, 1
    ScrCmd_01D 1, _00F5
    ScrCmd_011 0x4108, 2
    ScrCmd_01D 1, _00FD
    ScrCmd_0D0 1, 0x8003
    ScrCmd_0D1 2, 0x8004
    ScrCmd_02C 1
    ScrCmd_028 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0105
    GoTo _00C2

_00C2:
    ScrCmd_014 0x7E0
    ScrCmd_01F 0x137
    ScrCmd_01E 0xAAE
    ScrCmd_026 0x4108, 1
    ScrCmd_011 0x4108, 3
    ScrCmd_01C 0, _00E7
    ScrCmd_028 0x4108, 0
_00E7:
    ScrCmd_034
    ScrCmd_061
    End

_00ED:
    ScrCmd_028 0x8004, 241
    Return

_00F5:
    ScrCmd_028 0x8004, 0x10C
    Return

_00FD:
    ScrCmd_028 0x8004, 0x113
    Return

_0105:
    ScrCmd_01E 0x137
    ScrCmd_02C 2
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0114:
    ScrCmd_011 0x4108, 0
    ScrCmd_01D 1, _00ED
    ScrCmd_011 0x4108, 1
    ScrCmd_01D 1, _00F5
    ScrCmd_011 0x4108, 2
    ScrCmd_01D 1, _00FD
    ScrCmd_0D1 2, 0x8004
    ScrCmd_02C 3
    ScrCmd_028 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0105
    GoTo _00C2

_0164:
    ScrCmd_02C 0
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_016F:
    ScrCmd_02C 4
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_017A:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 5
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .byte 0
