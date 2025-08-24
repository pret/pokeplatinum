#include "macros/scrcmd.inc"
#include "res/text/bank/route_227_house.h"


    ScriptEntry _0006
    ScriptEntryEnd

_0006:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, _0031
    GoToIfEq VAR_RESULT, MENU_NO, _0079
    End

_0031:
    Message 1
    CloseMessage
    FadeScreenOut
    WaitFadeScreen
    PlaySound SEQ_ASA
    WaitSound
    HealParty
    FadeScreenIn
    WaitFadeScreen
    Message 2
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, _0031
    GoToIfEq VAR_RESULT, MENU_NO, _0079
    End

_0079:
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End
