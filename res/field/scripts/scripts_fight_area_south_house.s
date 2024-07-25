#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0012
    ScriptEntry _0025
    ScriptEntry _0038
    ScriptEntry _0057
    .short 0xFD13

_0012:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0025:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0038:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    WaitFanfare SEQ_SE_CONFIRM
    ScrCmd_04C 0xFF, 0
    Message 2
    ScrCmd_04D
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0057:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 3
    GoTo _006A
    End

_006A:
    Message 4
    ScrCmd_045 1, 1, 0, 1, 0x800C
    ScrCmd_046 14, 0xFF, 0
    ScrCmd_046 15, 0xFF, 1
    ScrCmd_046 16, 0xFF, 2
    ScrCmd_046 17, 0xFF, 3
    ScrCmd_046 18, 0xFF, 4
    ScrCmd_046 19, 0xFF, 5
    ScrCmd_046 20, 0xFF, 6
    ScrCmd_046 21, 0xFF, 7
    ScrCmd_046 22, 0xFF, 8
    ScrCmd_047
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, 0, _0135
    GoToIfEq 0x8008, 1, _0140
    GoToIfEq 0x8008, 2, _014B
    GoToIfEq 0x8008, 3, _0156
    GoToIfEq 0x8008, 4, _0161
    GoToIfEq 0x8008, 5, _016C
    GoToIfEq 0x8008, 6, _0177
    GoToIfEq 0x8008, 7, _0182
    GoTo _018D
    End

_0135:
    Message 6
    GoTo _006A
    End

_0140:
    Message 7
    GoTo _006A
    End

_014B:
    Message 8
    GoTo _006A
    End

_0156:
    Message 9
    GoTo _006A
    End

_0161:
    Message 10
    GoTo _006A
    End

_016C:
    Message 11
    GoTo _006A
    End

_0177:
    Message 12
    GoTo _006A
    End

_0182:
    Message 13
    GoTo _006A
    End

_018D:
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End
