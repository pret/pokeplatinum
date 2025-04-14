#include "macros/scrcmd.inc"
#include "res/text/bank/snowpoint_city_west_house.h"

    .data

    ScriptEntry _000A
    ScriptEntry _0033
    ScriptEntryEnd

_000A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x00F4, _0028
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0028:
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0033:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x00F4, _00DC
    Message 2
    ShowYesNoMenu VAR_0x800C
    GoToIfEq VAR_0x800C, MENU_YES, _0060
    GoTo _00D1

_0060:
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_2A5
    GetSelectedPartySlot VAR_0x800C
    ReturnToField
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    GoToIfEq VAR_0x800C, 0xFF, _00D1
    StartNpcTrade NPC_TRADE_GASPAR_HAUNTER
    SetVar VAR_0x8004, VAR_0x800C
    GetPartyMonSpecies VAR_0x8004, VAR_0x8005
    GetNpcTradeRequestedSpecies VAR_0x800C
    GoToIfNe VAR_0x8005, VAR_0x800C, _00C4
    ScrCmd_229 VAR_0x8004
    FinishNpcTrade
    SetFlag FLAG_UNK_0x00F4
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00C4:
    FinishNpcTrade
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00D1:
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00DC:
    Message 6
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
