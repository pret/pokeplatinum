#include "macros/scrcmd.inc"
#include "res/text/bank/route_216_house.h"


    ScriptEntry Route216House_Hiker
    ScriptEntry Route216House_SnowpointNPCF
    ScriptEntry Route216House_Bed
    ScriptEntryEnd

Route216House_Hiker:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message Route216House_Text_MakeYourselfAtHome
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, Route216House_HikerRest
    GoToIfEq VAR_RESULT, MENU_NO, Route216House_YouCanNapInBed
    End

Route216House_HikerRest:
    CloseMessage
    FadeScreenOut
    WaitFadeScreen
    PlayFanfare SEQ_ASA
    WaitFanfare
    HealParty
    FadeScreenIn
    WaitFadeScreen
    Message Route216House_Text_YourPokemonAreHealthy
    WaitButton
    CloseMessage
    ReleaseAll
    End

Route216House_YouCanNapInBed:
    Message Route216House_Text_YouCanNapInBed
    WaitButton
    CloseMessage
    ReleaseAll
    End

Route216House_SnowpointNPCF:
    NPCMessage Route216House_Text_IDontHaveThickFat
    End

Route216House_Bed:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    Message Route216House_Text_WantToRest
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, Route216House_RestInBed
    GoToIfEq VAR_RESULT, MENU_NO, Route216House_DontRestInBed
    End

Route216House_RestInBed:
    BufferPlayerName 0
    Message Route216House_Text_FellAsleepInBed
    CloseMessage
    FadeScreenOut
    WaitFadeScreen
    PlayFanfare SEQ_ASA
    WaitFanfare
    HealParty
    FadeScreenIn
    WaitFadeScreen
    BufferPlayerName 0
    Message Route216House_Text_BecameFullyHealed
    WaitButton
    CloseMessage
    ReleaseAll
    End

Route216House_DontRestInBed:
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
