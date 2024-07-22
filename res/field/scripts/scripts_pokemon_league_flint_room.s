#include "macros/scrcmd.inc"

    .data

    ScriptEntry _000A
    ScriptEntry _0138
    .short 0xFD13

_000A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet 178, _00D2
    ScrCmd_0EA 0x107
    CallIfUnset 0x964, _00F0
    CallIfSet 0x964, _0104
    CloseMessage
    CallIfUnset 214, _00A0
    CallIfSet 214, _00A8
    ScrCmd_0EC 0x800C
    GoToIfEq 0x800C, 0, _00CC
    SetFlag 178
    PlayFanfare SEQ_SE_DP_KI_GASYAN
    ScrCmd_065 1
    CallIfUnset 214, _00B0
    CallIfSet 214, _00BE
    CallIfUnset 0x964, _0109
    CallIfSet 0x964, _010E
    WaitABXPadPress
    CloseMessage
    ReleaseAll
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
    ReleaseAll
    End

_00D2:
    CallIfUnset 0x964, _0113
    CallIfSet 0x964, _0118
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00F0:
    Message 0
    CloseMessage
    ApplyMovement 0, _0120
    WaitMovement
    Message 1
    Return

_0104:
    Message 4
    Return

_0109:
    Message 2
    Return

_010E:
    Message 5
    Return

_0113:
    Message 3
    Return

_0118:
    Message 6
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
    LockAll
    ApplyMovement 0xFF, _015C
    WaitMovement
    PlayFanfare SEQ_SE_DP_KI_GASYAN
    ClearFlag 0x284
    ScrCmd_064 2
    SetVar 0x4001, 1
    ReleaseAll
    End

    .balign 4, 0
_015C:
    MoveAction_00C 2
    EndMovement
