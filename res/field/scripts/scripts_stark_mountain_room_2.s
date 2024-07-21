#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0031
    ScriptEntry _00FC
    ScriptEntry _0154
    ScriptEntry _021C
    ScriptEntry _022F
    ScriptEntry _001A
    .short 0xFD13

_001A:
    GoToIfLt 0x4094, 2, _0029
    End

_0029:
    SetVar 0x4094, 0
    End

_0031:
    LockAll
    SetPlayerBike 0
    CallIfUnset 221, _007D
    CallIfSet 221, _00B7
    BufferPlayerName 0
    PlaySound SEQ_GONIN
    Message 1
    WaitSound
    SetFlag 221
    SetVar 0x4094, 1
    Message 2
    WaitABXPadPress
    CloseMessage
    SetVar 0x403F, 0x263
    ScrCmd_161
    ScrCmd_06D 14, 48
    ReleaseAll
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
    BufferPlayerName 0
    Message 0
    CloseMessage
    Return

_00B7:
    ScrCmd_186 14, 42, 68
    ScrCmd_189 14, 0
    ScrCmd_188 14, 14
    ApplyMovement 14, _0144
    WaitMovement
    Message 3
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
    LockAll
    ApplyMovement 14, _014C
    ApplyMovement 0xFF, _0134
    WaitMovement
    Message 4
    CloseMessage
    SetVar 0x4094, 0
    ScrCmd_162
    ScrCmd_06D 14, 15
    ApplyMovement 14, _013C
    WaitMovement
    ReleaseAll
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
    LockAll
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
    BufferPlayerName 0
    Message 5
    CloseMessage
    ApplyMovement 14, _0214
    WaitMovement
    WaitFanfare SEQ_SE_CONFIRM
    PlayFanfare SEQ_SE_DP_KAIDAN2
    ScrCmd_065 14
    WaitFanfare SEQ_SE_DP_KAIDAN2
    SetVar 0x4094, 2
    ReleaseAll
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
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 6
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_022F:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 7
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
