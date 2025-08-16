#include "macros/scrcmd.inc"
#include "res/text/bank/grand_lake_route_213_northeast_house.h"


    ScriptEntry _000A
    ScriptEntry _0045
    ScriptEntryEnd

_000A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CheckPoketchAppRegistered POKETCH_APPID_COINTOSS, VAR_RESULT
    GoToIfNe VAR_RESULT, 0, _003A
    Message 0
    SetVar VAR_0x8004, 14
    CallCommonScript CommonScript_Unk09
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_003A:
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0045:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CheckPoketchAppRegistered POKETCH_APPID_COINTOSS, VAR_RESULT
    GoToIfNe VAR_RESULT, 0, _0071
    GoTo _0066

_0066:
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0071:
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End
