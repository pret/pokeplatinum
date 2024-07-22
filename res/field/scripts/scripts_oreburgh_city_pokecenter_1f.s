#include "macros/scrcmd.inc"

    .data

    ScriptEntry _001E
    ScriptEntry _002A
    ScriptEntry _003D
    ScriptEntry _0050
    ScriptEntry _0110
    ScriptEntry _0139
    ScriptEntry _014C
    .short 0xFD13

_001E:
    SetVar 0x8007, 3
    CallCommonScript 0x7D2
    End

_002A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_003D:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0050:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet 112, _006C
    Message 2
    GoTo _0078

_006C:
    ScrCmd_0D9 0
    Message 7
    GoTo _0078

_0078:
    Message 3
    ScrCmd_154
    ScrCmd_040 1, 1, 0, 1, 0x800C
    ScrCmd_042 50, 0
    ScrCmd_042 51, 1
    ScrCmd_042 52, 2
    ScrCmd_042 53, 3
    ScrCmd_042 43, 4
    ScrCmd_043
    SetVar 0x8004, 0x800C
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, 4, _00E9
    GoToIfEq 0x8008, -2, _00E9
    ScrCmd_155 0x8004, 0x8005
    ScrCmd_344 0, 0x8005
    ScrCmd_346 0
    Message 4
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _00F4
    GoTo _0078

_00E9:
    Message 6
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00F4:
    ScrCmd_344 0, 0x8005
    Message 5
    SetFlag 112
    ScrCmd_29C 0x8004, 0x8005
    ScrCmd_156 0x8005
    GoTo _00E9

_0110:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet 0x964, _012E
    Message 8
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_012E:
    Message 9
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0139:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 10
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_014C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 11
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
