#include "macros/scrcmd.inc"
#include "res/text/bank/route_211_east.h"


    ScriptEntry Route211East_AceTrainerM
    ScriptEntry Route211East_ArrowSignMtCoronet
    ScriptEntry Route211East_TrainerTips
    ScriptEntry Route211East_ArrowSignCelesticTown
    ScriptEntryEnd

Route211East_AceTrainerM:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    GoToIfSet FLAG_RECEIVED_ROUTE_211_EAST_TM77, Route211East_ExplainPsychUp
    Message Route211East_Text_ImStrong
    CloseMessage
    FacePlayer
    ApplyMovement VAR_LAST_TALKED, Route211East_Movement_ExclamationMark
    WaitMovement
    Message Route211East_Text_YouStartledMe
    SetVar VAR_0x8004, ITEM_TM77
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, Route211East_BagIsFull
    Common_GiveItemQuantity
    SetFlag FLAG_RECEIVED_ROUTE_211_EAST_TM77
    GoTo Route211East_ExplainPsychUp

Route211East_ExplainPsychUp:
    FacePlayer
    Message Route211East_Text_ExplainPsychUp
    WaitButton
    CloseMessage
    ReleaseAll
    End

Route211East_BagIsFull:
    Common_MessageBagIsFull
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
Route211East_Movement_ExclamationMark:
    EmoteExclamationMark
    EndMovement

Route211East_ArrowSignMtCoronet:
    ShowArrowSign Route211East_Text_SignMtCoronet
    End

Route211East_TrainerTips:
    ShowScrollingSign Route211East_Text_TrainerTipsCheckSupply
    End

Route211East_ArrowSignCelesticTown:
    ShowArrowSign Route211East_Text_SignCelesticTown
    End

    .balign 4, 0
