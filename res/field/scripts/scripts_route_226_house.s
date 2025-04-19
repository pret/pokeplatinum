#include "macros/scrcmd.inc"
#include "res/text/bank/route_226_house.h"

    .data

    ScriptEntry _000E
    ScriptEntry _0014
    ScriptEntry _00E7
    ScriptEntryEnd

_000E:
    SetFlag FLAG_UNK_0x09F1
    End

_0014:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x00F5, _00DC
    GoToIfSet FLAG_UNK_0x00F6, _0046
    Message 0
    ScrCmd_22B
    SetFlag FLAG_UNK_0x00F6
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0046:
    Message 2
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, _0060
    GoTo _00D1

_0060:
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_2A5
    GetSelectedPartySlot VAR_RESULT
    ReturnToField
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    GoToIfEq VAR_RESULT, 0xFF, _00D1
    StartNpcTrade NPC_TRADE_FOOPA_MAGIKARP
    SetVar VAR_0x8004, VAR_RESULT
    GetPartyMonSpecies VAR_0x8004, VAR_0x8005
    GetNpcTradeRequestedSpecies VAR_RESULT
    GoToIfNe VAR_0x8005, VAR_RESULT, _00C4
    ScrCmd_229 VAR_0x8004
    FinishNpcTrade
    SetFlag FLAG_UNK_0x00F5
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

_00E7:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 7
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End
