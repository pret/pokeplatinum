#include "macros/scrcmd.inc"

    .data

    ScriptEntry _001E
    ScriptEntry _002C
    ScriptEntry _003A
    ScriptEntry _0048
    ScriptEntry _005B
    ScriptEntry _006E
    ScriptEntry _0081
    .short 0xFD13

_001E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    ScrCmd_1B5 0
    ReleaseAll
    End

_002C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    ScrCmd_1B5 1
    ReleaseAll
    End

_003A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    ScrCmd_1B5 2
    ReleaseAll
    End

_0048:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_005B:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_006E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0081:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End
