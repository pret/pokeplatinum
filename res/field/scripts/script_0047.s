    .include "macros/scrcmd.inc"

    .data

    .long _000E-.-4
    .long _0093-.-4
    .long _0160-.-4
    .short 0xFD13

_000E:
    SetFlag 0x241
    GoToIfUnset 0x158, _001F
    End

_001F:
    GoToIfSet 0x964, _002C
    End

_002C:
    ScrCmd_22D 2, 0x4000
    GoToIfEq 0x4000, 1, _0040
    End

_0040:
    ScrCmd_07E 0x1C6, 1, 0x4000
    GoToIfEq 0x4000, 1, _0057
    End

_0057:
    ScrCmd_28B 0, 0x4000
    GoToIfEq 0x4000, 1, _006B
    End

_006B:
    GoToIfSet 0x12C, _0078
    End

_0078:
    GoToIfGe 0x40F8, 2, _0091
    ClearFlag 0x241
    SetVar 0x40F8, 1
    End

_0091:
    End

_0093:
    ScrCmd_060
    ScrCmd_003 30, 0x800C
    ScrCmd_02C 0
    ScrCmd_034
    ApplyMovement 0, _0148
    ApplyMovement 0xFF, _0130
    WaitMovement
    ScrCmd_003 15, 0x800C
    ScrCmd_0CD 0
    ScrCmd_02C 1
    ScrCmd_034
    ScrCmd_049 0x636
    SetFlag 0x13C
    SetFlag 0x241
    SetVar 0x40F8, 2
    ScrCmd_0BC 6, 3, 0, 0
    ScrCmd_0BD
    ScrCmd_0BC 6, 3, 1, 0
    ScrCmd_0BD
    ScrCmd_0BC 6, 3, 0, 0
    ScrCmd_0BD
    ScrCmd_0BC 6, 3, 1, 0
    ScrCmd_0BD
    ScrCmd_0BC 6, 6, 0, 0
    ScrCmd_0BD
    ScrCmd_003 120, 0x800C
    ScrCmd_0BE 0x140, 0, 152, 0x115, 1
    ScrCmd_0BC 6, 6, 1, 0
    ScrCmd_0BD
    ScrCmd_061
    End

    .balign 4, 0
_0130:
    MoveAction_00C
    MoveAction_00F 3
    MoveAction_00C
    MoveAction_00F
    MoveAction_021
    EndMovement

    .balign 4, 0
_0148:
    MoveAction_00F 3
    MoveAction_00C 2
    MoveAction_021
    MoveAction_03F 2
    MoveAction_023
    EndMovement

_0160:
    ScrCmd_060
    Call _0184
    ScrCmd_2B5 33, 58, 0x2CA
    ScrCmd_04E 0x48E
    ScrCmd_04F
    ScrCmd_0CD 0
    ScrCmd_02C 2
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0184:
    GoToIfSet 0x158, _0197
    SetVar 0x40F8, 0
    Return

_0197:
    SetVar 0x40F8, 3
    Return

    .byte 0
