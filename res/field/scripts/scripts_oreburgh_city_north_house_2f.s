#include "macros/scrcmd.inc"
#include "res/text/bank/oreburgh_city_north_house_2f.h"

    .data

    ScriptEntry _000E
    ScriptEntry _0021
    ScriptEntry _0034
    ScriptEntryEnd

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
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0034:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x00C1, _00A1
    CheckPartyHasSpecies VAR_RESULT, SPECIES_GEODUDE
    GoToIfEq VAR_RESULT, 0, _0096
    Message 3
    SetVar VAR_0x8004, ITEM_HEAL_BALL
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, _008C
    SetFlag FLAG_UNK_0x00C1
    CallCommonScript 0x7E0
    CloseMessage
    ReleaseAll
    End

_008C:
    CallCommonScript 0x7E1
    CloseMessage
    ReleaseAll
    End

_0096:
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00A1:
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End
