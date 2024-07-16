#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0006
    .short 0xFD13

_0006:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet 203, _004B
    Message 0
    SetVar 0x8004, 0x171
    SetVar 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _0056
    CallCommonScript 0x7FC
    SetFlag 203
    GoTo _004B

_004B:
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0056:
    CallCommonScript 0x7E1
    CloseMessage
    ReleaseAll
    End
