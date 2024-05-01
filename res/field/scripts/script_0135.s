    .include "macros/scrcmd.inc"

    .data

    .long _000E-.-4
    .long _030C-.-4
    .long _031F-.-4
    .short 0xFD13

_000E:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_247 0x8000
    ScrCmd_020 0x140
    ScrCmd_01C 0, _005C
    ScrCmd_020 0x141
    ScrCmd_01C 0, _005C
    ScrCmd_020 0x142
    ScrCmd_01C 0, _005C
    ScrCmd_020 0x143
    ScrCmd_01C 0, _005C
    ScrCmd_020 0x144
    ScrCmd_01C 0, _005C
    ScrCmd_02C 10
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_005C:
    ScrCmd_02C 0
    ScrCmd_02C 1
    ScrCmd_01A _021C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _00D7
    ScrCmd_01A _024C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0118
    ScrCmd_01A _027C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0159
    ScrCmd_01A _02AC
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _019A
    ScrCmd_01A _02DC
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _01DB
    ScrCmd_02C 2
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00CC:
    ScrCmd_02C 3
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00D7:
    ScrCmd_028 0x8004, 0x104
    ScrCmd_028 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _00CC
    ScrCmd_0D0 0, 0x8000
    ScrCmd_0D1 1, 0x104
    ScrCmd_02C 4
    ScrCmd_014 0x7FC
    ScrCmd_01E 0x140
    ScrCmd_02C 5
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0118:
    ScrCmd_028 0x8004, 0x105
    ScrCmd_028 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _00CC
    ScrCmd_0D0 0, 0x8000
    ScrCmd_0D1 1, 0x105
    ScrCmd_02C 4
    ScrCmd_014 0x7FC
    ScrCmd_01E 0x141
    ScrCmd_02C 6
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0159:
    ScrCmd_028 0x8004, 0x106
    ScrCmd_028 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _00CC
    ScrCmd_0D0 0, 0x8000
    ScrCmd_0D1 1, 0x106
    ScrCmd_02C 4
    ScrCmd_014 0x7FC
    ScrCmd_01E 0x142
    ScrCmd_02C 7
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_019A:
    ScrCmd_028 0x8004, 0x107
    ScrCmd_028 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _00CC
    ScrCmd_0D0 0, 0x8000
    ScrCmd_0D1 1, 0x107
    ScrCmd_02C 4
    ScrCmd_014 0x7FC
    ScrCmd_01E 0x143
    ScrCmd_02C 8
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_01DB:
    ScrCmd_028 0x8004, 0x108
    ScrCmd_028 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _00CC
    ScrCmd_0D0 0, 0x8000
    ScrCmd_0D1 1, 0x108
    ScrCmd_02C 4
    ScrCmd_014 0x7FC
    ScrCmd_01E 0x144
    ScrCmd_02C 9
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_021C:
    ScrCmd_020 0x140
    ScrCmd_01C 1, _0244
    ScrCmd_281 0x8000, 0, 0x800C
    ScrCmd_011 0x800C, 200
    ScrCmd_01C 0, _0244
    ScrCmd_028 0x800C, 1
    ScrCmd_01B

_0244:
    ScrCmd_028 0x800C, 0
    ScrCmd_01B

_024C:
    ScrCmd_020 0x141
    ScrCmd_01C 1, _0274
    ScrCmd_281 0x8000, 1, 0x800C
    ScrCmd_011 0x800C, 200
    ScrCmd_01C 0, _0274
    ScrCmd_028 0x800C, 1
    ScrCmd_01B

_0274:
    ScrCmd_028 0x800C, 0
    ScrCmd_01B

_027C:
    ScrCmd_020 0x142
    ScrCmd_01C 1, _02A4
    ScrCmd_281 0x8000, 2, 0x800C
    ScrCmd_011 0x800C, 200
    ScrCmd_01C 0, _02A4
    ScrCmd_028 0x800C, 1
    ScrCmd_01B

_02A4:
    ScrCmd_028 0x800C, 0
    ScrCmd_01B

_02AC:
    ScrCmd_020 0x143
    ScrCmd_01C 1, _02D4
    ScrCmd_281 0x8000, 3, 0x800C
    ScrCmd_011 0x800C, 200
    ScrCmd_01C 0, _02D4
    ScrCmd_028 0x800C, 1
    ScrCmd_01B

_02D4:
    ScrCmd_028 0x800C, 0
    ScrCmd_01B

_02DC:
    ScrCmd_020 0x144
    ScrCmd_01C 1, _0304
    ScrCmd_281 0x8000, 4, 0x800C
    ScrCmd_011 0x800C, 200
    ScrCmd_01C 0, _0304
    ScrCmd_028 0x800C, 1
    ScrCmd_01B

_0304:
    ScrCmd_028 0x800C, 0
    ScrCmd_01B

_030C:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 11
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_031F:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_04B 0x5DC
    ScrCmd_04C 0x1A1, 0
    ScrCmd_02C 12
    ScrCmd_04D
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .byte 0
    .byte 0
