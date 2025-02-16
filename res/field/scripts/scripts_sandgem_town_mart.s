#include "macros/scrcmd.inc"
#include "res/text/bank/sandgem_town_mart.h"

    .data

    ScriptEntry _0012
    ScriptEntry _0028
    ScriptEntry _002A
    ScriptEntry _003D
    ScriptEntryEnd

_0012:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CallCommonScript 0x7E3
    ScrCmd_035
    ScrCmd_147 0
    ReleaseAll
    End

_0028:
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
