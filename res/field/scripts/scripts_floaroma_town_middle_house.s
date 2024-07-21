#include "macros/scrcmd.inc"

    .data

    ScriptEntry _000E
    ScriptEntry _0021
    ScriptEntry _00A9
    .short 0xFD13

_000E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0021:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet 131, _0094
    Message 1
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _0062
    GoToIfEq 0x800C, 1, _0057
    End

_0057:
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0062:
    Message 2
    SetVar 0x8004, 0x19F
    SetVar 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _009F
    SetFlag 131
    CallCommonScript 0x7E0
    CloseMessage
    ReleaseAll
    End

_0094:
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_009F:
    CallCommonScript 0x7E1
    CloseMessage
    ReleaseAll
    End

_00A9:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    WaitFanfare SEQ_SE_CONFIRM
    ScrCmd_04C 35, 0
    Message 5
    ScrCmd_04D
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End
