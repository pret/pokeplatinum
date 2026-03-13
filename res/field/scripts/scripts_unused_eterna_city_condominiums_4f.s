#include "macros/scrcmd.inc"
#include "res/text/bank/unused_eterna_city_condominiums_4f.h"


    ScriptEntry EternaCityCondominiums4F_ExpertF
    ScriptEntryEnd

EternaCityCondominiums4F_ExpertF:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_RECEIVED_ETERNA_CITY_CONDOMINIUMS_4F_TM04, EternaCityCondominiums4F_FolksLikeMeHaveALongHistoryWeCanLookBackOn
    Message EternaCityCondominiums4F_Text_IveHadThisTMRecycleForSuchALongTimeNow
    SetVar VAR_0x8004, ITEM_TM04
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, EternaCityCondominiums4F_BagIsFull
    SetFlag FLAG_RECEIVED_ETERNA_CITY_CONDOMINIUMS_4F_TM04
    Common_GiveItemQuantityNoLineFeed
    CloseMessage
    ReleaseAll
    End

EternaCityCondominiums4F_FolksLikeMeHaveALongHistoryWeCanLookBackOn:
    Message EternaCityCondominiums4F_Text_FolksLikeMeHaveALongHistoryWeCanLookBackOn
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

EternaCityCondominiums4F_BagIsFull:
    Common_MessageBagIsFull
    CloseMessage
    ReleaseAll
    End
