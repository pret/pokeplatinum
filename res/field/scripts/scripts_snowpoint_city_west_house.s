#include "macros/scrcmd.inc"
#include "res/text/bank/snowpoint_city_west_house.h"


    ScriptEntry _000A
    ScriptEntry _0033
    ScriptEntryEnd

_000A:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x00F4, _0028
    Message 0
    WaitButton
    CloseMessage
    ReleaseAll
    End

_0028:
    Message 1
    WaitButton
    CloseMessage
    ReleaseAll
    End

_0033:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x00F4, _00DC
    Message 2
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, _0060
    GoTo _00D1

_0060:
    CloseMessage
    FadeScreenOut
    WaitFadeScreen
    SelectPokemonToTrade
    FadeScreenIn
    WaitFadeScreen
    GoToIfEq VAR_RESULT, 0xFF, _00D1
    InitNPCTrade NPC_TRADE_GASPAR_HAUNTER
    SetVar VAR_0x8004, VAR_RESULT
    GetPartyMonSpecies VAR_0x8004, VAR_0x8005
    GetNPCTradeRequestedSpecies VAR_RESULT
    GoToIfNe VAR_0x8005, VAR_RESULT, _00C4
    StartNPCTrade VAR_0x8004
    FinishNPCTrade
    SetFlag FLAG_UNK_0x00F4
    Message 3
    WaitButton
    CloseMessage
    ReleaseAll
    End

_00C4:
    FinishNPCTrade
    Message 4
    WaitButton
    CloseMessage
    ReleaseAll
    End

_00D1:
    Message 5
    WaitButton
    CloseMessage
    ReleaseAll
    End

_00DC:
    Message 6
    WaitButton
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
