    .include "macros/scrcmd.inc"

    .data

    .long _000A-.-4
    .long _02C6-.-4
    .short 0xFD13

_000A:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    CheckFlag 0x108
    ScrCmd_01C 1, _003B
    SetFlag 0x108
    ScrCmd_02C 0
    ScrCmd_03E 0x800C
    CompareVarToValue 0x800C, 0
    ScrCmd_01C 1, _0055
    GoTo _028F

_003B:
    ScrCmd_02C 1
    ScrCmd_03E 0x800C
    CompareVarToValue 0x800C, 0
    ScrCmd_01C 1, _0055
    GoTo _028F

_0055:
    ScrCmd_02C 2
    ScrCmd_034
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_191
    ScrCmd_193 0x8000
    ScrCmd_0A1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    CompareVarToValue 0x8000, 0xFF
    ScrCmd_01C 1, _028F
    ScrCmd_198 0x8000, 0x8001
    CompareVarToValue 0x8001, 0
    ScrCmd_01C 1, _02A5
    Call _0195
    CompareVarToValue 0x800C, 0
    ScrCmd_01C 1, _029A
    ScrCmd_029 0x8002, 0x800C
    Call _0251
    CompareVarToValue 0x800C, 1
    ScrCmd_01C 1, _02BB
    ScrCmd_1B9 0x800C, 0x8000
    CompareVarToValue 0x800C, 0xFF
    ScrCmd_01C 0, _02B0
    ScrCmd_0D0 0, 0x8000
    CompareVarToValue 0x8002, 1
    ScrCmd_01C 1, _00FE
    CompareVarToValue 0x8002, 2
    ScrCmd_01C 1, _011E
    GoTo _013E

_00FE:
    ScrCmd_02C 9
    ScrCmd_03E 0x800C
    CompareVarToValue 0x800C, 1
    ScrCmd_01C 1, _028F
    ScrCmd_028 0x8003, 0x133
    GoTo _015E

_011E:
    ScrCmd_02C 10
    ScrCmd_03E 0x800C
    CompareVarToValue 0x800C, 1
    ScrCmd_01C 1, _028F
    ScrCmd_028 0x8003, 0x134
    GoTo _015E

_013E:
    ScrCmd_02C 11
    ScrCmd_03E 0x800C
    CompareVarToValue 0x800C, 1
    ScrCmd_01C 1, _028F
    ScrCmd_028 0x8003, 0x152
    GoTo _015E

_015E:
    ScrCmd_034
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_224 0x8000, 0x8003
    ScrCmd_225 0x800C
    ScrCmd_0A1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    CompareVarToValue 0x800C, 0xFF
    ScrCmd_01C 1, _028F
    ScrCmd_061
    End

_0195:
    CompareVarToValue 0x8001, 6
    ScrCmd_01C 1, _0239
    CompareVarToValue 0x8001, 157
    ScrCmd_01C 1, _0239
    CompareVarToValue 0x8001, 0x101
    ScrCmd_01C 1, _0239
    CompareVarToValue 0x8001, 0x188
    ScrCmd_01C 1, _0239
    CompareVarToValue 0x8001, 9
    ScrCmd_01C 1, _0241
    CompareVarToValue 0x8001, 160
    ScrCmd_01C 1, _0241
    CompareVarToValue 0x8001, 0x104
    ScrCmd_01C 1, _0241
    CompareVarToValue 0x8001, 0x18B
    ScrCmd_01C 1, _0241
    CompareVarToValue 0x8001, 3
    ScrCmd_01C 1, _0249
    CompareVarToValue 0x8001, 154
    ScrCmd_01C 1, _0249
    CompareVarToValue 0x8001, 254
    ScrCmd_01C 1, _0249
    CompareVarToValue 0x8001, 0x185
    ScrCmd_01C 1, _0249
    ScrCmd_028 0x800C, 0
    Return

_0239:
    ScrCmd_028 0x800C, 1
    Return

_0241:
    ScrCmd_028 0x800C, 2
    Return

_0249:
    ScrCmd_028 0x800C, 3
    Return

_0251:
    CompareVarToValue 0x8002, 1
    ScrCmd_01C 1, _0271
    CompareVarToValue 0x8002, 2
    ScrCmd_01C 1, _027B
    GoTo _0285

_0271:
    ScrCmd_099 0x800C, 0x133, 0x8000
    Return

_027B:
    ScrCmd_099 0x800C, 0x134, 0x8000
    Return

_0285:
    ScrCmd_099 0x800C, 0x152, 0x8000
    Return

_028F:
    ScrCmd_02C 3
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_029A:
    ScrCmd_02C 5
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_02A5:
    ScrCmd_02C 6
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_02B0:
    ScrCmd_02C 7
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_02BB:
    ScrCmd_02C 8
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_02C6:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 18
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .byte 0
