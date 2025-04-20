#include "macros/scrcmd.inc"
#include "res/text/bank/stark_mountain_room_2.h"

    .data

    ScriptEntry _0031
    ScriptEntry _00FC
    ScriptEntry _0154
    ScriptEntry _021C
    ScriptEntry _022F
    ScriptEntry _001A
    ScriptEntryEnd

_001A:
    GoToIfLt VAR_UNK_0x4094, 2, _0029
    End

_0029:
    SetVar VAR_UNK_0x4094, 0
    End

_0031:
    LockAll
    SetPlayerBike FALSE
    CallIfUnset FLAG_UNK_0x00DD, _007D
    CallIfSet FLAG_UNK_0x00DD, _00B7
    BufferPlayerName 0
    PlaySound SEQ_GONIN
    Message 1
    WaitSound
    SetFlag FLAG_UNK_0x00DD
    SetVar VAR_UNK_0x4094, 1
    Message 2
    WaitABXPadPress
    CloseMessage
    SetVar VAR_PARTNER_TRAINER_ID, TRAINER_BUCK_STARK_MOUNTAIN
    SetHasPartner
    ScrCmd_06D 14, 48
    ReleaseAll
    End

    .byte 27
    .byte 0

_007D:
    SetObjectEventPos 14, 42, 78
    ScrCmd_189 14, 0
    ScrCmd_188 14, 14
    ClearFlag FLAG_UNK_0x01DA
    AddObject 14
    ApplyMovement 14, _00DC
    WaitMovement
    ApplyMovement LOCALID_PLAYER, _00EC
    WaitMovement
    BufferPlayerName 0
    Message 0
    CloseMessage
    Return

_00B7:
    SetObjectEventPos 14, 42, 68
    ScrCmd_189 14, 0
    ScrCmd_188 14, 14
    ApplyMovement 14, _0144
    WaitMovement
    Message 3
    Return

    .balign 4, 0
_00DC:
    MoveAction_012 8
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
    MoveAction_033
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
    ApplyMovement LOCALID_PLAYER, _0134
    WaitMovement
    Message 4
    CloseMessage
    SetVar VAR_UNK_0x4094, 0
    ClearHasPartner
    ScrCmd_06D 14, 15
    ApplyMovement 14, _013C
    WaitMovement
    ReleaseAll
    End

    .balign 4, 0
_0134:
    MoveAction_032
    EndMovement

    .balign 4, 0
_013C:
    MoveAction_012
    EndMovement

    .balign 4, 0
_0144:
    MoveAction_033
    EndMovement

    .balign 4, 0
_014C:
    MoveAction_033
    EndMovement

_0154:
    LockAll
    ClearHasPartner
    ScrCmd_06D 14, 15
    GetPlayerDir VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _0177
    GoTo _0191
    End

_0177:
    ApplyMovement 14, _01F0
    ApplyMovement LOCALID_PLAYER, _01E4
    WaitMovement
    GoTo _01AB
    End

_0191:
    ApplyMovement 14, _01FC
    ApplyMovement LOCALID_PLAYER, _01E4
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
    RemoveObject 14
    WaitFanfare SEQ_SE_DP_KAIDAN2
    SetVar VAR_UNK_0x4094, 2
    ReleaseAll
    End

    .balign 4, 0
_01E4:
    MoveAction_014
    MoveAction_035
    EndMovement

    .balign 4, 0
_01F0:
    MoveAction_012
    MoveAction_034
    EndMovement

    .balign 4, 0
_01FC:
    MoveAction_014
    EndMovement

    .balign 4, 0
_0204:
    MoveAction_032
    MoveAction_063 2
    MoveAction_034
    EndMovement

    .balign 4, 0
_0214:
    MoveAction_012
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
