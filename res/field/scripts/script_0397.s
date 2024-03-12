    .include "macros/scrcmd.inc"

    .data

    .long _0022-.-4
    .long _002E-.-4
    .long _0054-.-4
    .long _005C-.-4
    .long _0078-.-4
    .long _008A-.-4
    .long _008C-.-4
    .long _00A2-.-4
    .short 0xFD13

_0022:
    ScrCmd_01E 0x1A7
    ScrCmd_028 0x40D0, 1
    ScrCmd_002

_002E:
    ScrCmd_01F 0x178
    ScrCmd_01F 0x179
    ScrCmd_028 0x4095, 1
    ScrCmd_028 0x4082, 2
    ScrCmd_01F 0x195
    ScrCmd_028 0x4086, 2
    ScrCmd_028 0x40A4, 3
    ScrCmd_002

_0054:
    ScrCmd_028 0x4057, 1
    ScrCmd_002

_005C:
    ScrCmd_01F 0x194
    ScrCmd_01F 0x175
    ScrCmd_028 0x4095, 1
    ScrCmd_01E 0x196
    ScrCmd_01E 0x1AE
    ScrCmd_01F 0x293
    ScrCmd_002

_0078:
    ScrCmd_01E 0x23F
    ScrCmd_028 0x40F0, 1
    ScrCmd_028 0x40D4, 1
    ScrCmd_002

_008A:
    ScrCmd_002

_008C:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_028 0x8005, 0
    ScrCmd_016 _00B8
    ScrCmd_002

_00A2:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_028 0x8005, 1
    ScrCmd_016 _00B8
    ScrCmd_002

_00B8:
    ScrCmd_011 0x8005, 0
    ScrCmd_01D 1, _0254
    ScrCmd_011 0x8005, 1
    ScrCmd_01D 1, _0259
    ScrCmd_011 0x8005, 2
    ScrCmd_01D 1, _025B
    ScrCmd_016 _00E7
    ScrCmd_002

_00E7:
    ScrCmd_011 0x8005, 0
    ScrCmd_01D 1, _0260
    ScrCmd_011 0x8005, 1
    ScrCmd_01D 1, _0265
    ScrCmd_011 0x8005, 2
    ScrCmd_01D 1, _0267
    ScrCmd_040 1, 1, 0, 1, 0x800C
    ScrCmd_042 14, 0
    ScrCmd_042 15, 1
    ScrCmd_042 16, 2
    ScrCmd_043
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0188
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0146
    ScrCmd_016 _0175
    ScrCmd_002

_0146:
    ScrCmd_011 0x8005, 0
    ScrCmd_01D 1, _026C
    ScrCmd_011 0x8005, 1
    ScrCmd_01D 1, _0271
    ScrCmd_011 0x8005, 2
    ScrCmd_01D 1, _0273
    ScrCmd_016 _00E7
    ScrCmd_002

_0175:
    ScrCmd_016 _017D
    ScrCmd_002

_017D:
    ScrCmd_02C 6
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0188:
    ScrCmd_02C 7
    ScrCmd_040 1, 1, 0, 1, 0x800C
    ScrCmd_042 17, 0
    ScrCmd_042 18, 1
    ScrCmd_042 19, 2
    ScrCmd_043
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _01C3
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _01D1
    ScrCmd_016 _0175
    ScrCmd_002

_01C3:
    ScrCmd_028 0x8006, 0
    ScrCmd_016 _01DF
    ScrCmd_002

_01D1:
    ScrCmd_028 0x8006, 1
    ScrCmd_016 _01DF
    ScrCmd_002

_01DF:
    ScrCmd_02C 8
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0175
    ScrCmd_016 _01FB
    ScrCmd_002

_01FB:
    ScrCmd_028 0x4000, 0
    ScrCmd_014 0x7D6
    ScrCmd_029 0x800C, 0x4000
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0175
    ScrCmd_016 _0220
    ScrCmd_002

_0220:
    ScrCmd_02C 9
    ScrCmd_034
    ScrCmd_011 0x8005, 0
    ScrCmd_01D 1, _024E
    ScrCmd_011 0x8005, 1
    ScrCmd_01D 1, _0250
    ScrCmd_011 0x8005, 2
    ScrCmd_01D 1, _0252
    ScrCmd_002

_024E:
    ScrCmd_01B

_0250:
    ScrCmd_01B

_0252:
    ScrCmd_01B

_0254:
    ScrCmd_02C 0
    ScrCmd_01B

_0259:
    ScrCmd_01B

_025B:
    ScrCmd_02C 3
    ScrCmd_01B

_0260:
    ScrCmd_02C 1
    ScrCmd_01B

_0265:
    ScrCmd_01B

_0267:
    ScrCmd_02C 4
    ScrCmd_01B

_026C:
    ScrCmd_02C 2
    ScrCmd_01B

_0271:
    ScrCmd_01B

_0273:
    ScrCmd_02C 5
    ScrCmd_01B
