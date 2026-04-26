#include "macros/scrcmd.inc"
#include "res/text/bank/survival_area_pokecenter_1f.h"
#include "res/field/events/events_survival_area_pokecenter_1f.h"


    ScriptEntry SurvivalAreaPokecenter1F_Nurse
    ScriptEntry SurvivalAreaPokecenter1F_AceTrainerM
    ScriptEntry SurvivalAreaPokecenter1F_ExpertM
    ScriptEntry SurvivalAreaPokecenter1F_Psychic
    ScriptEntryEnd

SurvivalAreaPokecenter1F_Nurse:
    Common_CallPokecenterNurse LOCALID_POKECENTER_NURSE
    End

SurvivalAreaPokecenter1F_AceTrainerM:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_VISITED_BATTLEGROUND, SurvivalAreaPokecenter1F_ChallengeWithoutOwnPokemon
    Message SurvivalAreaPokecenter1F_Text_BuildingNextDoor
    WaitButton
    CloseMessage
    ReleaseAll
    End

SurvivalAreaPokecenter1F_ChallengeWithoutOwnPokemon:
    Message SurvivalAreaPokecenter1F_Text_ChallengeWithoutOwnPokemon
    WaitButton
    CloseMessage
    ReleaseAll
    End

SurvivalAreaPokecenter1F_ExpertM:
    NPCMessage SurvivalAreaPokecenter1F_Text_CoordinationIsVital
    End

SurvivalAreaPokecenter1F_Psychic:
    NPCMessage SurvivalAreaPokecenter1F_Text_ShapedByEgg
    End

    .balign 4, 0
