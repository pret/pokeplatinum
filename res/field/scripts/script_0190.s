    .include "macros/scrcmd.inc"

    .data

    .long _000A-.-4
    .long _00B7-.-4
    .short 0xFD13

_000A:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    CheckFlag 177
    GoToIf 1, _00AC
    ScrCmd_0EA 0x106
    ScrCmd_02C 0
    ScrCmd_034
    CheckFlag 214
    CallIf 0, _007A
    CheckFlag 214
    CallIf 1, _0082
    ScrCmd_0EC 0x800C
    CompareVarToValue 0x800C, 0
    GoToIf 1, _00A6
    SetFlag 177
    ScrCmd_049 0x61A
    ScrCmd_065 2
    CheckFlag 214
    CallIf 0, _008A
    CheckFlag 214
    CallIf 1, _0098
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_007A:
    ScrCmd_0E5 0x106, 0
    Return

_0082:
    ScrCmd_0E5 0x363, 0
    Return

_008A:
    ScrCmd_1CD 11, 0x106, 0, 0, 0
    Return

_0098:
    ScrCmd_1CD 11, 0x363, 0, 0, 0
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
    ApplyMovement 0xFF, _00DC
    WaitMovement
    ScrCmd_049 0x61A
    ClearFlag 0x283
    ScrCmd_064 1
    SetVar 0x4001, 1
    ScrCmd_061
    End

    .balign 4, 0
_00DC:
    MoveAction_00C 2
    EndMovement
