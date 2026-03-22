#include "macros/scrcmd.inc"
#include "res/text/bank/pastoria_city_observatory_gate_2f.h"


    ScriptEntry _0016
    ScriptEntry _0078
    ScriptEntry _008B
    ScriptEntry _009E
    ScriptEntry _00B1
    ScriptEntryEnd

_0016:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    ShowMoney 20, 2
    Message 0
    ShowYesNoMenu VAR_RESULT
    CloseMessage
    GoToIfEq VAR_RESULT, MENU_YES, _003E
    HideMoney
    ReleaseAll
    End

_003E:
    GoToIfNotEnoughMoney 100, _006B
    RemoveMoney 100
    UpdateMoneyDisplay
    PlayFanfare SEQ_SE_DP_REGI
    WaitFanfare SEQ_SE_DP_REGI
    HideMoney
    StartGreatMarshLookout
    ReleaseAll
    End

_006B:
    Message 1
    WaitButton
    CloseMessage
    HideMoney
    ReleaseAll
    End

_0078:
    NPCMessage 2
    End

_008B:
    NPCMessage 3
    End

_009E:
    NPCMessage 4
    End

_00B1:
    NPCMessage 5
    End
