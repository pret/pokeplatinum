#include "macros/scrcmd.inc"
#include "res/text/bank/pokemon_day_care.h"


    ScriptEntry _000E
    ScriptEntry _0021
    ScriptEntry _005C
    ScriptEntryEnd

_000E:
    CallIfSet FLAG_UNK_0x00FE, _001B
    End

_001B:
    ClearFlag FLAG_HIDE_DAY_CARE_GYM_GUIDE
    Return

_0021:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CheckPoketchAppRegistered POKETCH_APPID_DAYCARECHECKER, VAR_RESULT
    GoToIfEq VAR_RESULT, 1, _0051
    Message 0
    SetVar VAR_0x8004, POKETCH_APPID_DAYCARECHECKER
    GivePoketchApp
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0051:
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_005C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
