#include "macros/scrcmd.inc"

    .data

    ScriptEntry _000A
    ScriptEntry _008E
    .short 0xFD13

_000A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet 218, _0079
    Message 0
    SetVar 0x8004, 92
    SetVar 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _0084
    CallCommonScript 0x7FC
    SetFlag 218
    SetVar 0x8004, 92
    SetVar 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _0079
    Message 1
    CallCommonScript 0x7FC
    GoTo _0079
    End

_0079:
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0084:
    CallCommonScript 0x7E1
    CloseMessage
    ReleaseAll
    End

_008E:
    ScrCmd_036 3, 1, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    CallCommonScript 0x7D0
    End

    .byte 0
    .byte 0
    .byte 0
