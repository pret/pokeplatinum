#include "macros/scrcmd.inc"
#include "res/text/bank/route_205_house.h"


    ScriptEntry Route205House_PokefanF
    ScriptEntry Route205House_BugCatcher
    ScriptEntryEnd

Route205House_PokefanF:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message Route205House_Text_RestAWhile
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, Route205House_Rest
    GoToIfEq VAR_RESULT, MENU_NO, Route205House_DontPushYourself
    End

Route205House_Rest:
    CloseMessage
    FadeScreenOut
    WaitFadeScreen
    PlayFanfare SEQ_ASA
    WaitFanfare
    HealParty
    FadeScreenIn
    WaitFadeScreen
    Message Route205House_Text_PokemonLookRefreshed
    WaitButton
    CloseMessage
    ReleaseAll
    End

Route205House_DontPushYourself:
    Message Route205House_Text_DontPushYourself
    WaitButton
    CloseMessage
    ReleaseAll
    End

Route205House_BugCatcher:
    NPCMessage Route205House_Text_RepelsAreUseful
    End
