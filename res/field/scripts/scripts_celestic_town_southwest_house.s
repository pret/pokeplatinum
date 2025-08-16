#include "macros/scrcmd.inc"
#include "res/text/bank/celestic_town_southwest_house.h"


    ScriptEntry _000A
    ScriptEntry _0045
    ScriptEntryEnd

_000A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CheckPoketchAppRegistered POKETCH_APPID_ANALOGWATCH, VAR_RESULT
    GoToIfEq VAR_RESULT, 1, _003A
    Message 0
    SetVar VAR_0x8004, 11
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
    WaitFanfare SEQ_SE_CONFIRM
    PlayCry SPECIES_HAPPINY
    Message 2
    WaitCry
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End
