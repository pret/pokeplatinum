#include "macros/scrcmd.inc"
#include "res/text/bank/floaroma_town_pokecenter_1f.h"
#include "res/field/events/events_floaroma_town_pokecenter_1f.h"


    ScriptEntry FloaromaTownPokecenter1F_Nurse
    ScriptEntry FloaromaTownPokecenter1F_PokefanM
    ScriptEntry FloaromaTownPokecenter1F_BattleGirl
    ScriptEntry FloaromaTownPokecenter1F_AceTrainerF
    ScriptEntryEnd

FloaromaTownPokecenter1F_Nurse:
    Common_CallPokecenterNurse LOCALID_POKECENTER_NURSE
    End

FloaromaTownPokecenter1F_PokefanM:
    NPCMessage FloaromaTownPokecenter1F_Text_IfYouveGotPokemonWithYouItsSafeToGoOffTravelingAlone
    End

FloaromaTownPokecenter1F_BattleGirl:
    NPCMessage FloaromaTownPokecenter1F_Text_IHadABattleTheOtherDayAndMyPokemonsHPGotLow
    End

FloaromaTownPokecenter1F_AceTrainerF:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfGe VAR_VALLEY_WINDWORKS_TEAM_GALACTIC_STATE, 2, FloaromaTownPokecenter1F_ItsALongWayFromHereToEternaCity
    Message FloaromaTownPokecenter1F_Text_ThereveBeenProblemsWithTheElectricPowerLately
    WaitButton
    CloseMessage
    ReleaseAll
    End

FloaromaTownPokecenter1F_ItsALongWayFromHereToEternaCity:
    Message FloaromaTownPokecenter1F_Text_ItsALongWayFromHereToEternaCity
    WaitButton
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
