#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0012
    ScriptEntry _0016
    ScriptEntry _0126
    ScriptEntry _015A
    .short 0xFD13

_0012:
    ScrCmd_173
    End

_0016:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ScrCmd_15B 5, 0x800C
    GoToIfEq 0x800C, 1, _0107
    ScrCmd_1CD 9, 35, 0, 0, 0
    Message 0
    CloseMessage
    ScrCmd_0E5 250, 0
    ScrCmd_0EC 0x800C
    GoToIfEq 0x800C, 0, _0120
    Message 1
    BufferPlayerName 0
    Message 2
    PlaySound SEQ_BADGE
    WaitSound
    ScrCmd_15C 5
    ScrCmd_260 23
    SetTrainerFlag 232
    SetTrainerFlag 0x100
    SetTrainerFlag 0x101
    SetTrainerFlag 0x117
    SetTrainerFlag 0x11B
    SetTrainerFlag 0x13A
    SetTrainerFlag 0x16F
    ScrCmd_1CD 10, 35, 250, 0, 0
    ClearFlag 0x1B2
    ClearFlag 0x2CC
    ClearFlag 0x1B8
    ClearFlag 0x1B6
    ClearFlag 0x1B7
    SetVar 0x4078, 2
    SetFlag 0x198
    Message 3
    GoTo _00BF

_00BF:
    SetVar 0x8004, 0x1A2
    SetVar 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _00FD
    CallCommonScript 0x7FC
    SetFlag 146
    BufferItemName 0, 0x8004
    ScrCmd_0D3 1, 0x8004
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00FD:
    CallCommonScript 0x7E1
    CloseMessage
    ReleaseAll
    End

_0107:
    GoToIfUnset 146, _00BF
    BufferRivalName 1
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0120:
    ScrCmd_0EB
    ReleaseAll
    End

_0126:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ScrCmd_15B 5, 0x800C
    GoToIfEq 0x800C, 1, _014C
    Message 6
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_014C:
    BufferPlayerName 0
    Message 7
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_015A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    ScrCmd_15B 5, 0x800C
    GoToIfEq 0x800C, 1, _0184
    BufferRivalName 0
    BufferRivalName 1
    Message 8
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0184:
    BufferRivalName 0
    BufferPlayerName 1
    BufferRivalName 2
    Message 9
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End
