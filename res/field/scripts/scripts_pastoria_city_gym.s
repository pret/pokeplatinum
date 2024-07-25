#include "macros/scrcmd.inc"

    .data

    ScriptEntry _001E
    ScriptEntry _0034
    ScriptEntry _004A
    ScriptEntry _0060
    ScriptEntry _0076
    ScriptEntry _0171
    ScriptEntry _01A5
    .short 0xFD13

_001E:
    SetVar 0x4001, 0
    SetVar 0x4002, 1
    SetVar 0x4003, 0
    ScrCmd_16F
    End

_0034:
    ScrCmd_170
    SetVar 0x4001, 1
    SetVar 0x4002, 0
    SetVar 0x4003, 0
    End

_004A:
    ScrCmd_170
    SetVar 0x4001, 0
    SetVar 0x4002, 1
    SetVar 0x4003, 0
    End

_0060:
    ScrCmd_170
    SetVar 0x4001, 0
    SetVar 0x4002, 0
    SetVar 0x4003, 1
    End

_0076:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ScrCmd_15B 3, 0x800C
    GoToIfEq 0x800C, 1, _0155
    ScrCmd_1CD 9, 122, 0, 0, 0
    Message 0
    CloseMessage
    ScrCmd_0E5 0x13C, 0
    ScrCmd_0EC 0x800C
    GoToIfEq 0x800C, 0, _016B
    Message 1
    BufferPlayerName 0
    Message 2
    PlaySound SEQ_BADGE
    WaitSound
    ScrCmd_15C 3
    ScrCmd_260 23
    SetTrainerFlag 0x125
    SetTrainerFlag 0x153
    SetTrainerFlag 0x191
    SetTrainerFlag 0x1E3
    SetTrainerFlag 0x1F1
    SetTrainerFlag 0x1F2
    SetVar 0x407C, 3
    SetFlag 0x20C
    SetFlag 0x156
    ScrCmd_1CD 10, 122, 0x13C, 0, 0
    Message 3
    GoTo _010D
    End

_010D:
    SetVar 0x8004, 0x17E
    SetVar 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _014B
    CallCommonScript 0x7FC
    SetFlag 156
    BufferItemName 0, 0x8004
    ScrCmd_0D3 1, 0x8004
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_014B:
    CallCommonScript 0x7E1
    CloseMessage
    ReleaseAll
    End

_0155:
    GoToIfUnset 156, _010D
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_016B:
    ScrCmd_0EB
    ReleaseAll
    End

_0171:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ScrCmd_15B 3, 0x800C
    GoToIfEq 0x800C, 1, _0197
    Message 6
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0197:
    BufferPlayerName 0
    Message 7
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01A5:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    ScrCmd_15B 3, 0x800C
    GoToIfEq 0x800C, 1, _01CF
    BufferRivalName 0
    BufferRivalName 1
    Message 8
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01CF:
    BufferRivalName 0
    BufferPlayerName 1
    BufferRivalName 2
    Message 9
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
