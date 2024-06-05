    .include "macros/scrcmd.inc"

    .data

    .long _000A-.-4
    .long _0138-.-4
    .short 0xFD13

_000A:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    GoToIfSet 178, _00D2
    ScrCmd_0EA 0x107
    CallIfUnset 0x964, _00F0
    CallIfSet 0x964, _0104
    ScrCmd_034
    CallIfUnset 214, _00A0
    CallIfSet 214, _00A8
    ScrCmd_0EC 0x800C
    GoToIfEq 0x800C, 0, _00CC
    SetFlag 178
    ScrCmd_049 0x61A
    ScrCmd_065 1
    CallIfUnset 214, _00B0
    CallIfSet 214, _00BE
    CallIfUnset 0x964, _0109
    CallIfSet 0x964, _010E
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
    CallIfUnset 0x964, _0113
    CallIfSet 0x964, _0118
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00F0:
    ScrCmd_02C 0
    ScrCmd_034
    ApplyMovement 0, _0120
    WaitMovement
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
    ApplyMovement 0xFF, _015C
    WaitMovement
    ScrCmd_049 0x61A
    ClearFlag 0x284
    ScrCmd_064 2
    SetVar 0x4001, 1
    ScrCmd_061
    End

    .balign 4, 0
_015C:
    MoveAction_00C 2
    EndMovement
