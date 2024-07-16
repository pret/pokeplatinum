#include "macros/scrcmd.inc"

    .data

    ScriptEntry _000A
    ScriptEntry _00D1
    .short 0xFD13

_000A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet 0xAB4, _00BC
    Message 0
    ScrCmd_1B7 0x8004, 4
    SetVar 0x8008, 0x8004
    GoToIfEq 0x8008, 0, _005B
    GoToIfEq 0x8008, 1, _0069
    GoToIfEq 0x8008, 2, _0077
    GoTo _0085
    End

_005B:
    SetVar 0x8004, 72
    GoTo _0093
    End

_0069:
    SetVar 0x8004, 73
    GoTo _0093
    End

_0077:
    SetVar 0x8004, 74
    GoTo _0093
    End

_0085:
    SetVar 0x8004, 75
    GoTo _0093
    End

_0093:
    SetVar 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _00C7
    SetFlag 0xAB4
    CallCommonScript 0x7E0
    CloseMessage
    ReleaseAll
    End

_00BC:
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00C7:
    CallCommonScript 0x7E1
    CloseMessage
    ReleaseAll
    End

_00D1:
    ScrCmd_036 2, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    CallCommonScript 0x7D0
    End
