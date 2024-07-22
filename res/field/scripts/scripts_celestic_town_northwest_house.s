#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0012
    ScriptEntry _002B
    ScriptEntry _0041
    ScriptEntry _0057
    .short 0xFD13

_0012:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    CallCommonScript 0x7E3
    ScrCmd_035
    ScrCmd_147 1
    ReleaseAll
    End

_002B:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CallCommonScript 0x7E3
    ScrCmd_035
    ScrCmd_147 1
    ReleaseAll
    End

_0041:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CallCommonScript 0x7E3
    ScrCmd_035
    ScrCmd_148 14
    ReleaseAll
    End

_0057:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 1
    ScrCmd_268 0x800C
    GoToIfLt 0x800C, 4, _0113
    GoToIfLt 0x800C, 10, _0093
    GoToIfLt 0x800C, 20, _00D3
    GoTo _0113

_0093:
    GoToIfSet 0x134, _0153
    Message 2
    SetVar 0x8004, 0x129
    SetVar 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _0174
    CallCommonScript 0x7FC
    SetFlag 0x134
    Message 3
    GoTo _0153

_00D3:
    GoToIfSet 0x135, _015E
    Message 2
    SetVar 0x8004, 240
    SetVar 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _0174
    CallCommonScript 0x7FC
    SetFlag 0x135
    Message 4
    GoTo _015E

_0113:
    GoToIfSet 0x136, _0169
    Message 2
    SetVar 0x8004, 0x10B
    SetVar 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _0174
    CallCommonScript 0x7FC
    SetFlag 0x136
    Message 5
    GoTo _0169

_0153:
    Message 6
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_015E:
    Message 7
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0169:
    Message 8
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0174:
    Message 9
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
