    .include "macros/scrcmd.inc"

    .data

    .long _000C-.-4
    .long _0109-.-4
    .short 0xFD13
    End

_000C:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_020 0x117
    ScrCmd_01C 0, _00FE
    ScrCmd_020 1
    ScrCmd_01D 0, _00F6
    ScrCmd_1C0 0x800C, 201
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0048
    ScrCmd_02C 0
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0048:
    ScrCmd_2DD 0x8004, 201
    ScrCmd_095 0x8004, 0x8006
    ScrCmd_012 0x4000, 0x8006
    ScrCmd_01C 1, _00EB
    GoTo _0067

_0067:
    ScrCmd_028 0x8007, 50
    ScrCmd_026 0x8007, 0x8006
    ScrCmd_093 0x8007, 0x800C
    ScrCmd_011 0x800C, 99
    ScrCmd_01C 1, _00EB
    ScrCmd_0D0 0, 0x8004
    ScrCmd_02C 1
    ScrCmd_028 0x8000, 10
    ScrCmd_093 0x8007, 0x800C
    ScrCmd_011 0x800C, 89
    ScrCmd_01C 3, _00B3
    ScrCmd_027 0x800C, 89
    ScrCmd_027 0x8000, 0x800C
_00B3:
    ScrCmd_094 0x8007, 0x8000
    ScrCmd_029 0x4000, 0x8006
    ScrCmd_01E 1
    ScrCmd_011 0x8000, 1
    ScrCmd_01C 1, _00DB
    ScrCmd_345 0, 0x8007
    GoTo _00E0

_00DB:
    ScrCmd_2B3 0, 0x8007
_00E0:
    ScrCmd_02C 4
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00EB:
    ScrCmd_02C 0
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00F6:
    ScrCmd_028 0x4000, 0xFFFF
    Return

_00FE:
    ScrCmd_02C 3
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0109:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_020 0x117
    ScrCmd_01C 1, _0144
    ScrCmd_02C 5
    ScrCmd_028 0x8004, 0x1B2
    ScrCmd_028 0x8005, 1
    ScrCmd_014 0x7FC
    ScrCmd_01E 0x117
    Call _014F
    ScrCmd_02C 7
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0144:
    ScrCmd_02C 7
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_014F:
    ScrCmd_02C 6
    ScrCmd_1B7 0x8007, 6
    ScrCmd_026 0x8007, 1
    ScrCmd_094 0x8007, 1
    ScrCmd_1B7 0x8007, 6
    ScrCmd_026 0x8007, 7
    ScrCmd_094 0x8007, 1
    ScrCmd_1B7 0x8007, 6
    ScrCmd_026 0x8007, 7
    ScrCmd_094 0x8007, 1
    ScrCmd_1B7 0x8007, 4
    ScrCmd_026 0x8007, 25
    ScrCmd_094 0x8007, 1
    ScrCmd_1B7 0x8007, 7
    ScrCmd_026 0x8007, 43
    ScrCmd_094 0x8007, 1
    Return

    .byte 0
    .byte 0
