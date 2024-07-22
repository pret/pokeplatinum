#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0016
    ScriptEntry _002D
    ScriptEntry _0044
    ScriptEntry _0070
    ScriptEntry _005B
    .short 0xFD13

_0016:
    ScrCmd_036 2, 1, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    CallCommonScript 0x7D0
    End

_002D:
    ScrCmd_036 3, 1, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    CallCommonScript 0x7D0
    End

_0044:
    ScrCmd_036 4, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    CallCommonScript 0x7D0
    End

_005B:
    ScrCmd_037 3, 0
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03A 5, 0x800C
    CallCommonScript 0x7D0
    End

_0070:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet 0x13F, _00B5
    Message 0
    SetVar 0x8004, 111
    SetVar 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _00C0
    SetFlag 0x13F
    CallCommonScript 0x7E0
    CloseMessage
    ReleaseAll
    End

_00B5:
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00C0:
    CallCommonScript 0x7E1
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
