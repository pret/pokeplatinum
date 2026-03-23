#include "macros/scrcmd.inc"
#include "res/text/bank/solaceon_ruins_room_2.h"
#include "res/field/events/events_solaceon_ruins_room_2.h"


    ScriptEntry SolaceonRuinsRoom2_Hiker
    ScriptEntryEnd

SolaceonRuinsRoom2_Hiker:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_RECEIVED_SOLACEON_RUINS_ROOM_2_GREEN_SHARD, SolaceonRuinsRoom2_IveFinallyGotDefog
    GoToIfSet FLAG_DID_NOT_LOAN_HM_DEFOG, SolaceonRuinsRoom2_AskLoanHMDefog
    CheckItem ITEM_HM05, 1, VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, SolaceonRuinsRoom2_PlayerHasHMDefog
    Message SolaceonRuinsRoom2_Text_HMDefogIsInTheseRuins
    WaitButton
    CloseMessage
    ReleaseAll
    End

SolaceonRuinsRoom2_PlayerHasHMDefog:
    Message SolaceonRuinsRoom2_Text_HMDefogIsInTheseRuins2
    GoTo SolaceonRuinsRoom2_AskLoanHMDefog
    End

SolaceonRuinsRoom2_AskLoanHMDefog:
    ApplyMovement LOCALID_HIKER, SolaceonRuinsRoom2_Movement_HikerExclamationMark
    WaitMovement
    Message SolaceonRuinsRoom2_Text_CanYouLoanHMDefogToMe
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, SolaceonRuinsRoom2_LoanHMDefog
    GoToIfEq VAR_RESULT, MENU_NO, SolaceonRuinsRoom2_DontLoanHMDefog
    End

SolaceonRuinsRoom2_LoanHMDefog:
    Message SolaceonRuinsRoom2_Text_ThanksYoureMyRescuer
    SetVar VAR_0x8004, ITEM_GREEN_SHARD
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, SolaceonRuinsRoom2_BagIsFull
    SetFlag FLAG_RECEIVED_SOLACEON_RUINS_ROOM_2_GREEN_SHARD
    Common_GiveItemQuantityNoLineFeed
    CloseMessage
    ReleaseAll
    End

SolaceonRuinsRoom2_BagIsFull:
    Common_MessageBagIsFull
    CloseMessage
    ReleaseAll
    End

SolaceonRuinsRoom2_DontLoanHMDefog:
    SetFlag FLAG_DID_NOT_LOAN_HM_DEFOG
    Message SolaceonRuinsRoom2_Text_ItsNotLikeItsGoingToWearOut
    WaitButton
    CloseMessage
    ReleaseAll
    End

SolaceonRuinsRoom2_IveFinallyGotDefog:
    Message SolaceonRuinsRoom2_Text_IveFinallyGotDefog
    WaitButton
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
SolaceonRuinsRoom2_Movement_HikerExclamationMark:
    EmoteExclamationMark
    EndMovement
