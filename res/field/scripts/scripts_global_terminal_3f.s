#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0103
    ScriptEntry _0036
    ScriptEntry _0049
    ScriptEntry _005C
    ScriptEntry _006F
    ScriptEntry _0082
    ScriptEntry _0095
    ScriptEntry _00A8
    ScriptEntry _00BB
    ScriptEntry _00CE
    ScriptEntry _00E1
    ScriptEntry _00F2
    ScriptEntry _0105
    .short 0xFD13

_0036:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0049:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_005C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_006F:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0082:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0095:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00A8:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 6
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00BB:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 7
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00CE:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 8
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00E1:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 9
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00F2:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 10
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0103:
    End

_0105:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    SetVar 0x8005, 2
    GoTo _0119
    End

_0119:
    Message 11
    ScrCmd_041 31, 11, 0, 1, 0x800C
    ScrCmd_33A 1
    ScrCmd_042 13, 0
    ScrCmd_042 14, 1
    ScrCmd_042 15, 2
    ScrCmd_043
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, 0, _0163
    GoToIfEq 0x8008, 1, _0184
    GoTo _015D
    End

_015D:
    CloseMessage
    ReleaseAll
    End

_0163:
    CallCommonScript 0x7D6
    SetVar 0x800C, 0x4000
    GoToIfEq 0x800C, 0, _015D
    CloseMessage
    CallCommonScript 0x802
    ReleaseAll
    End

_0184:
    Message 12
    GoTo _0119

    .byte 2
    .byte 0
    .byte 0
