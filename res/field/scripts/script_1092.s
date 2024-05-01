    .include "macros/scrcmd.inc"

    .data

    .long _0012-.-4
    .long _002B-.-4
    .long _0041-.-4
    .long _0057-.-4
    .short 0xFD13

_0012:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 0
    ScrCmd_014 0x7E3
    ScrCmd_035
    ScrCmd_147 1
    ScrCmd_061
    End

_002B:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_014 0x7E3
    ScrCmd_035
    ScrCmd_147 1
    ScrCmd_061
    End

_0041:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_014 0x7E3
    ScrCmd_035
    ScrCmd_148 14
    ScrCmd_061
    End

_0057:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 1
    ScrCmd_268 0x800C
    ScrCmd_011 0x800C, 4
    ScrCmd_01C 0, _0113
    ScrCmd_011 0x800C, 10
    ScrCmd_01C 0, _0093
    ScrCmd_011 0x800C, 20
    ScrCmd_01C 0, _00D3
    ScrCmd_016 _0113

_0093:
    ScrCmd_020 0x134
    ScrCmd_01C 1, _0153
    ScrCmd_02C 2
    ScrCmd_028 0x8004, 0x129
    ScrCmd_028 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0174
    ScrCmd_014 0x7FC
    ScrCmd_01E 0x134
    ScrCmd_02C 3
    ScrCmd_016 _0153

_00D3:
    ScrCmd_020 0x135
    ScrCmd_01C 1, _015E
    ScrCmd_02C 2
    ScrCmd_028 0x8004, 240
    ScrCmd_028 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0174
    ScrCmd_014 0x7FC
    ScrCmd_01E 0x135
    ScrCmd_02C 4
    ScrCmd_016 _015E

_0113:
    ScrCmd_020 0x136
    ScrCmd_01C 1, _0169
    ScrCmd_02C 2
    ScrCmd_028 0x8004, 0x10B
    ScrCmd_028 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0174
    ScrCmd_014 0x7FC
    ScrCmd_01E 0x136
    ScrCmd_02C 5
    ScrCmd_016 _0169

_0153:
    ScrCmd_02C 6
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_015E:
    ScrCmd_02C 7
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0169:
    ScrCmd_02C 8
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0174:
    ScrCmd_02C 9
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .byte 0
