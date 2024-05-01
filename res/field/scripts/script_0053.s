    .include "macros/scrcmd.inc"

    .data

    .long _001E-.-4
    .long _002A-.-4
    .long _003D-.-4
    .long _0050-.-4
    .long _0110-.-4
    .long _0139-.-4
    .long _014C-.-4
    .short 0xFD13

_001E:
    ScrCmd_028 0x8007, 3
    ScrCmd_014 0x7D2
    End

_002A:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 0
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_003D:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0050:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    CheckFlag 112
    GoToIf 1, _006C
    ScrCmd_02C 2
    GoTo _0078

_006C:
    ScrCmd_0D9 0
    ScrCmd_02C 7
    GoTo _0078

_0078:
    ScrCmd_02C 3
    ScrCmd_154
    ScrCmd_040 1, 1, 0, 1, 0x800C
    ScrCmd_042 50, 0
    ScrCmd_042 51, 1
    ScrCmd_042 52, 2
    ScrCmd_042 53, 3
    ScrCmd_042 43, 4
    ScrCmd_043
    ScrCmd_029 0x8004, 0x800C
    ScrCmd_029 0x8008, 0x800C
    CompareVarToValue 0x8008, 4
    GoToIf 1, _00E9
    CompareVarToValue 0x8008, 0xFFFE
    GoToIf 1, _00E9
    ScrCmd_155 0x8004, 0x8005
    ScrCmd_344 0, 0x8005
    ScrCmd_346 0
    ScrCmd_02C 4
    ScrCmd_03E 0x800C
    CompareVarToValue 0x800C, 0
    GoToIf 1, _00F4
    GoTo _0078

_00E9:
    ScrCmd_02C 6
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00F4:
    ScrCmd_344 0, 0x8005
    ScrCmd_02C 5
    SetFlag 112
    ScrCmd_29C 0x8004, 0x8005
    ScrCmd_156 0x8005
    GoTo _00E9

_0110:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    CheckFlag 0x964
    GoToIf 1, _012E
    ScrCmd_02C 8
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_012E:
    ScrCmd_02C 9
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0139:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 10
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_014C:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 11
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .byte 0
