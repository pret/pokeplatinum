#include "macros/scrcmd.inc"
#include "res/text/bank/jubilife_city_southwest_house_2f.h"


    ScriptEntry JubilifeCitySouthwestHouse2F_AceTrainerM
    ScriptEntry JubilifeCitySouthwestHouse2F_Beauty
    ScriptEntry JubilifeCitySouthwestHouse2F_Collector
    ScriptEntry JubilifeCitySouthwestHouse2F_Lass
    ScriptEntryEnd

JubilifeCitySouthwestHouse2F_AceTrainerM:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message JubilifeCitySouthwestHouse2F_Text_WeComeFromFarawayLand
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

JubilifeCitySouthwestHouse2F_Beauty:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message JubilifeCitySouthwestHouse2F_Text_ILikeLookAtPokemonIGetFromFriendInTrade
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

JubilifeCitySouthwestHouse2F_Collector:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message JubilifeCitySouthwestHouse2F_Text_YouCanTradePokemonWithPeopleAroundTheWorldOnNintendoWFC
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

JubilifeCitySouthwestHouse2F_Lass:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message JubilifeCitySouthwestHouse2F_Text_WhenYouConnectWithPeopleOnNintendoWFCItsHardToBe
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
