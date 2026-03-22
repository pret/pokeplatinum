#include "macros/scrcmd.inc"
#include "res/text/bank/eterna_city_condominiums_2f.h"


    ScriptEntry EternaCityCondominiums2F_ExpertF
    ScriptEntry EternaCityCondominiums2F_Twin
    ScriptEntry EternaCityCondominiums2F_ExpertM
    ScriptEntryEnd

EternaCityCondominiums2F_ExpertF:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_RECEIVED_ETERNA_CITY_CONDOMINIUMS_2F_TM67, EternaCityCondominiums2F_FolksLikeMeHaveALongHistoryWeCanLookBackOn
    Message EternaCityCondominiums2F_Text_IveHadThisTMRecycleForSuchALongTimeNow
    SetVar VAR_0x8004, ITEM_TM67
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, EternaCityCondominiums2F_BagIsFull
    SetFlag FLAG_RECEIVED_ETERNA_CITY_CONDOMINIUMS_2F_TM67
    Common_GiveItemQuantityNoLineFeed
    CloseMessage
    ReleaseAll
    End

EternaCityCondominiums2F_BagIsFull:
    Common_MessageBagIsFull
    CloseMessage
    ReleaseAll
    End

EternaCityCondominiums2F_FolksLikeMeHaveALongHistoryWeCanLookBackOn:
    Message EternaCityCondominiums2F_Text_FolksLikeMeHaveALongHistoryWeCanLookBackOn
    WaitButton
    CloseMessage
    ReleaseAll
    End

EternaCityCondominiums2F_Twin:
    NPCMessage EternaCityCondominiums2F_Text_GardeniaOurGymLeaderGoesOutToEternaForestEverySoOften
    End

EternaCityCondominiums2F_ExpertM:
    NPCMessage EternaCityCondominiums2F_Text_TheMoveRecycleIsToBeUsedDuringBattle
    End

    .balign 4, 0
