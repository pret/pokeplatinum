    .include "macros/scrcmd.inc"

    .data

    .long _000A-.-4
    .long _0138-.-4
    .short 0xFD13

_000A:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    CheckFlag 178
    ScrCmd_01C 1, _00D2
    ScrCmd_0EA 0x107
    CheckFlag 0x964
    ScrCmd_01D 0, _00F0
    CheckFlag 0x964
    ScrCmd_01D 1, _0104
    ScrCmd_034
    CheckFlag 214
    ScrCmd_01D 0, _00A0
    CheckFlag 214
    ScrCmd_01D 1, _00A8
    ScrCmd_0EC 0x800C
    CompareVarToValue 0x800C, 0
    ScrCmd_01C 1, _00CC
    SetFlag 178
    ScrCmd_049 0x61A
    ScrCmd_065 1
    CheckFlag 214
    ScrCmd_01D 0, _00B0
    CheckFlag 214
    ScrCmd_01D 1, _00BE
    CheckFlag 0x964
    ScrCmd_01D 0, _0109
    CheckFlag 0x964
    ScrCmd_01D 1, _010E
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00A0:
    ScrCmd_0E5 0x107, 0
    Return

_00A8:
    ScrCmd_0E5 0x364, 0
    Return

_00B0:
    ScrCmd_1CD 11, 0x107, 0, 0, 0
    Return

_00BE:
    ScrCmd_1CD 11, 0x364, 0, 0, 0
    Return

_00CC:
    ScrCmd_0EB
    ScrCmd_061
    End

_00D2:
    CheckFlag 0x964
    ScrCmd_01D 0, _0113
    CheckFlag 0x964
    ScrCmd_01D 1, _0118
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00F0:
    ScrCmd_02C 0
    ScrCmd_034
    ScrCmd_05E 0, _0120
    ScrCmd_05F
    ScrCmd_02C 1
    Return

_0104:
    ScrCmd_02C 4
    Return

_0109:
    ScrCmd_02C 2
    Return

_010E:
    ScrCmd_02C 5
    Return

_0113:
    ScrCmd_02C 3
    Return

_0118:
    ScrCmd_02C 6
    Return

    .balign 4, 0
_0120:
    MoveAction_047
    MoveAction_021 3
    MoveAction_025 4
    MoveAction_029 2
    MoveAction_048
    EndMovement

_0138:
    ScrCmd_060
    ScrCmd_05E 0xFF, _015C
    ScrCmd_05F
    ScrCmd_049 0x61A
    ClearFlag 0x284
    ScrCmd_064 2
    ScrCmd_028 0x4001, 1
    ScrCmd_061
    End

    .balign 4, 0
_015C:
    MoveAction_00C 2
    EndMovement
