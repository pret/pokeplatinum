#include "macros/scrcmd.inc"
#include "res/text/bank/route_215.h"


    ScriptEntry Route215_Unused
    ScriptEntry Route215_BlackBelt
    ScriptEntry Route215_ArrowSignpostWest
    ScriptEntry Route215_ArrowSignpostVeilstoneCity
    ScriptEntry Route215_JoggerScott
    ScriptEntry Route215_JoggerCraig
    ScriptEntry Route215_OnTransition
    ScriptEntry Route215_TrainerTips
    ScriptEntryEnd

Route215_OnTransition:
    GetTimeOfDay VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, TIMEOFDAY_MORNING, Route215_SetJoggersBattle
    GoToIfInRange VAR_MAP_LOCAL_0, TIMEOFDAY_DAY, TIMEOFDAY_LATE_NIGHT, Route215_SetJoggersNoBattle
    End

Route215_SetJoggersBattle:
    ClearFlag FLAG_HIDE_ROUTE_215_JOGGER_SCOTT
    ClearFlag FLAG_HIDE_ROUTE_215_JOGGER_CRAIG
    SetFlag FLAG_HIDE_ROUTE_215_JOGGER_SCOTT_NO_BATTLE
    SetFlag FLAG_HIDE_ROUTE_215_JOGGER_CRAIG_NO_BATTLE
    End

Route215_SetJoggersNoBattle:
    ClearFlag FLAG_HIDE_ROUTE_215_JOGGER_SCOTT_NO_BATTLE
    ClearFlag FLAG_HIDE_ROUTE_215_JOGGER_CRAIG_NO_BATTLE
    SetFlag FLAG_HIDE_ROUTE_215_JOGGER_SCOTT
    SetFlag FLAG_HIDE_ROUTE_215_JOGGER_CRAIG
    End

Route215_Unused:
    NPCMessage Route215_Text_Dummy0
    End

Route215_BlackBelt:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_RECEIVED_ROUTE_215_TM66, Route215_PaybackIsHarsh
    Message Route215_Text_YupItsPayback
    SetVar VAR_0x8004, ITEM_TM66
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, Route215_BagIsFull
    Common_GiveItemQuantity
    SetFlag FLAG_RECEIVED_ROUTE_215_TM66
    GoTo Route215_PaybackIsHarsh

Route215_PaybackIsHarsh:
    Message Route215_Text_PaybackIsHarsh
    WaitButton
    CloseMessage
    ReleaseAll
    End

Route215_BagIsFull:
    Common_MessageBagIsFull
    CloseMessage
    ReleaseAll
    End

Route215_ArrowSignpostWest:
    ShowArrowSign Route215_Text_SignCelesticTownSolaceonTown
    End

Route215_ArrowSignpostVeilstoneCity:
    ShowArrowSign Route215_Text_SignRt215VeilstoneCity
    End

Route215_TrainerTips:
    ShowScrollingSign Route215_Text_TrainerTipsPhysicalSpecial
    End

Route215_JoggerScott:
    NPCMessage Route215_Text_DontOverdoIt
    End

Route215_JoggerCraig:
    NPCMessage Route215_Text_ImOnlyHuman
    End

    .balign 4, 0
