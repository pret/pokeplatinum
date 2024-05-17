    .include "macros/scrcmd.inc"

    .data

    .long _000E-.-4
    .long _0021-.-4
    .long _0253-.-4
    .short 0xFD13

_000E:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 17
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0021:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 0
    ScrCmd_03E 0x800C
    CompareVarToValue 0x800C, 0
    GoToIf 1, _004C
    CompareVarToValue 0x800C, 1
    GoToIf 1, _0232
    End

_004C:
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
    GoToIf 1, _0232
    ScrCmd_198 0x8000, 0x8001
    CompareVarToValue 0x8001, 0
    GoToIf 1, _0227
    ScrCmd_2E5 0x8000, 1, 0x800C
    CompareVarToValue 0x800C, 0
    GoToIf 1, _023D
    ScrCmd_0D6 0, 0x8000
    ScrCmd_02C 5
    ScrCmd_2E6 0x8000, 1, 0x800C
    SetVar 0x8003, 0x800C
    CompareVarToValue 0x8003, 0xFFFE
    GoToIf 1, _0232
    ScrCmd_2EA 0x8003, 0x800C
    CompareVarToValue 0x800C, 0
    GoToIf 1, _0248
    ScrCmd_1C8 0x800C, 0x8000
    SetVar 0x8002, 0x800C
    CompareVarToValue 0x800C, 4
    GoToIf 1, _00FD
    GoTo _01F2
    End

_00FD:
    ScrCmd_0D6 0, 0x8000
    ScrCmd_0D4 1, 0x8003
    ScrCmd_02C 9
    ScrCmd_03E 0x800C
    CompareVarToValue 0x800C, 1
    GoToIf 1, _01B7
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_034
    ScrCmd_2E7 0x8000, 0x8003
    ScrCmd_2E8 0x8002
    ScrCmd_0A1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    CompareVarToValue 0x8002, 4
    GoToIf 1, _01B7
    ScrCmd_1CA 0x800C, 0x8000, 0x8002
    ScrCmd_0D4 1, 0x800C
    ScrCmd_02C 12
    ScrCmd_03E 0x800C
    CompareVarToValue 0x800C, 1
    GoToIf 1, _01B7
    ScrCmd_0D6 0, 0x8000
    ScrCmd_1CA 0x800C, 0x8000, 0x8002
    ScrCmd_0D4 1, 0x800C
    ScrCmd_02C 13
    ScrCmd_049 0x5E6
    ScrCmd_04B 0x5E6
    ScrCmd_003 30, 0x800C
    ScrCmd_02C 14
    ScrCmd_003 32, 0x800C
    ScrCmd_04E 0x483
    ScrCmd_0D4 1, 0x8003
    ScrCmd_02C 15
    ScrCmd_04F
    ScrCmd_003 16, 0x800C
    GoTo _0213
    End

_01B7:
    ScrCmd_0D6 0, 0x8000
    ScrCmd_0D4 1, 0x8003
    ScrCmd_02C 10
    ScrCmd_03E 0x800C
    CompareVarToValue 0x800C, 0
    GoToIf 1, _01DD
    GoTo _00FD
    End

_01DD:
    ScrCmd_0D6 0, 0x8000
    ScrCmd_0D4 1, 0x8003
    ScrCmd_02C 11
    GoTo _0232
    End

_01F2:
    ScrCmd_0D6 0, 0x8000
    ScrCmd_0D4 1, 0x8003
    ScrCmd_02C 8
    ScrCmd_04E 0x483
    ScrCmd_04F
    ScrCmd_003 16, 0x800C
    GoTo _0213
    End

_0213:
    ScrCmd_2EB 0x8003
    ScrCmd_2E9 0x8000, 0x8002, 0x8003
    GoTo _0232
    End

_0227:
    ScrCmd_02C 16
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0232:
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_023D:
    ScrCmd_02C 3
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0248:
    ScrCmd_02C 4
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0253:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 18
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End
