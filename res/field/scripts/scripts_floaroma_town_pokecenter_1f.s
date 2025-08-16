#include "macros/scrcmd.inc"
#include "res/text/bank/floaroma_town_pokecenter_1f.h"


    ScriptEntry _0012
    ScriptEntry _001E
    ScriptEntry _0031
    ScriptEntry _0044
    ScriptEntryEnd

_0012:
    SetVar VAR_0x8007, 2
    CallCommonScript CommonScript_Unk02
    End

_001E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0031:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0044:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfGe VAR_UNK_0x40CF, 2, _0064
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0064:
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
