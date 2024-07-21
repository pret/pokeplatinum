#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0042
    ScriptEntry _01C3
    ScriptEntry _01D6
    ScriptEntry _01E9
    ScriptEntry _0016
    .short 0xFD13

_0016:
    ScrCmd_238 6, 0x4000
    GoToIfEq 0x4000, 0, _003C
    GoToIfLt 0x4077, 2, _003C
    ClearFlag 0x212
    End

_003C:
    SetFlag 0x212
    End

_0042:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    ScrCmd_15D 0x8000
    GoToIfEq 0x8000, 0, _0181
    ScrCmd_134 2, 0x800C
    GoToIfEq 0x800C, 0, _00C5
    ScrCmd_134 12, 0x800C
    GoToIfEq 0x800C, 0, _00DC
    ScrCmd_134 13, 0x800C
    GoToIfEq 0x800C, 0, _00F3
    ScrCmd_134 15, 0x800C
    GoToIfEq 0x800C, 0, _010A
    CheckItem ITEM_POKE_RADAR, 1, 0x800C
    GoToIfEq 0x800C, 1, _01B8
    GoTo _01AD

_00C5:
    ScrCmd_15D 0x800C
    GoToIfGe 0x800C, 1, _0121
    GoTo _0181

_00DC:
    ScrCmd_15D 0x800C
    GoToIfGe 0x800C, 3, _0139
    GoTo _018C

_00F3:
    ScrCmd_15D 0x800C
    GoToIfGe 0x800C, 5, _0151
    GoTo _0197

_010A:
    ScrCmd_15D 0x800C
    GoToIfGe 0x800C, 7, _0169
    GoTo _01A2

_0121:
    Message 2
    SetVar 0x8004, 2
    CallCommonScript 0x7D9
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0139:
    Message 5
    SetVar 0x8004, 12
    CallCommonScript 0x7D9
    Message 6
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0151:
    Message 8
    SetVar 0x8004, 13
    CallCommonScript 0x7D9
    Message 9
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0169:
    Message 11
    SetVar 0x8004, 15
    CallCommonScript 0x7D9
    Message 12
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0181:
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_018C:
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0197:
    Message 7
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01A2:
    Message 10
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01AD:
    Message 13
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01B8:
    Message 14
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01C3:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 15
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01D6:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 16
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01E9:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 17
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End
