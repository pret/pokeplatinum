#include "macros/scrcmd.inc"
#include "res/text/bank/jubilife_city_pokecenter_1f.h"
#include "res/field/events/events_jubilife_city_pokecenter_1f.h"


    ScriptEntry JubilifeCityPokecenter1F_Nurse
    ScriptEntry JubilifeCityPokecenter1F_Twin
    ScriptEntry JubilifeCityPokecenter1F_SchoolKidM
    ScriptEntry JubilifeCityPokecenter1F_TrainerF
    ScriptEntryEnd

JubilifeCityPokecenter1F_Nurse:
    Common_CallPokecenterNurse LOCALID_POKECENTER_NURSE
    End

JubilifeCityPokecenter1F_Twin:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message JubilifeCityPokecenter1F_Text_AllTypesHaveStrengthsAndWeaknesses
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

JubilifeCityPokecenter1F_SchoolKidM:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message JubilifeCityPokecenter1F_Text_InTheUnionRoomUpstairsYouCanChatAndTradeWithOtherPeople
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

JubilifeCityPokecenter1F_TrainerF:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message JubilifeCityPokecenter1F_Text_YouCanStillCatchAPokemonIfYouAlreadyHaveSixTravelingWithYou
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
