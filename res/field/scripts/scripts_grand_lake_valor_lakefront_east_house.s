#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0006
    .short 0xFD13

_0006:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet 0x13A, _0055
    Message 0
    SetVar 0x8004, 69
    SetVar 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _004B
    SetFlag 0x13A
    CallCommonScript 0x7E0
    CloseMessage
    ReleaseAll
    End

_004B:
    CallCommonScript 0x7E1
    CloseMessage
    ReleaseAll
    End

_0055:
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End
