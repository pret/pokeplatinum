#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0016
    ScriptEntry _0078
    ScriptEntry _008B
    ScriptEntry _009E
    ScriptEntry _00B1
    .short 0xFD13

_0016:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    ScrCmd_072 20, 2
    Message 0
    ScrCmd_03E 0x800C
    CloseMessage
    GoToIfEq 0x800C, 0, _003E
    ScrCmd_073
    ReleaseAll
    End

_003E:
    ScrCmd_071 0x800C, 100
    GoToIfEq 0x800C, 0, _006B
    ScrCmd_070 100
    ScrCmd_074
    PlayFanfare SEQ_SE_DP_REGI
    WaitFanfare SEQ_SE_DP_REGI
    ScrCmd_073
    ScrCmd_206
    ReleaseAll
    End

_006B:
    Message 1
    WaitABXPadPress
    CloseMessage
    ScrCmd_073
    ReleaseAll
    End

_0078:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_008B:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_009E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00B1:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End
