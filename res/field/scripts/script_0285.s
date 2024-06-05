    .include "macros/scrcmd.inc"

    .data

    .long _0031-.-4
    .long _00FC-.-4
    .long _0154-.-4
    .long _021C-.-4
    .long _022F-.-4
    .long _001A-.-4
    .short 0xFD13

_001A:
    GoToIfLt 0x4094, 2, _0029
    End

_0029:
    SetVar 0x4094, 0
    End

_0031:
    ScrCmd_060
    ScrCmd_0C8 0
    CallIfUnset 221, _007D
    CallIfSet 221, _00B7
    ScrCmd_0CD 0
    ScrCmd_04E 0x481
    ScrCmd_02C 1
    ScrCmd_04F
    SetFlag 221
    SetVar 0x4094, 1
    ScrCmd_02C 2
    ScrCmd_031
    ScrCmd_034
    SetVar 0x403F, 0x263
    ScrCmd_161
    ScrCmd_06D 14, 48
    ScrCmd_061
    End

    .byte 27
    .byte 0

_007D:
    ScrCmd_186 14, 42, 78
    ScrCmd_189 14, 0
    ScrCmd_188 14, 14
    ClearFlag 0x1DA
    ScrCmd_064 14
    ApplyMovement 14, _00DC
    WaitMovement
    ApplyMovement 0xFF, _00EC
    WaitMovement
    ScrCmd_0CD 0
    ScrCmd_02C 0
    ScrCmd_034
    Return

_00B7:
    ScrCmd_186 14, 42, 68
    ScrCmd_189 14, 0
    ScrCmd_188 14, 14
    ApplyMovement 14, _0144
    WaitMovement
    ScrCmd_02C 3
    Return

    .balign 4, 0
_00DC:
    MoveAction_00C 8
    EndMovement

    .byte 12
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_00EC:
    MoveAction_021
    EndMovement

    .byte 12
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

_00FC:
    ScrCmd_060
    ApplyMovement 14, _014C
    ApplyMovement 0xFF, _0134
    WaitMovement
    ScrCmd_02C 4
    ScrCmd_034
    SetVar 0x4094, 0
    ScrCmd_162
    ScrCmd_06D 14, 15
    ApplyMovement 14, _013C
    WaitMovement
    ScrCmd_061
    End

    .balign 4, 0
_0134:
    MoveAction_020
    EndMovement

    .balign 4, 0
_013C:
    MoveAction_00C
    EndMovement

    .balign 4, 0
_0144:
    MoveAction_021
    EndMovement

    .balign 4, 0
_014C:
    MoveAction_021
    EndMovement

_0154:
    ScrCmd_060
    ScrCmd_162
    ScrCmd_06D 14, 15
    ScrCmd_1BD 0x800C
    GoToIfEq 0x800C, 0, _0177
    GoTo _0191
    End

_0177:
    ApplyMovement 14, _01F0
    ApplyMovement 0xFF, _01E4
    WaitMovement
    GoTo _01AB
    End

_0191:
    ApplyMovement 14, _01FC
    ApplyMovement 0xFF, _01E4
    WaitMovement
    GoTo _01AB
    End

_01AB:
    ApplyMovement 14, _0204
    WaitMovement
    ScrCmd_0CD 0
    ScrCmd_02C 5
    ScrCmd_034
    ApplyMovement 14, _0214
    WaitMovement
    ScrCmd_04B 0x5DC
    ScrCmd_049 0x603
    ScrCmd_065 14
    ScrCmd_04B 0x603
    SetVar 0x4094, 2
    ScrCmd_061
    End

    .balign 4, 0
_01E4:
    MoveAction_00E
    MoveAction_023
    EndMovement

    .balign 4, 0
_01F0:
    MoveAction_00C
    MoveAction_022
    EndMovement

    .balign 4, 0
_01FC:
    MoveAction_00E
    EndMovement

    .balign 4, 0
_0204:
    MoveAction_020
    MoveAction_03F 2
    MoveAction_022
    EndMovement

    .balign 4, 0
_0214:
    MoveAction_00C
    EndMovement

_021C:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 6
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_022F:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 7
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .byte 0
    .byte 0
