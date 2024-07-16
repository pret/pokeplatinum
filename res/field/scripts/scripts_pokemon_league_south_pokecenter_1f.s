#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0020
    ScriptEntry _002C
    ScriptEntry _0042
    ScriptEntry _001A
    ScriptEntry _0058
    ScriptEntry _006B
    .short 0xFD13

_001A:
    SetFlag 0x9C0
    End

_0020:
    SetVar 0x8007, 0
    CallCommonScript 0x7D2
    End

_002C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CallCommonScript 0x7E3
    ScrCmd_035
    ScrCmd_147 1
    ReleaseAll
    End

_0042:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CallCommonScript 0x7E3
    ScrCmd_035
    ScrCmd_148 18
    ReleaseAll
    End

_0058:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_006B:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
