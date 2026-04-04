#include "macros/scrcmd.inc"
#include "res/text/bank/acuity_cavern.h"
#include "res/field/events/events_acuity_cavern.h"


    ScriptEntry AcuityCavern_OnTransition
    ScriptEntry AcuityCavern_OnLoad
    ScriptEntry AcuityCavern_Uxie
    ScriptEntryEnd

AcuityCavern_OnTransition:
    SetFlag FLAG_FIRST_ARRIVAL_ACUITY_CAVERN
    End

AcuityCavern_OnLoad:
    GoToIfSet FLAG_MAP_LOCAL, AcuityCavern_RemoveUxie
    End

AcuityCavern_RemoveUxie:
    SetFlag FLAG_HIDE_ACUITY_CAVERN_UXIE
    RemoveObject LOCALID_UXIE
    ClearFlag FLAG_MAP_LOCAL
    End

AcuityCavern_Uxie:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    PlayCry SPECIES_UXIE
    Message AcuityCavern_Text_UxieCry
    CloseMessage
    SetFlag FLAG_MAP_LOCAL
    StartLegendaryBattle SPECIES_UXIE, 50
    ClearFlag FLAG_MAP_LOCAL
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, AcuityCavern_LostBattle
    CheckDidNotCapture VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, AcuityCavern_UxieDisappeared
    SetFlag FLAG_CAUGHT_UXIE
    ReleaseAll
    End

AcuityCavern_UxieDisappeared:
    Message AcuityCavern_Text_UxieDisappeared
    WaitButton
    CloseMessage
    ReleaseAll
    End

AcuityCavern_LostBattle:
    BlackOutFromBattle
    ReleaseAll
    End

    .balign 4, 0
