#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0022
    ScriptEntry _0035
    ScriptEntry _0048
    ScriptEntry _005B
    ScriptEntry _0071
    ScriptEntry _0087
    ScriptEntry _0098
    ScriptEntry _00A9
    .short 0xFD13

_0022:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0035:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0048:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_005B:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CallCommonScript 0x7E3
    ScrCmd_035
    ScrCmd_148 8
    ReleaseAll
    End

_0071:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CallCommonScript 0x7E3
    ScrCmd_035
    ScrCmd_148 9
    ReleaseAll
    End

_0087:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0098:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 6
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00A9:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet 0x129, _0109
    ScrCmd_0DE 0x800C
    CallIfEq 0x800C, 0x183, _0119
    CallIfEq 0x800C, 0x186, _0121
    CallIfEq 0x800C, 0x189, _0129
    SetVar 0x4107, 0x8004
    ScrCmd_343 0, 0x8004
    Message 3
    SetVar 0x8005, 1
    CallCommonScript 0x7DF
    SetFlag 0x129
    CloseMessage
    ReleaseAll
    End

_0109:
    ScrCmd_261 0, 0x4107
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0119:
    SetVar 0x8004, 94
    Return

_0121:
    SetVar 0x8004, 92
    Return

_0129:
    SetVar 0x8004, 93
    Return

    .byte 0
    .byte 0
    .byte 0
