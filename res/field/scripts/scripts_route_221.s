#include "macros/scrcmd.inc"

    .data

    ScriptEntry _002E
    ScriptEntry _0041
    ScriptEntry _0054
    ScriptEntry _0012
    .short 0xFD13

_0012:
    ScrCmd_22D 2, 0x4000
    GoToIfEq 0x4000, 0, _002C
    SetFlag 0x27F
    SetFlag 0x280
_002C:
    End

_002E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0041:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0054:
    ScrCmd_036 2, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    CallCommonScript 0x7D0
    End

    .byte 0
