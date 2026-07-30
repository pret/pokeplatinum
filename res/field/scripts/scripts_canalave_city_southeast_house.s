#include "macros/scrcmd.inc"
#include "res/text/bank/canalave_city_southeast_house.h"


    ScriptEntry CanalaveCitySoutheastHouse_AceTrainerF
    ScriptEntry CanalaveCitySoutheastHouse_Lass
    ScriptEntryEnd

CanalaveCitySoutheastHouse_AceTrainerF:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_RECEIVED_CANALAVE_CITY_SOUTHEAST_HOUSE_TM48, CanalaveCitySoutheastHouse_ExplainSkillSwap
    Message CanalaveCitySoutheastHouse_Text_IFoundThis
    SetVar VAR_0x8004, ITEM_TM48
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, CanalaveCitySoutheastHouse_BagIsFull
    Common_GiveItemQuantity
    SetFlag FLAG_RECEIVED_CANALAVE_CITY_SOUTHEAST_HOUSE_TM48
    GoTo CanalaveCitySoutheastHouse_ExplainSkillSwap
    End

CanalaveCitySoutheastHouse_ExplainSkillSwap:
    Message CanalaveCitySoutheastHouse_Text_ExplainSkillSwap
    WaitButton
    CloseMessage
    ReleaseAll
    End

CanalaveCitySoutheastHouse_BagIsFull:
    Common_MessageBagIsFull
    CloseMessage
    ReleaseAll
    End

CanalaveCitySoutheastHouse_Lass:
    NPCMessage CanalaveCitySoutheastHouse_Text_OtherLandsPopulated
    End

    .balign 4, 0
