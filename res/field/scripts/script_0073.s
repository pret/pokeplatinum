    .include "macros/scrcmd.inc"

    .data

    .long _001E-.-4
    .long _0022-.-4
    .long _0056-.-4
    .long _0094-.-4
    .long _01C9-.-4
    .long _021C-.-4
    .long _027B-.-4
    .short 0xFD13

_001E:
    ScrCmd_2C9
    End

_0022:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_15B 1, 0x800C
    CompareVarToValue 0x800C, 1
    GoToIf 1, _0048
    ScrCmd_02C 13
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0048:
    ScrCmd_0CD 0
    ScrCmd_02C 14
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0056:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_15B 1, 0x800C
    CompareVarToValue 0x800C, 1
    GoToIf 1, _0080
    ScrCmd_0CE 0
    ScrCmd_0CE 1
    ScrCmd_02C 15
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0080:
    ScrCmd_0CE 0
    ScrCmd_0CD 1
    ScrCmd_0CE 2
    ScrCmd_02C 16
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0094:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_15B 1, 0x800C
    CompareVarToValue 0x800C, 1
    GoToIf 1, _0161
    ScrCmd_1CD 9, 67, 0, 0, 0
    ScrCmd_02C 0
    ScrCmd_034
    ScrCmd_0E5 0x13B, 0
    ScrCmd_0EC 0x800C
    CompareVarToValue 0x800C, 0
    GoToIf 1, _01C3
    ScrCmd_02C 1
    ScrCmd_0CD 0
    ScrCmd_02C 2
    ScrCmd_04E 0x489
    ScrCmd_04F
    ScrCmd_15C 1
    ScrCmd_260 23
    ScrCmd_023 0x103
    ScrCmd_023 0x104
    ScrCmd_023 0x144
    ScrCmd_023 0x15C
    ClearFlag 0x1FC
    ScrCmd_1CD 10, 67, 0x13B, 0, 0
    ScrCmd_02C 3
    GoTo _0177
    End

_0119:
    ScrCmd_028 0x8004, 0x19D
    ScrCmd_028 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    CompareVarToValue 0x800C, 0
    GoToIf 1, _0157
    ScrCmd_014 0x7FC
    SetFlag 116
    ScrCmd_0D1 0, 0x8004
    ScrCmd_0D3 1, 0x8004
    ScrCmd_02C 4
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0157:
    ScrCmd_014 0x7E1
    ScrCmd_034
    ScrCmd_061
    End

_0161:
    CheckFlag 116
    GoToIf 0, _0119
    ScrCmd_02C 5
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0177:
    ScrCmd_028 0x8004, 0x19D
    ScrCmd_028 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    CompareVarToValue 0x800C, 0
    GoToIf 1, _01B7
    ScrCmd_014 0x7FC
    SetFlag 116
    ScrCmd_0D1 0, 0x8004
    ScrCmd_0D3 1, 0x8004
    ScrCmd_02C 4
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_2CA
    End

_01B7:
    ScrCmd_014 0x7E1
    ScrCmd_034
    ScrCmd_061
    ScrCmd_2CA
    End

_01C3:
    ScrCmd_0EB
    ScrCmd_061
    End

_01C9:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    CompareVarToValue 0x40AE, 1
    GoToIf 4, _0211
    ScrCmd_0EA 0x144
    ScrCmd_02C 6
    ScrCmd_034
    ScrCmd_0E5 0x144, 0
    ScrCmd_0EC 0x800C
    CompareVarToValue 0x800C, 0
    GoToIf 1, _01C3
    ScrCmd_02C 7
    ScrCmd_031
    ScrCmd_028 0x40AE, 1
    ScrCmd_034
    ScrCmd_061
    ScrCmd_2CA
    End

_0211:
    ScrCmd_02C 7
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_021C:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    CompareVarToValue 0x40AE, 2
    GoToIf 4, _0270
    ScrCmd_0EA 0x103
    ScrCmd_028 0x8007, 3
    Call _02DA
    ScrCmd_02C 8
    ScrCmd_034
    ScrCmd_0E5 0x103, 0
    ScrCmd_0EC 0x800C
    CompareVarToValue 0x800C, 0
    GoToIf 1, _01C3
    ScrCmd_02C 9
    ScrCmd_031
    ScrCmd_028 0x40AE, 2
    ScrCmd_034
    ScrCmd_061
    ScrCmd_2CA
    End

_0270:
    ScrCmd_02C 9
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_027B:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    CompareVarToValue 0x40AE, 3
    GoToIf 4, _02CF
    ScrCmd_0EA 0x104
    ScrCmd_028 0x8007, 4
    Call _02DA
    ScrCmd_02C 10
    ScrCmd_034
    ScrCmd_0E5 0x104, 0
    ScrCmd_0EC 0x800C
    CompareVarToValue 0x800C, 0
    GoToIf 1, _01C3
    ScrCmd_02C 11
    ScrCmd_031
    ScrCmd_028 0x40AE, 3
    ScrCmd_034
    ScrCmd_061
    ScrCmd_2CA
    End

_02CF:
    ScrCmd_02C 11
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_02DA:
    ScrCmd_1BD 0x800C
    CompareVarToValue 0x800C, 0
    CallIf 1, _0314
    CompareVarToValue 0x800C, 1
    CallIf 1, _0322
    CompareVarToValue 0x800C, 2
    CallIf 1, _0330
    CompareVarToValue 0x800C, 3
    CallIf 1, _033E
    Return

_0314:
    ScrCmd_188 0x8007, 15
    ScrCmd_189 0x8007, 1
    Return

_0322:
    ScrCmd_188 0x8007, 14
    ScrCmd_189 0x8007, 0
    Return

_0330:
    ScrCmd_188 0x8007, 17
    ScrCmd_189 0x8007, 3
    Return

_033E:
    ScrCmd_188 0x8007, 16
    ScrCmd_189 0x8007, 2
    Return
