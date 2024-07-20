#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0012
    ScriptEntry _0028
    ScriptEntry _003E
    ScriptEntry _0056
    .short 0xFD13

_0012:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CallCommonScript 0x7E3
    ScrCmd_035
    ScrCmd_147 1
    ReleaseAll
    End

_0028:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CallCommonScript 0x7E3
    ScrCmd_035
    ScrCmd_148 16
    ReleaseAll
    End

_003E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    BufferItemName 0, 24
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0056:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    BufferItemName 0, 57
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
