#include "macros/scrcmd.inc"
#include "res/text/bank/sendoff_spring.h"

    .data

    ScriptEntry _0021
    ScriptEntry _00C0
    ScriptEntry _000E
    ScriptEntryEnd

_000E:
    CallIfSet FLAG_UNK_0x0121, _001B
    End

_001B:
    ClearFlag FLAG_UNK_0x0278
    Return

_0021:
    LockAll
    ScrCmd_328 0
    ScrCmd_2B5 0x10A, 0x2FA, 0x2CA
    Message 0
    CloseMessage
    ApplyMovement 0, _00A0
    WaitMovement
    ApplyMovement LOCALID_PLAYER, _0098
    WaitMovement
    Message 1
    CloseMessage
    ApplyMovement 0, _00B8
    WaitMovement
    BufferPlayerName 0
    Message 2
    WaitABXPadPress
    CloseMessage
    SetVar 0x40AA, 2
    SetVar 0x40A6, 2
    SetFlag FLAG_UNK_0x01C7
    ClearFlag FLAG_UNK_0x0132
    SetFlag FLAG_UNK_0x028F
    SetFlag FLAG_UNK_0x0295
    SetFlag FLAG_UNK_0x029F
    SetFlag FLAG_ALT_MUSIC_GALACTIC_HQ_1F
    ClearFlag FLAG_UNK_0x0292
    SetFlag FLAG_GALACTIC_LEFT_LAKE_VALOR
    SetFlag FLAG_UNK_0x0295
    ReleaseAll
    End

    .balign 4, 0
_0098:
    MoveAction_034
    EndMovement

    .balign 4, 0
_00A0:
    MoveAction_038
    MoveAction_063
    MoveAction_039
    MoveAction_063 2
    MoveAction_036
    EndMovement

    .balign 4, 0
_00B8:
    MoveAction_035
    EndMovement

_00C0:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfGe 0x40AA, 3, _00E0
    Message 3
    GoTo _00EB
    End

_00E0:
    Message 4
    GoTo _00EB
    End

_00EB:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
