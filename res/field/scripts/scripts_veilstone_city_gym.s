#include "macros/scrcmd.inc"

    .data

    ScriptEntry _001E
    ScriptEntry _0022
    ScriptEntry _011E
    ScriptEntry _0152
    ScriptEntry _0190
    ScriptEntry _01A1
    ScriptEntry _01B2
    .short 0xFD13

_001E:
    ScrCmd_174
    End

_0022:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ScrCmd_15B 2, 0x800C
    GoToIfEq 0x800C, 1, _00FF
    ScrCmd_1CD 9, 133, 0, 0, 0
    Message 0
    CloseMessage
    ScrCmd_0E5 0x13D, 0
    ScrCmd_0EC 0x800C
    GoToIfEq 0x800C, 0, _0118
    Message 1
    BufferPlayerName 0
    Message 2
    PlaySound SEQ_BADGE
    WaitSound
    ScrCmd_15C 2
    ScrCmd_260 23
    SetTrainerFlag 0x135
    SetTrainerFlag 0x136
    SetTrainerFlag 0x137
    SetTrainerFlag 0x138
    ScrCmd_1CD 10, 133, 0x13D, 0, 0
    SetFlag 0x1A3
    ClearFlag 0x1A8
    SetVar 0x407D, 1
    SetVar 0x411A, 1
    Message 3
    GoTo _00B7
    End

_00B7:
    SetVar 0x8004, 0x183
    SetVar 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _00F5
    CallCommonScript 0x7FC
    SetFlag 157
    BufferItemName 0, 0x8004
    ScrCmd_0D3 1, 0x8004
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00F5:
    CallCommonScript 0x7E1
    CloseMessage
    ReleaseAll
    End

_00FF:
    GoToIfUnset 157, _00B7
    BufferPlayerName 0
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0118:
    ScrCmd_0EB
    ReleaseAll
    End

_011E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ScrCmd_15B 2, 0x800C
    GoToIfEq 0x800C, 1, _0144
    Message 6
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0144:
    BufferPlayerName 0
    Message 7
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0152:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    ScrCmd_15B 2, 0x800C
    GoToIfEq 0x800C, 1, _017C
    BufferRivalName 0
    BufferRivalName 1
    Message 8
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_017C:
    BufferRivalName 0
    BufferPlayerName 1
    BufferRivalName 2
    Message 9
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0190:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 10
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01A1:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 11
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01B2:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 12
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
