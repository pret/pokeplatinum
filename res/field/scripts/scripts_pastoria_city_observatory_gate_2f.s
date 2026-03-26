#include "macros/scrcmd.inc"
#include "res/text/bank/pastoria_city_observatory_gate_2f.h"


    ScriptEntry PastoriaCityObservatoryGate2F_Binocular
    ScriptEntry PastoriaCityObservatoryGate2F_AceTrainerF
    ScriptEntry PastoriaCityObservatoryGate2F_BugCatcher
    ScriptEntry PastoriaCityObservatoryGate2F_PokefanM
    ScriptEntry PastoriaCityObservatoryGate2F_Picnicker
    ScriptEntryEnd

PastoriaCityObservatoryGate2F_Binocular:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    ShowMoney 20, 2
    Message PastoriaCityObservatoryGate2F_Text_AskPut100InBinoculars
    ShowYesNoMenu VAR_RESULT
    CloseMessage
    GoToIfEq VAR_RESULT, MENU_YES, PastoriaCityObservatoryGate2F_TryUseBinoculars
    HideMoney
    ReleaseAll
    End

PastoriaCityObservatoryGate2F_TryUseBinoculars:
    GoToIfNotEnoughMoney 100, PastoriaCityObservatoryGate2F_NotEnoughMoney
    RemoveMoney 100
    UpdateMoneyDisplay
    PlaySE SEQ_SE_DP_REGI
    WaitSE SEQ_SE_DP_REGI
    HideMoney
    StartGreatMarshLookout
    ReleaseAll
    End

PastoriaCityObservatoryGate2F_NotEnoughMoney:
    Message PastoriaCityObservatoryGate2F_Text_NotEnoughMoney
    WaitButton
    CloseMessage
    HideMoney
    ReleaseAll
    End

PastoriaCityObservatoryGate2F_AceTrainerF:
    NPCMessage PastoriaCityObservatoryGate2F_Text_PokemonDifferFromYesterday
    End

PastoriaCityObservatoryGate2F_BugCatcher:
    NPCMessage PastoriaCityObservatoryGate2F_Text_YouCanSeePokemon
    End

PastoriaCityObservatoryGate2F_PokefanM:
    NPCMessage PastoriaCityObservatoryGate2F_Text_TakeQuickTrams
    End

PastoriaCityObservatoryGate2F_Picnicker:
    NPCMessage PastoriaCityObservatoryGate2F_Text_YouCanSinkInBog
    End
