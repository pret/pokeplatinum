#include "macros/scrcmd.inc"

    .data

    ScriptEntry _000E
    ScriptEntry _011F
    ScriptEntry _0153
    .short 0xFD13

_000E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ScrCmd_15B 0, 0x800C
    GoToIfEq 0x800C, 1, _0103
    ScrCmd_1CD 9, 47, 0, 0, 0
    Message 0
    CloseMessage
    ScrCmd_0E5 246, 0
    ScrCmd_0EC 0x800C
    GoToIfEq 0x800C, 0, _0119
    Message 1
    BufferPlayerName 0
    Message 2
    PlaySound SEQ_BADGE
    WaitSound
    SetTrainerFlag 244
    SetTrainerFlag 245
    ScrCmd_15C 0
    ScrCmd_260 23
    SetTrainerFlag 244
    SetTrainerFlag 245
    SetFlag 0x23F
    SetVar 0x40F0, 1
    SetVar 0x4076, 1
    SetVar 0x4079, 2
    ScrCmd_1CD 10, 47, 246, 0, 0
    SetVar 0x4077, 3
    ClearFlag 0x17A
    ClearFlag 0x19D
    ClearFlag 0x19C
    SetFlag 0x198
    Message 3
    GoTo _00BB
    End

_00BB:
    SetVar 0x8004, 0x193
    SetVar 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _00F9
    CallCommonScript 0x7FC
    SetFlag 117
    BufferItemName 0, 0x8004
    ScrCmd_0D3 1, 0x8004
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00F9:
    CallCommonScript 0x7E1
    CloseMessage
    ReleaseAll
    End

_0103:
    GoToIfUnset 117, _00BB
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0119:
    ScrCmd_0EB
    ReleaseAll
    End

_011F:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ScrCmd_15B 0, 0x800C
    GoToIfEq 0x800C, 1, _0145
    Message 6
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0145:
    BufferPlayerName 0
    Message 7
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0153:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    ScrCmd_15B 0, 0x800C
    GoToIfEq 0x800C, 1, _017D
    BufferRivalName 0
    BufferRivalName 1
    Message 8
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_017D:
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
    .byte 0
