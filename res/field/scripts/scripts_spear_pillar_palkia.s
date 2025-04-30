#include "macros/scrcmd.inc"
#include "generated/distribution_events.h"
#include "res/text/bank/spear_pillar_palkia.h"

    .data

    ScriptEntry _0077
    ScriptEntry _000A
    ScriptEntryEnd

_000A:
    Call _0012
    End

_0012:
    CheckGameCompleted VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, 0, _0075
    GetNationalDexEnabled VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, 0, _0075
    CheckItem ITEM_AZURE_FLUTE, 1, VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, FALSE, _0075
    CheckDistributionEvent DISTRIBUTION_EVENT_ARCEUS, VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, FALSE, _0075
    GoToIfSet FLAG_UNK_0x011E, _0075
    SetVar VAR_UNK_0x4118, 1
    GoTo _0075
    End

_0075:
    Return

_0077:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    GoToIfGe VAR_UNK_0x40C5, 1, _00F4
    GoToIfSet FLAG_UNK_0x00D1, _00F4
    Message 0
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, _0101
    PlayCry SPECIES_PALKIA
    Message 1
    WaitCry
    CloseMessage
    StartLegendaryBattle SPECIES_PALKIA, 70
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, _00E8
    SetVar VAR_UNK_0x40C5, 1
    CheckDidNotCapture VAR_RESULT
    CallIfEq VAR_RESULT, FALSE, _00EE
    ReleaseAll
    End

_00E8:
    BlackOutFromBattle
    ReleaseAll
    End

_00EE:
    SetFlag FLAG_UNK_0x00D1
    Return

_00F4:
    Message 2
    WaitABXPadPress
    GoTo _0101
    End

_0101:
    CloseMessage
    ReleaseAll
    End

    .byte 0
