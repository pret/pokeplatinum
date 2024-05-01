    .include "macros/scrcmd.inc"

    .data

    .long _0006-.-4
    .short 0xFD13

_0006:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_020 0xAA4
    ScrCmd_01C 1, _006A
    ScrCmd_020 0xAA7
    ScrCmd_01C 1, _005F
    ScrCmd_020 247
    ScrCmd_01C 0, _004C
    ScrCmd_247 0x8002
    ScrCmd_01A _0070
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0136
    ScrCmd_016 _0146

_004C:
    ScrCmd_01E 247
    ScrCmd_01E 0xAA7
    ScrCmd_02C 0
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_005F:
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_006A:
    ScrCmd_016 _012B

_0070:
    ScrCmd_234 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _00C8
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _00D2
    ScrCmd_011 0x800C, 2
    ScrCmd_01C 1, _00DC
    ScrCmd_011 0x800C, 3
    ScrCmd_01C 1, _00E6
    ScrCmd_011 0x800C, 4
    ScrCmd_01C 1, _00F0
    ScrCmd_011 0x800C, 5
    ScrCmd_01C 1, _00FA
    ScrCmd_016 _0104

_00C8:
    ScrCmd_230 0x800C, 0x8002, 65
    ScrCmd_01B

_00D2:
    ScrCmd_230 0x800C, 0x8002, 59
    ScrCmd_01B

_00DC:
    ScrCmd_230 0x800C, 0x8002, 60
    ScrCmd_01B

_00E6:
    ScrCmd_230 0x800C, 0x8002, 61
    ScrCmd_01B

_00F0:
    ScrCmd_230 0x800C, 0x8002, 62
    ScrCmd_01B

_00FA:
    ScrCmd_230 0x800C, 0x8002, 63
    ScrCmd_01B

_0104:
    ScrCmd_230 0x800C, 0x8002, 64
    ScrCmd_01B

_010E:
    ScrCmd_0D0 1, 0x8002
    ScrCmd_0CD 2
    ScrCmd_02C 4
    ScrCmd_04E 0x483
    ScrCmd_02C 5
    ScrCmd_04F
    ScrCmd_02C 6
    ScrCmd_016 _012B

_012B:
    ScrCmd_02C 7
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0136:
    ScrCmd_0D0 1, 0x8002
    ScrCmd_02C 8
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0146:
    ScrCmd_234 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _019E
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _01F2
    ScrCmd_011 0x800C, 2
    ScrCmd_01C 1, _0246
    ScrCmd_011 0x800C, 3
    ScrCmd_01C 1, _029A
    ScrCmd_011 0x800C, 4
    ScrCmd_01C 1, _02EE
    ScrCmd_011 0x800C, 5
    ScrCmd_01C 1, _0342
    ScrCmd_016 _0396

_019E:
    ScrCmd_02C 20
    ScrCmd_030
    ScrCmd_034
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_243 0, 0x800C, 0x8000
    ScrCmd_0A1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _03EA
    ScrCmd_245 0, 0x8000
    ScrCmd_02C 21
    ScrCmd_01E 0xAA4
    ScrCmd_231 0x8002, 65
    ScrCmd_232 3, 65
    ScrCmd_016 _010E

_01F2:
    ScrCmd_02C 2
    ScrCmd_030
    ScrCmd_034
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_243 0, 0x800C, 0x8000
    ScrCmd_0A1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _03EA
    ScrCmd_245 0, 0x8000
    ScrCmd_02C 3
    ScrCmd_01E 0xAA4
    ScrCmd_231 0x8002, 59
    ScrCmd_232 3, 59
    ScrCmd_016 _010E

_0246:
    ScrCmd_02C 10
    ScrCmd_030
    ScrCmd_034
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_243 0, 0x800C, 0x8000
    ScrCmd_0A1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _03EA
    ScrCmd_245 0, 0x8000
    ScrCmd_02C 11
    ScrCmd_01E 0xAA4
    ScrCmd_231 0x8002, 60
    ScrCmd_232 3, 60
    ScrCmd_016 _010E

_029A:
    ScrCmd_02C 12
    ScrCmd_030
    ScrCmd_034
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_243 0, 0x800C, 0x8000
    ScrCmd_0A1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _03EA
    ScrCmd_245 0, 0x8000
    ScrCmd_02C 13
    ScrCmd_01E 0xAA4
    ScrCmd_231 0x8002, 61
    ScrCmd_232 3, 61
    ScrCmd_016 _010E

_02EE:
    ScrCmd_02C 14
    ScrCmd_030
    ScrCmd_034
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_243 0, 0x800C, 0x8000
    ScrCmd_0A1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _03EA
    ScrCmd_245 0, 0x8000
    ScrCmd_02C 15
    ScrCmd_01E 0xAA4
    ScrCmd_231 0x8002, 62
    ScrCmd_232 3, 62
    ScrCmd_016 _010E

_0342:
    ScrCmd_02C 16
    ScrCmd_030
    ScrCmd_034
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_243 0, 0x800C, 0x8000
    ScrCmd_0A1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _03EA
    ScrCmd_245 0, 0x8000
    ScrCmd_02C 17
    ScrCmd_01E 0xAA4
    ScrCmd_231 0x8002, 63
    ScrCmd_232 3, 63
    ScrCmd_016 _010E

_0396:
    ScrCmd_02C 18
    ScrCmd_030
    ScrCmd_034
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_243 0, 0x800C, 0x8000
    ScrCmd_0A1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _03EA
    ScrCmd_245 0, 0x8000
    ScrCmd_02C 19
    ScrCmd_01E 0xAA4
    ScrCmd_231 0x8002, 64
    ScrCmd_232 3, 64
    ScrCmd_016 _010E

_03EA:
    ScrCmd_02C 9
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .byte 0
    .byte 0
    .byte 0
