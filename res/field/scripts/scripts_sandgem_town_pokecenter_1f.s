#include "macros/scrcmd.inc"
#include "res/text/bank/sandgem_town_pokecenter_1f.h"
#include "res/field/events/events_sandgem_town_pokecenter_1f.h"


    ScriptEntry SandgemTownPokecenter1F_PokecenterNurse
    ScriptEntry SandgemTownPokecenter1F_BreederM
    ScriptEntry SandgemTownPokecenter1F_ExpertM
    ScriptEntry SandgemTownPokecenter1F_Lass
    ScriptEntryEnd

SandgemTownPokecenter1F_PokecenterNurse:
    Common_CallPokecenterNurse LOCALID_POKECENTER_NURSE
    End

SandgemTownPokecenter1F_BreederM:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message SandgemTownPokecenter1F_Text_ThatLadyAtTheCounterWillHealYourPokemon
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

SandgemTownPokecenter1F_ExpertM:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message SandgemTownPokecenter1F_Text_DoYouSeeThatPCOverThere
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

SandgemTownPokecenter1F_Lass:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message SandgemTownPokecenter1F_Text_TheTopFloorIsTheCommunicationClub
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
