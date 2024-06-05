    .include "macros/scrcmd.inc"

    .data

    .long _000A-.-4
    .long _0025-.-4
    .short 0xFD13

_000A:
    GoToIfSet 142, _0017
    End

_0017:
    SetFlag 0x243
    ScrCmd_065 0
    ClearFlag 142
    End

_0025:
    ScrCmd_060
    ScrCmd_049 0x5DC
    ScrCmd_04B 0x5DC
    GoToIfSet 0x11A, _0081
    ScrCmd_26B 0x800C
    GoToIfEq 0x800C, 0, _0073
    SetFlag 0x11A
    ScrCmd_0CD 0
    ScrCmd_02C 1
    ScrCmd_034
    ScrCmd_063 0
    ScrCmd_269 0, 8, 90, 3, 0
    ScrCmd_062 0
    GoTo _0081
    End

_0073:
    ScrCmd_0CD 0
    ScrCmd_02C 0
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0081:
    ScrCmd_02C 2
    ScrCmd_034
    ScrCmd_04C 0x1E6, 0
    ScrCmd_04D
    SetFlag 142
    ScrCmd_2BD 0x1E6, 1
    ClearFlag 142
    ScrCmd_0EC 0x800C
    GoToIfEq 0x800C, 0, _00D1
    ScrCmd_2BC 0x800C
    GoToIfEq 0x800C, 1, _00C6
    SetFlag 0x11B
    ScrCmd_061
    End

_00C6:
    ScrCmd_02C 3
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00D1:
    ScrCmd_0EB
    ScrCmd_061
    End

    .byte 0
