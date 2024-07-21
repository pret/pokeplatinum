#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0012
    ScriptEntry _0025
    ScriptEntry _0114
    ScriptEntry _0148
    .short 0xFD13

_0012:
    GoToIfSet 235, _001F
    End

_001F:
    SetFlag 0x1F3
    End

_0025:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ScrCmd_15B 6, 0x800C
    GoToIfEq 0x800C, 1, _00F8
    ScrCmd_1CD 9, 167, 0, 0, 0
    Message 0
    CloseMessage
    ScrCmd_0E5 0x13F, 0
    ScrCmd_0EC 0x800C
    GoToIfEq 0x800C, 0, _010E
    Message 1
    BufferPlayerName 0
    Message 2
    PlaySound SEQ_BADGE
    WaitSound
    ScrCmd_15C 6
    ScrCmd_260 23
    SetTrainerFlag 0x10C
    SetTrainerFlag 0x10D
    SetTrainerFlag 0x33B
    SetTrainerFlag 0x10E
    SetTrainerFlag 0x10F
    SetTrainerFlag 0x33C
    ScrCmd_1CD 10, 167, 0x13F, 0, 0
    SetFlag 0x1BF
    Message 3
    GoTo _00B0

_00B0:
    SetVar 0x8004, 0x18F
    SetVar 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _00EE
    CallCommonScript 0x7FC
    SetFlag 158
    BufferItemName 0, 0x8004
    ScrCmd_0D3 1, 0x8004
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00EE:
    CallCommonScript 0x7E1
    CloseMessage
    ReleaseAll
    End

_00F8:
    GoToIfUnset 158, _00B0
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_010E:
    ScrCmd_0EB
    ReleaseAll
    End

_0114:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ScrCmd_15B 6, 0x800C
    GoToIfEq 0x800C, 1, _013A
    Message 6
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_013A:
    BufferPlayerName 0
    Message 7
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0148:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    ScrCmd_15B 6, 0x800C
    GoToIfEq 0x800C, 1, _0172
    BufferRivalName 0
    BufferRivalName 1
    Message 8
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0172:
    BufferRivalName 0
    BufferPlayerName 1
    BufferRivalName 2
    Message 9
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
