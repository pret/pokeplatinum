#include "macros/scrcmd.inc"
#include "res/text/bank/jubilife_tv_2f.h"


    ScriptEntry JubilifeTV2F_Idol
    ScriptEntry JubilifeTV2F_GymGuide
    ScriptEntry JubilifeTV2F_Roughneck
    ScriptEntry JubilifeTV2F_OnTransition
    ScriptEntryEnd

JubilifeTV2F_OnTransition:
    CheckTVInterviewEligible TV_PROGRAM_SEGMENT_RIGHT_ON_PHOTO_CORNER, VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, 0, JubilifeTV2F_SetFlagHideJubilifeTV2FReporter
    ClearFlag FLAG_HIDE_JUBILIFE_TV_2F_REPORTER
    End

JubilifeTV2F_SetFlagHideJubilifeTV2FReporter:
    SetFlag FLAG_HIDE_JUBILIFE_TV_2F_REPORTER
    End

JubilifeTV2F_Idol:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message JubilifeTV2F_Text_WhatAccessoriesWillGoWellWithMyDressToday
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

JubilifeTV2F_GymGuide:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet VAR_OBTAINED_ACCESSORY_STARTER_MASK, JubilifeTV2F_IHopeYouGetIntoCollectingAccessoriesForYourPokemon
    GetPlayerStarterSpecies VAR_RESULT
    CallIfEq VAR_RESULT, SPECIES_TURTWIG, JubilifeTV2F_SetAccessoryTurtwigMask
    CallIfEq VAR_RESULT, SPECIES_CHIMCHAR, JubilifeTV2F_SetAccessoryChimcharMask
    CallIfEq VAR_RESULT, SPECIES_PIPLUP, JubilifeTV2F_SetAccessoryPiplupMask
    SetVar VAR_ACCESSORY_STARTER_MASK, VAR_0x8004
    BufferAccessoryNameWithArticle 0, VAR_0x8004
    Message JubilifeTV2F_Text_SoAGiftForOurFutureStar
    SetVar VAR_0x8005, 1
    Common_GiveAccessoryWaitForConfirm
    SetFlag VAR_OBTAINED_ACCESSORY_STARTER_MASK
    CloseMessage
    ReleaseAll
    End

JubilifeTV2F_IHopeYouGetIntoCollectingAccessoriesForYourPokemon:
    BufferAccessoryName 0, VAR_ACCESSORY_STARTER_MASK
    Message JubilifeTV2F_Text_IHopeYouGetIntoCollectingAccessoriesForYourPokemon
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

JubilifeTV2F_SetAccessoryTurtwigMask:
    SetVar VAR_0x8004, ACCESSORY_TURTWIG_MASK
    Return

JubilifeTV2F_SetAccessoryChimcharMask:
    SetVar VAR_0x8004, ACCESSORY_CHIMCHAR_MASK
    Return

JubilifeTV2F_SetAccessoryPiplupMask:
    SetVar VAR_0x8004, ACCESSORY_PIPLUP_MASK
    Return

JubilifeTV2F_Roughneck:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message JubilifeTV2F_Text_TheRoomAtTheBackIsOurDreamyFittingRoom
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
