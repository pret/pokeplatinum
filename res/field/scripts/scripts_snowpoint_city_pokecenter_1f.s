#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0016
    ScriptEntry _0022
    ScriptEntry _0035
    ScriptEntry _0048
    ScriptEntry _0067
    .short 0xFD13

_0016:
    SetVar 0x8007, 0
    CallCommonScript 0x7D2
    End

_0022:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0035:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0048:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    WaitFanfare SEQ_SE_CONFIRM
    ScrCmd_04C 54, 0
    Message 4
    ScrCmd_04D
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0067:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ScrCmd_15B 6, 0x800C
    GoToIfEq 0x800C, 1, _00EC
    ScrCmd_1BD 0x8000
    CallIfEq 0x8000, 0, _00C8
    CallIfEq 0x8000, 1, _00C8
    CallIfEq 0x8000, 2, _00D4
    CallIfEq 0x8000, 3, _00E0
    BufferPlayerName 0
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00C8:
    ApplyMovement 4, _00FC
    WaitMovement
    Return

_00D4:
    ApplyMovement 4, _0104
    WaitMovement
    Return

_00E0:
    ApplyMovement 4, _010C
    WaitMovement
    Return

_00EC:
    BufferPlayerName 0
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
_00FC:
    MoveAction_029 2
    EndMovement

    .balign 4, 0
_0104:
    MoveAction_02B 2
    EndMovement

    .balign 4, 0
_010C:
    MoveAction_02A 2
    EndMovement
