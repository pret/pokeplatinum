#include "macros/scrcmd.inc"
#include "res/text/bank/pastoria_city_observatory_gate_2f.h"

    .data

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
    ShowYesNoMenu 0x800C
    CloseMessage
    GoToIfEq 0x800C, MENU_YES, _003E
    HideMoney
    ReleaseAll
    End

_003E:
    ScrCmd_071 0x800C, 100
    GoToIfEq 0x800C, 0, _006B
    ScrCmd_070 100
    UpdateMoneyDisplay
    PlayFanfare SEQ_SE_DP_REGI
    WaitFanfare SEQ_SE_DP_REGI
    HideMoney
    StartGreatMarshLookout
    ReleaseAll
    End

_006B:
    Message 1
    WaitABXPadPress
    CloseMessage
    HideMoney
    ReleaseAll
    End

_0078:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_008B:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_009E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00B1:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End
