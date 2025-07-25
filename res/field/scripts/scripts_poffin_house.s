#include "macros/scrcmd.inc"
#include "res/text/bank/poffin_house.h"


    ScriptEntry _0070
    ScriptEntry _0083
    ScriptEntry _0096
    ScriptEntry _00A9
    ScriptEntry _002F
    ScriptEntry _001A
    ScriptEntryEnd

_001A:
    ScrCmd_238 11, VAR_MAP_LOCAL_0
    CallIfEq VAR_MAP_LOCAL_0, 0, _004F
    End

_002F:
    ScrCmd_238 11, VAR_MAP_LOCAL_0
    GoToIfNe VAR_MAP_LOCAL_0, 0, _0055
    CallIfUnset FLAG_UNK_0x0217, _004F
    End

_004F:
    SetFlag FLAG_UNK_0x0217
    Return

_0055:
    GoToIfSet FLAG_UNK_0x0217, _0066
    ClearFlag FLAG_UNK_0x0217
    End

_0066:
    ClearFlag FLAG_UNK_0x0217
    AddObject 4
    End

_0070:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0083:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0096:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00A9:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End
