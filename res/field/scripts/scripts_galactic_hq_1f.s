#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0022
    ScriptEntry _0028
    ScriptEntry _0051
    ScriptEntry _007A
    ScriptEntry _00A3
    ScriptEntry _00DF
    ScriptEntry _0174
    ScriptEntry _00CC
    .short 0xFD13

_0022:
    SetFlag 0x9DD
    End

_0028:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet 0x15E, _0046
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0046:
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0051:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet 0x15E, _006F
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_006F:
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_007A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet 0x15E, _0098
    Message 6
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0098:
    Message 7
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00A3:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet 0x15E, _00C1
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00C1:
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00CC:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 8
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00DF:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CheckItem ITEM_GALACTIC_KEY, 1, 0x800C
    GoToIfEq 0x800C, 1, _0107
    Message 9
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0107:
    Message 10
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _012A
    GoToIfEq 0x800C, 1, _015E
    End

_012A:
    BufferPlayerName 0
    Message 11
    WaitABXPadPress
    WaitFanfare SEQ_SE_CONFIRM
    PlayFanfare SEQ_SE_DP_DOOR10
    ApplyMovement 5, _0164
    ApplyMovement 6, _016C
    WaitMovement
    SetFlag 0x224
    ScrCmd_065 5
    ScrCmd_065 6
    CloseMessage
    ReleaseAll
    End

_015E:
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
_0164:
    MoveAction_012
    EndMovement

    .balign 4, 0
_016C:
    MoveAction_013
    EndMovement

_0174:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 12
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
    .byte 0
