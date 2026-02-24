#include "macros/scrcmd.inc"
#include "res/text/bank/menu_entries.h"
#include "res/text/bank/oreburgh_city_pokecenter_1f.h"
#include "res/field/events/events_oreburgh_city_pokecenter_1f.h"


    ScriptEntry OreburghCityPokecenter1F_Nurse
    ScriptEntry OreburghCityPokecenter1F_NinjaBoy
    ScriptEntry OreburghCityPokecenter1F_AceTrainerF
    ScriptEntry OreburghCityPokecenter1F_Psychic
    ScriptEntry OreburghCityPokecenter1F_Gentleman
    ScriptEntry OreburghCityPokecenter1F_KidWithNDSWest
    ScriptEntry OreburghCityPokecenter1F_KidWithNDSEast
    ScriptEntryEnd

OreburghCityPokecenter1F_Nurse:
    Common_CallPokecenterNurse LOCALID_POKECENTER_NURSE
    End

OreburghCityPokecenter1F_NinjaBoy:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message OreburghCityPokecenter1F_Text_YayIGotAPalPadAtThePokemonWiFiClubDownstairs
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

OreburghCityPokecenter1F_AceTrainerF:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message OreburghCityPokecenter1F_Text_SwitchOnThePCAtAnyPokemonCenter
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

OreburghCityPokecenter1F_Psychic:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_CHOSE_TRAINER_CLASS, OreburghCityPokecenter1F_HowAboutTellingMeWhatKindOfTrainerYouLike
    Message OreburghCityPokecenter1F_Text_WhatIsYourFavoriteKindOfTrainerCanYouTellMe
    GoTo OreburghCityPokecenter1F_WhichKindOfTrainerWouldYouLikeToBe

OreburghCityPokecenter1F_HowAboutTellingMeWhatKindOfTrainerYouLike:
    BufferTrainerClassFromAppearance 0
    Message OreburghCityPokecenter1F_Text_HowAboutTellingMeWhatKindOfTrainerYouLike
    GoTo OreburghCityPokecenter1F_WhichKindOfTrainerWouldYouLikeToBe

OreburghCityPokecenter1F_WhichKindOfTrainerWouldYouLikeToBe:
    Message OreburghCityPokecenter1F_Text_WhichKindOfTrainerWouldYouLikeToBe
    LoadTrainerAppearances
    InitGlobalTextMenu 1, 1, 0, VAR_RESULT
    AddMenuEntryImm MenuEntries_Text_TrainerAppearanceVariant1, 0
    AddMenuEntryImm MenuEntries_Text_TrainerAppearanceVariant2, 1
    AddMenuEntryImm MenuEntries_Text_TrainerAppearanceVariant3, 2
    AddMenuEntryImm MenuEntries_Text_TrainerAppearanceVariant4, 3
    AddMenuEntryImm MenuEntries_Text_TrainerAppearancesExit, 4
    ShowMenu
    SetVar VAR_0x8004, VAR_RESULT
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 4, OreburghCityPokecenter1F_OKThenIllJustTalkToYouLater
    GoToIfEq VAR_0x8008, -2, OreburghCityPokecenter1F_OKThenIllJustTalkToYouLater
    ScrCmd_155 VAR_0x8004, VAR_0x8005
    BufferTrainerClassNameWithArticle 0, VAR_0x8005
    CapitalizeFirstLetter 0
    Message OreburghCityPokecenter1F_Text_AskThisIsTheKindOfTrainerYouWantToBe
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, OreburghCityPokecenter1F_SetTrainerClass
    GoTo OreburghCityPokecenter1F_WhichKindOfTrainerWouldYouLikeToBe

OreburghCityPokecenter1F_OKThenIllJustTalkToYouLater:
    Message OreburghCityPokecenter1F_Text_OKThenIllJustTalkToYouLater
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

OreburghCityPokecenter1F_SetTrainerClass:
    BufferTrainerClassNameWithArticle 0, VAR_0x8005
    Message OreburghCityPokecenter1F_Text_ISeeSoThisIsTheKindOfTrainerYouLike
    SetFlag FLAG_CHOSE_TRAINER_CLASS
    ScrCmd_29C VAR_0x8004, VAR_0x8005
    ScrCmd_156 VAR_0x8005
    GoTo OreburghCityPokecenter1F_OKThenIllJustTalkToYouLater

OreburghCityPokecenter1F_Gentleman:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_GAME_COMPLETED, OreburghCityPokecenter1F_WhatOrWhoIsThisTeamGalactic
    Message OreburghCityPokecenter1F_Text_WhatOrWhoIsThisTeamGalacticItsAMystery
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

OreburghCityPokecenter1F_WhatOrWhoIsThisTeamGalactic:
    Message OreburghCityPokecenter1F_Text_WhatOrWhoIsThisTeamGalactic
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

OreburghCityPokecenter1F_KidWithNDSWest:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message OreburghCityPokecenter1F_Text_NowYouCanCaptureItAsABattleVideoUsingAVsRecorder
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

OreburghCityPokecenter1F_KidWithNDSEast:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message OreburghCityPokecenter1F_Text_CoolYouHaveAVsRecorder
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
