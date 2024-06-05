    .include "macros/scrcmd.inc"

    .data

    .long _0006-.-4
    .short 0xFD13

_0006:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    GoToIfSet 0xAA4, _006A
    GoToIfSet 0xAA7, _005F
    GoToIfUnset 247, _004C
    ScrCmd_247 0x8002
    Call _0070
    GoToIfEq 0x800C, 1, _0136
    GoTo _0146

_004C:
    SetFlag 247
    SetFlag 0xAA7
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
    GoTo _012B

_0070:
    ScrCmd_234 0x800C
    GoToIfEq 0x800C, 0, _00C8
    GoToIfEq 0x800C, 1, _00D2
    GoToIfEq 0x800C, 2, _00DC
    GoToIfEq 0x800C, 3, _00E6
    GoToIfEq 0x800C, 4, _00F0
    GoToIfEq 0x800C, 5, _00FA
    GoTo _0104

_00C8:
    ScrCmd_230 0x800C, 0x8002, 65
    Return

_00D2:
    ScrCmd_230 0x800C, 0x8002, 59
    Return

_00DC:
    ScrCmd_230 0x800C, 0x8002, 60
    Return

_00E6:
    ScrCmd_230 0x800C, 0x8002, 61
    Return

_00F0:
    ScrCmd_230 0x800C, 0x8002, 62
    Return

_00FA:
    ScrCmd_230 0x800C, 0x8002, 63
    Return

_0104:
    ScrCmd_230 0x800C, 0x8002, 64
    Return

_010E:
    ScrCmd_0D0 1, 0x8002
    ScrCmd_0CD 2
    ScrCmd_02C 4
    ScrCmd_04E 0x483
    ScrCmd_02C 5
    ScrCmd_04F
    ScrCmd_02C 6
    GoTo _012B

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
    GoToIfEq 0x800C, 0, _019E
    GoToIfEq 0x800C, 1, _01F2
    GoToIfEq 0x800C, 2, _0246
    GoToIfEq 0x800C, 3, _029A
    GoToIfEq 0x800C, 4, _02EE
    GoToIfEq 0x800C, 5, _0342
    GoTo _0396

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
    GoToIfEq 0x800C, 0, _03EA
    ScrCmd_245 0, 0x8000
    ScrCmd_02C 21
    SetFlag 0xAA4
    ScrCmd_231 0x8002, 65
    ScrCmd_232 3, 65
    GoTo _010E

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
    GoToIfEq 0x800C, 0, _03EA
    ScrCmd_245 0, 0x8000
    ScrCmd_02C 3
    SetFlag 0xAA4
    ScrCmd_231 0x8002, 59
    ScrCmd_232 3, 59
    GoTo _010E

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
    GoToIfEq 0x800C, 0, _03EA
    ScrCmd_245 0, 0x8000
    ScrCmd_02C 11
    SetFlag 0xAA4
    ScrCmd_231 0x8002, 60
    ScrCmd_232 3, 60
    GoTo _010E

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
    GoToIfEq 0x800C, 0, _03EA
    ScrCmd_245 0, 0x8000
    ScrCmd_02C 13
    SetFlag 0xAA4
    ScrCmd_231 0x8002, 61
    ScrCmd_232 3, 61
    GoTo _010E

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
    GoToIfEq 0x800C, 0, _03EA
    ScrCmd_245 0, 0x8000
    ScrCmd_02C 15
    SetFlag 0xAA4
    ScrCmd_231 0x8002, 62
    ScrCmd_232 3, 62
    GoTo _010E

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
    GoToIfEq 0x800C, 0, _03EA
    ScrCmd_245 0, 0x8000
    ScrCmd_02C 17
    SetFlag 0xAA4
    ScrCmd_231 0x8002, 63
    ScrCmd_232 3, 63
    GoTo _010E

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
    GoToIfEq 0x800C, 0, _03EA
    ScrCmd_245 0, 0x8000
    ScrCmd_02C 19
    SetFlag 0xAA4
    ScrCmd_231 0x8002, 64
    ScrCmd_232 3, 64
    GoTo _010E

_03EA:
    ScrCmd_02C 9
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .byte 0
    .byte 0
    .byte 0
