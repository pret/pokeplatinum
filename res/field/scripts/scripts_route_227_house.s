#include "macros/scrcmd.inc"
#include "res/text/bank/route_227_house.h"


    ScriptEntry Route227House_ExpertF
    ScriptEntryEnd

Route227House_ExpertF:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message Route227House_Text_RestUp
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, Route227House_RestUp
    GoToIfEq VAR_RESULT, MENU_NO, Route227House_IsThatRight
    End

Route227House_RestUp:
    Message Route227House_Text_GetSomeRest
    CloseMessage
    FadeScreenOut
    WaitFadeScreen
    PlayFanfare SEQ_ASA
    WaitFanfare
    HealParty
    FadeScreenIn
    WaitFadeScreen
    Message Route227House_Text_RestUpAgain
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, Route227House_RestUp
    GoToIfEq VAR_RESULT, MENU_NO, Route227House_IsThatRight
    End

Route227House_IsThatRight:
    Message Route227House_Text_IsThatRight
    WaitButton
    CloseMessage
    ReleaseAll
    End
