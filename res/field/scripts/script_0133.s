    .include "macros/scrcmd.inc"

    .data

    .long _000A-.-4
    .long _0125-.-4
    .short 0xFD13

_000A:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_33C 4, 93
    CheckFlag 233
    ScrCmd_01C 0, _003D
    ScrCmd_07E 93, 1, 0x800C
    CompareVarToValue 0x800C, 0
    ScrCmd_01C 1, _005F
    GoTo _006A

_003D:
    SetFlag 233
    ScrCmd_02C 0
    ScrCmd_07E 93, 1, 0x800C
    CompareVarToValue 0x800C, 0
    ScrCmd_01C 1, _005F
    GoTo _006A

_005F:
    ScrCmd_02C 2
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_006A:
    ScrCmd_02C 1
    ScrCmd_02C 3
    ScrCmd_034
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_191
    ScrCmd_193 0x8005
    ScrCmd_0A1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    CompareVarToValue 0x8005, 0xFF
    ScrCmd_01C 1, _005F
    ScrCmd_198 0x8005, 0x800C
    CompareVarToValue 0x800C, 0
    ScrCmd_01C 1, _011A
    ScrCmd_21F 0x800C, 0x8005
    CompareVarToValue 0x800C, 0
    ScrCmd_01C 1, _010F
    ScrCmd_02C 4
    ScrCmd_034
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_221 0x8005
    ScrCmd_223 0x800C
    ScrCmd_0A1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    CompareVarToValue 0x800C, 0xFF
    ScrCmd_01C 1, _005F
    ScrCmd_07C 93, 1, 0x800C
    ScrCmd_0CD 3
    ScrCmd_02C 16
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_010F:
    ScrCmd_02C 5
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_011A:
    ScrCmd_02C 6
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0125:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 17
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End
