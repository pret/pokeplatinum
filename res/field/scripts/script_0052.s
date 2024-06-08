    .include "macros/scrcmd.inc"

    .data

    ScriptEntry _000E
    ScriptEntry _011F
    ScriptEntry _0153
    .short 0xFD13

_000E:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_15B 0, 0x800C
    GoToIfEq 0x800C, 1, _0103
    ScrCmd_1CD 9, 47, 0, 0, 0
    ScrCmd_02C 0
    ScrCmd_034
    ScrCmd_0E5 246, 0
    ScrCmd_0EC 0x800C
    GoToIfEq 0x800C, 0, _0119
    ScrCmd_02C 1
    ScrCmd_0CD 0
    ScrCmd_02C 2
    ScrCmd_04E 0x489
    ScrCmd_04F
    SetTrainerFlag 244
    SetTrainerFlag 245
    ScrCmd_15C 0
    ScrCmd_260 23
    SetTrainerFlag 244
    SetTrainerFlag 245
    SetFlag 0x23F
    SetVar 0x40F0, 1
    SetVar 0x4076, 1
    SetVar 0x4079, 2
    ScrCmd_1CD 10, 47, 246, 0, 0
    SetVar 0x4077, 3
    ClearFlag 0x17A
    ClearFlag 0x19D
    ClearFlag 0x19C
    SetFlag 0x198
    ScrCmd_02C 3
    GoTo _00BB
    End

_00BB:
    SetVar 0x8004, 0x193
    SetVar 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _00F9
    ScrCmd_014 0x7FC
    SetFlag 117
    ScrCmd_0D1 0, 0x8004
    ScrCmd_0D3 1, 0x8004
    ScrCmd_02C 4
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00F9:
    ScrCmd_014 0x7E1
    ScrCmd_034
    ScrCmd_061
    End

_0103:
    GoToIfUnset 117, _00BB
    ScrCmd_02C 5
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0119:
    ScrCmd_0EB
    ScrCmd_061
    End

_011F:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_15B 0, 0x800C
    GoToIfEq 0x800C, 1, _0145
    ScrCmd_02C 6
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0145:
    ScrCmd_0CD 0
    ScrCmd_02C 7
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0153:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_15B 0, 0x800C
    GoToIfEq 0x800C, 1, _017D
    ScrCmd_0CE 0
    ScrCmd_0CE 1
    ScrCmd_02C 8
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_017D:
    ScrCmd_0CE 0
    ScrCmd_0CD 1
    ScrCmd_0CE 2
    ScrCmd_02C 9
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .byte 0
    .byte 0
    .byte 0
