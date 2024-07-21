#include "macros/scrcmd.inc"

    .data

    ScriptEntry _000A
    ScriptEntry _006E
    .short 0xFD13

_000A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet 140, _0054
    BufferItemName 0, 253
    Message 0
    SetVar 0x8004, 253
    SetVar 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _0064
    SetFlag 140
    CallCommonScript 0x7E0
    CloseMessage
    ReleaseAll
    End

_0054:
    BufferItemName 0, 253
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0064:
    CallCommonScript 0x7E1
    CloseMessage
    ReleaseAll
    End

_006E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    WaitFanfare SEQ_SE_CONFIRM
    ScrCmd_04C 35, 0
    Message 2
    ScrCmd_04D
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
    .byte 0
