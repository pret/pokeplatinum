#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0012
    ScriptEntry _0058
    ScriptEntry _006F
    ScriptEntry _0018
    .short 0xFD13

_0012:
    SetFlag 0x9C4
    End

_0018:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet 0x12A, _004D
    SetVar 0x8004, 95
    ScrCmd_261 0, 0x8004
    Message 0
    SetVar 0x8005, 1
    CallCommonScript 0x7DF
    SetFlag 0x12A
    CloseMessage
    ReleaseAll
    End

_004D:
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0058:
    ScrCmd_036 2, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    CallCommonScript 0x7D0
    End

_006F:
    ScrCmd_037 3, 0
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03A 3, 0x800C
    CallCommonScript 0x7D0
    End
