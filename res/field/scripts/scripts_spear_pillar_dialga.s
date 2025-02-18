#include "macros/scrcmd.inc"
#include "generated/distribution_events.h"
#include "res/text/bank/spear_pillar_dialga.h"

    .data

    ScriptEntry _0077
    ScriptEntry _000A
    ScriptEntryEnd

_000A:
    Call _0012
    End

_0012:
    CheckGameCompleted 0x4000
    GoToIfEq 0x4000, 0, _0075
    ScrCmd_22D 2, 0x4000
    GoToIfEq 0x4000, 0, _0075
    CheckItem ITEM_AZURE_FLUTE, 1, 0x4000
    GoToIfEq 0x4000, FALSE, _0075
    CheckDistributionEvent DISTRIBUTION_EVENT_ARCEUS, 0x4000
    GoToIfEq 0x4000, FALSE, _0075
    GoToIfSet 0x11E, _0075
    SetVar 0x4118, 1
    GoTo _0075
    End

_0075:
    Return

_0077:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    GoToIfGe 0x40C4, 1, _00F4
    GoToIfSet 208, _00F4
    Message 0
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_NO, _0101
    ScrCmd_04C 0x1E3, 0
    Message 1
    ScrCmd_04D
    CloseMessage
    StartLegendaryBattle SPECIES_DIALGA, 70
    CheckWonBattle 0x800C
    GoToIfEq 0x800C, FALSE, _00E8
    SetVar 0x40C4, 1
    CheckDidNotCapture 0x800C
    CallIfEq 0x800C, FALSE, _00EE
    ReleaseAll
    End

_00E8:
    BlackOutFromBattle
    ReleaseAll
    End

_00EE:
    SetFlag 208
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
