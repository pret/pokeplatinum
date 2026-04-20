#include "macros/scrcmd.inc"
#include "res/text/bank/sunyshore_city_pokecenter_1f.h"
#include "res/field/events/events_sunyshore_city_pokecenter_1f.h"


    ScriptEntry SunyshoreCityPokecenter1F_Nurse
    ScriptEntry SunyshoreCityPokecenter1F_OldMan
    ScriptEntry SunyshoreCityPokecenter1F_NinjaBoy
    ScriptEntry SunyshoreCityPokecenter1F_MiddleAgedMan
    ScriptEntryEnd

SunyshoreCityPokecenter1F_Nurse:
    Common_CallPokecenterNurse LOCALID_POKECENTER_NURSE
    End

SunyshoreCityPokecenter1F_OldMan:
    NPCMessage SunyshoreCityPokecenter1F_Text_DreamedBecomingGymLeader
    End

SunyshoreCityPokecenter1F_NinjaBoy:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfBadgeAcquired BADGE_ID_BEACON, SunyshoreCityPokecenter1F_AwesomelyCoolEightBadges
    Message SunyshoreCityPokecenter1F_Text_ReallyCoolSevenBadges
    WaitButton
    CloseMessage
    ReleaseAll
    End

SunyshoreCityPokecenter1F_AwesomelyCoolEightBadges:
    Message SunyshoreCityPokecenter1F_Text_AwesomelyCoolEightBadges
    WaitButton
    CloseMessage
    ReleaseAll
    End

SunyshoreCityPokecenter1F_MiddleAgedMan:
    NPCMessage SunyshoreCityPokecenter1F_Text_RoadsOutOfSolarPanels
    End

    .balign 4, 0
