#include "macros/scrcmd.inc"

    .data

    ScriptEntry _000E
    ScriptEntry _02BB
    ScriptEntry _02CE
    .short 0xFD13

_000E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet 220, _0216
    GoToIfSet 0xAB1, _02B0
    GoToIfUnset 216, _004A
    GoToIfEq 0x40E5, 0, _0057
    GoTo _0081

_004A:
    SetFlag 216
    Message 0
    GoTo _0060

_0057:
    Message 1
    GoTo _0060

_0060:
    ScrCmd_218 0x800C
    SetVar 0x40E5, 0x800C
    ScrCmd_219 1
    ScrCmd_0DA 0, 0x40E5, 0, 0
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0081:
    Message 3
    ScrCmd_21A 0x800C
    GoToIfEq 0x800C, 0, _029F
    ScrCmd_1C0 0x800C, 0x40E5
    GoToIfEq 0x800C, 0, _0283
    GoTo _00AE

_00AE:
    ScrCmd_0DA 0, 0x40E5, 0, 0
    Message 4
    ScrCmd_1B7 0x800C, 12
    CallIfEq 0x800C, 0, _0189
    CallIfEq 0x800C, 1, _0191
    CallIfEq 0x800C, 2, _0199
    CallIfEq 0x800C, 3, _01A1
    CallIfEq 0x800C, 4, _01A9
    CallIfEq 0x800C, 5, _01B1
    CallIfEq 0x800C, 6, _01B9
    CallIfEq 0x800C, 7, _01C1
    CallIfEq 0x800C, 8, _01C9
    CallIfEq 0x800C, 9, _01D1
    CallIfEq 0x800C, 10, _01D9
    CallIfEq 0x800C, 11, _01E1
    SetVar 0x8005, 3
    ScrCmd_07D 93, 1, 0x800C
    GoToIfNe 0x800C, 0, _01E9
    SetFlag 0xAB1
    GoToIfEq 0x800C, 0, _023F
    End

_0189:
    SetVar 0x8004, 2
    Return

_0191:
    SetVar 0x8004, 3
    Return

_0199:
    SetVar 0x8004, 4
    Return

_01A1:
    SetVar 0x8004, 6
    Return

_01A9:
    SetVar 0x8004, 7
    Return

_01B1:
    SetVar 0x8004, 8
    Return

_01B9:
    SetVar 0x8004, 9
    Return

_01C1:
    SetVar 0x8004, 10
    Return

_01C9:
    SetVar 0x8004, 11
    Return

_01D1:
    SetVar 0x8004, 13
    Return

_01D9:
    SetVar 0x8004, 14
    Return

_01E1:
    SetVar 0x8004, 15
    Return

_01E9:
    CallCommonScript 0x7FC
    SetVar 0x8004, 93
    SetVar 0x8005, 1
    CallCommonScript 0x7FC
    ClearFlag 220
    SetVar 0x40E5, 0
    SetFlag 0xAB1
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0216:
    ScrCmd_07D 93, 1, 0x800C
    GoToIfEq 0x800C, 0, _0251
    SetVar 0x8004, 0x4117
    SetVar 0x8005, 3
    GoTo _025C
    End

_023F:
    SetVar 0x4117, 0x8004
    SetFlag 220
    GoTo _0251
    End

_0251:
    Message 6
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_025C:
    Message 7
    ClearFlag 220
    SetVar 0x40E5, 0
    CallCommonScript 0x7FC
    SetVar 0x8004, 93
    SetVar 0x8005, 1
    CallCommonScript 0x7E0
    CloseMessage
    ReleaseAll
    End

_0283:
    ScrCmd_0DA 0, 0x40E5, 0, 0
    ScrCmd_21A 0x800C
    BufferNumber 1, 0x800C
    Message 8
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_029F:
    Message 9
    SetVar 0x40E5, 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_02B0:
    Message 10
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_02BB:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 11
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_02CE:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 12
    Message 13
    ScrCmd_040 1, 1, 0, 1, 0x800C
    ScrCmd_29D 0x107, 0
    ScrCmd_29D 0x108, 1
    ScrCmd_29D 0x109, 2
    ScrCmd_29D 0x10B, 3
    ScrCmd_29D 0x10A, 4
    ScrCmd_043
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, 0, _0344
    GoToIfEq 0x8008, 1, _034F
    GoToIfEq 0x8008, 2, _035A
    GoToIfEq 0x8008, 3, _0365
    GoTo _0370
    End

_0344:
    Message 14
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_034F:
    Message 15
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_035A:
    Message 16
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0365:
    Message 17
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0370:
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
