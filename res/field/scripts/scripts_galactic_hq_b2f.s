#include "macros/scrcmd.inc"

    .data

    ScriptEntry _000E
    ScriptEntry _0021
    ScriptEntry _0034
    .short 0xFD13

_000E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0021:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0034:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CheckItem ITEM_GALACTIC_KEY, 1, 0x800C
    GoToIfEq 0x800C, 1, _005C
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_005C:
    Message 3
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _007F
    GoToIfEq 0x800C, 1, _00B3
    End

_007F:
    BufferPlayerName 0
    Message 4
    WaitABXPadPress
    WaitFanfare SEQ_SE_CONFIRM
    PlayFanfare SEQ_SE_DP_DOOR10
    ApplyMovement 6, _00BC
    ApplyMovement 7, _00C4
    WaitMovement
    SetFlag 0x227
    ScrCmd_065 6
    ScrCmd_065 7
    CloseMessage
    ReleaseAll
    End

_00B3:
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
_00BC:
    MoveAction_012
    EndMovement

    .balign 4, 0
_00C4:
    MoveAction_013
    EndMovement
