    .include "macros/scrcmd.inc"

    .data

    .long _000E-.-4
    .long _0014-.-4
    .long _00E7-.-4
    .short 0xFD13

_000E:
    SetFlag 0x9F1
    End

_0014:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    CheckFlag 245
    GoToIf 1, _00DC
    CheckFlag 246
    GoToIf 1, _0046
    ScrCmd_02C 0
    ScrCmd_22B
    SetFlag 246
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0046:
    ScrCmd_02C 2
    ScrCmd_03E 0x800C
    CompareVarToValue 0x800C, 0
    GoToIf 1, _0060
    GoTo _00D1

_0060:
    ScrCmd_034
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_2A5
    ScrCmd_193 0x800C
    ScrCmd_0A1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    CompareVarToValue 0x800C, 0xFF
    GoToIf 1, _00D1
    ScrCmd_226 3
    ScrCmd_029 0x8004, 0x800C
    ScrCmd_198 0x8004, 0x8005
    ScrCmd_228 0x800C
    CompareVarToVar 0x8005, 0x800C
    GoToIf 5, _00C4
    ScrCmd_229 0x8004
    ScrCmd_22A
    SetFlag 245
    ScrCmd_02C 3
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00C4:
    ScrCmd_22A
    ScrCmd_02C 4
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00D1:
    ScrCmd_02C 5
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00DC:
    ScrCmd_02C 6
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00E7:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 7
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End
