#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0012
    ScriptEntry _0042
    ScriptEntry _0077
    ScriptEntry _00D3
    .short 0xFD13

_0012:
    SetFlag 0x9E1
    GoToIfUnset 0x15E, _002E
    GoToIfSet 0x15E, _0038
    End

_002E:
    ScrCmd_18A 1, 10, 29
    End

_0038:
    ScrCmd_18A 0, 10, 29
    End

_0042:
    SetFlag 0x9E1
    CallIfSet 142, _0069
    GoToIfUnset 0x15E, _002E
    GoToIfSet 0x15E, _0038
    End

_0069:
    SetFlag 0x1E0
    ScrCmd_065 0
    ClearFlag 142
    Return

_0077:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ScrCmd_04C 0x1E2, 0
    Message 3
    CloseMessage
    SetFlag 142
    ScrCmd_2BD 0x1E2, 50
    ClearFlag 142
    ScrCmd_0EC 0x800C
    GoToIfEq 0x800C, 0, _00CD
    ScrCmd_2BC 0x800C
    GoToIfEq 0x800C, 1, _00C2
    SetFlag 0x126
    ReleaseAll
    End

_00C2:
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00CD:
    ScrCmd_0EB
    ReleaseAll
    End

_00D3:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 0
    CloseMessage
    FacePlayer
    ApplyMovement 1, _013C
    WaitMovement
    WaitTime 30, 0x800C
    Message 1
    CloseMessage
    ScrCmd_0E5 0x198, 0
    ScrCmd_0EC 0x800C
    GoToIfEq 0x800C, 0, _0144
    Message 2
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_065 1
    SetFlag 0x13E
    SetFlag 0x984
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    ReleaseAll
    End

    .balign 4, 0
_013C:
    MoveAction_04B
    EndMovement

_0144:
    ScrCmd_0EB
    ReleaseAll
    End

    .byte 0
    .byte 0
