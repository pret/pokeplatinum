#include "macros/scrcmd.inc"

    .data

    ScriptEntry _00B5
    ScriptEntry _00C8
    ScriptEntry _00DF
    ScriptEntry _00F6
    ScriptEntry _010B
    ScriptEntry _011E
    ScriptEntry _0131
    ScriptEntry _0144
    ScriptEntry _0157
    ScriptEntry _002A
    .short 0xFD13

_002A:
    GetTimeOfDay 0x4000
    GoToIfEq 0x4000, 0, _0071
    GoToIfEq 0x4000, 1, _0071
    GoToIfEq 0x4000, 2, _0071
    GoToIfEq 0x4000, 3, _0093
    GoToIfEq 0x4000, 4, _0093
    End

_0071:
    ClearFlag 0x260
    ClearFlag 0x262
    ClearFlag 0x264
    ClearFlag 0x266
    SetFlag 0x261
    SetFlag 0x263
    SetFlag 0x265
    SetFlag 0x267
    End

_0093:
    ClearFlag 0x261
    ClearFlag 0x263
    ClearFlag 0x265
    ClearFlag 0x267
    SetFlag 0x260
    SetFlag 0x262
    SetFlag 0x264
    SetFlag 0x266
    End

_00B5:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00C8:
    ScrCmd_036 6, 1, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    CallCommonScript 0x7D0
    End

_00DF:
    ScrCmd_036 7, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    CallCommonScript 0x7D0
    End

_00F6:
    ScrCmd_037 3, 0
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03A 8, 0x800C
    CallCommonScript 0x7D0
    End

_010B:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_011E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0131:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0144:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0157:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
