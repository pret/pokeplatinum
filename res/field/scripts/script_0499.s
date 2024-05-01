    .include "macros/scrcmd.inc"

    .data

    .long _0006-.-4
    .short 0xFD13

_0006:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_294 21, 1
    ScrCmd_020 114
    ScrCmd_01C 1, _0031
    ScrCmd_01E 114
    ScrCmd_0D5 0, 1
    ScrCmd_02C 15
    ScrCmd_016 _0041
    End

_0031:
    ScrCmd_0D5 0, 1
    ScrCmd_02C 0
    ScrCmd_016 _0041
    End

_0041:
    ScrCmd_02C 1
    ScrCmd_041 30, 11, 0, 1, 0x800C
    ScrCmd_33A 1
    ScrCmd_042 2, 0
    ScrCmd_042 3, 1
    ScrCmd_042 4, 2
    ScrCmd_043
    ScrCmd_029 0x8008, 0x800C
    ScrCmd_011 0x8008, 0
    ScrCmd_01C 1, _0085
    ScrCmd_011 0x8008, 1
    ScrCmd_01C 1, _015D
    ScrCmd_016 _0152
    End

_0085:
    ScrCmd_0D5 2, 1
    ScrCmd_02C 7
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0152
    ScrCmd_29A 1, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0147
    ScrCmd_299 1
    ScrCmd_296
    ScrCmd_02C 10
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_295
    ScrCmd_034
    ScrCmd_2E2
    ScrCmd_2E4 0, 0x4000, 0x4001
    ScrCmd_2E4 1, 0x4002, 0x4003
    ScrCmd_2E4 2, 0x4004, 0x4005
    ScrCmd_2E3
    ScrCmd_0A1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_028 0x8000, 0
    ScrCmd_01A _017A
    ScrCmd_011 0x8000, 0
    ScrCmd_01C 1, _01AB
    ScrCmd_0D5 0, 0x8000
    ScrCmd_02C 11
    ScrCmd_011 0x4001, 0
    ScrCmd_01D 5, _01B6
    ScrCmd_011 0x4003, 0
    ScrCmd_01D 5, _0200
    ScrCmd_011 0x4005, 0
    ScrCmd_01D 5, _024A
    ScrCmd_02C 5
    ScrCmd_016 _0172
    End

_0147:
    ScrCmd_02C 14
    ScrCmd_016 _0168
    End

_0152:
    ScrCmd_02C 5
    ScrCmd_016 _0168
    End

_015D:
    ScrCmd_02C 6
    ScrCmd_016 _0041
    End

_0168:
    ScrCmd_031
    ScrCmd_034
    ScrCmd_295
    ScrCmd_061
    End

_0172:
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_017A:
    ScrCmd_011 0x4001, 0
    ScrCmd_01D 5, _01A3
    ScrCmd_011 0x4003, 0
    ScrCmd_01D 5, _01A3
    ScrCmd_011 0x4005, 0
    ScrCmd_01D 5, _01A3
    ScrCmd_01B

_01A3:
    ScrCmd_026 0x8000, 1
    ScrCmd_01B

_01AB:
    ScrCmd_02C 5
    ScrCmd_016 _0172
    End

_01B6:
    ScrCmd_011 0x4001, 1
    ScrCmd_01C 2, _01CE
    ScrCmd_0D1 0, 0x4000
    ScrCmd_016 _01D3

_01CE:
    ScrCmd_33D 0, 0x4000
_01D3:
    ScrCmd_0D5 1, 0x4001
    ScrCmd_07D 0x4000, 0x4001, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0294
    ScrCmd_04E 0x486
    ScrCmd_02C 13
    ScrCmd_07B 0x4000, 0x4001, 0x800C
    ScrCmd_04F
    ScrCmd_01B

_0200:
    ScrCmd_011 0x4003, 1
    ScrCmd_01C 2, _0218
    ScrCmd_0D1 0, 0x4002
    ScrCmd_016 _021D

_0218:
    ScrCmd_33D 0, 0x4002
_021D:
    ScrCmd_0D5 1, 0x4003
    ScrCmd_07D 0x4002, 0x4003, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0294
    ScrCmd_04E 0x486
    ScrCmd_02C 13
    ScrCmd_07B 0x4002, 0x4003, 0x800C
    ScrCmd_04F
    ScrCmd_01B

_024A:
    ScrCmd_011 0x4005, 1
    ScrCmd_01C 2, _0262
    ScrCmd_0D1 0, 0x4004
    ScrCmd_016 _0267

_0262:
    ScrCmd_33D 0, 0x4004
_0267:
    ScrCmd_0D5 1, 0x4005
    ScrCmd_07D 0x4004, 0x4005, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0294
    ScrCmd_04E 0x486
    ScrCmd_02C 13
    ScrCmd_07B 0x4004, 0x4005, 0x800C
    ScrCmd_04F
    ScrCmd_01B

_0294:
    ScrCmd_02C 12
    ScrCmd_01B

    .byte 0
    .byte 0
    .byte 0
