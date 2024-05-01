    .include "macros/scrcmd.inc"

    .data

    .long _000A-.-4
    .long _00B7-.-4
    .short 0xFD13

_000A:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    CheckFlag 176
    ScrCmd_01C 1, _00AC
    ScrCmd_0EA 0x105
    ScrCmd_02C 0
    ScrCmd_034
    CheckFlag 214
    ScrCmd_01D 0, _007A
    CheckFlag 214
    ScrCmd_01D 1, _0082
    ScrCmd_0EC 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _00A6
    SetFlag 176
    ScrCmd_049 0x61A
    ScrCmd_065 2
    CheckFlag 214
    ScrCmd_01D 0, _008A
    CheckFlag 214
    ScrCmd_01D 1, _0098
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_007A:
    ScrCmd_0E5 0x105, 0
    Return

_0082:
    ScrCmd_0E5 0x362, 0
    Return

_008A:
    ScrCmd_1CD 11, 0x105, 0, 0, 0
    Return

_0098:
    ScrCmd_1CD 11, 0x362, 0, 0, 0
    Return

_00A6:
    ScrCmd_0EB
    ScrCmd_061
    End

_00AC:
    ScrCmd_02C 2
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00B7:
    ScrCmd_060
    ScrCmd_05E 0xFF, _00DC
    ScrCmd_05F
    ScrCmd_049 0x61A
    ClearFlag 0x282
    ScrCmd_064 1
    ScrCmd_028 0x4001, 1
    ScrCmd_061
    End

    .balign 4, 0
_00DC:
    MoveAction_00C 2
    EndMovement
