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
    Common_CallPokecenterNurse LOCALID_OREBURGH_NURSE
    End

OreburghCityPokecenter1F_NinjaBoy:
    NPCMessage OreburghCityPokecenter1F_Text_IGotAPalPadDownstairs
    End

OreburghCityPokecenter1F_AceTrainerF:
    NPCMessage OreburghCityPokecenter1F_Text_SwitchOnThePC
    End

OreburghCityPokecenter1F_Psychic:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_CHOSE_UNION_ROOM_APPEARANCE, OreburghCityPokecenter1F_WhatKindOfTrainerDoYouLike
    Message OreburghCityPokecenter1F_Text_TellMeFavoriteKindOfTrainer
    GoTo OreburghCityPokecenter1F_BeWhichKindOfTrainer

OreburghCityPokecenter1F_WhatKindOfTrainerDoYouLike:
    BufferTrainerClassFromAppearance 0
    Message OreburghCityPokecenter1F_Text_WhatKindOfTrainerDoYouLike
    GoTo OreburghCityPokecenter1F_BeWhichKindOfTrainer

OreburghCityPokecenter1F_BeWhichKindOfTrainer:
    Message OreburghCityPokecenter1F_Text_BeWhichKindOfTrainer
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
    GoToIfEq VAR_0x8008, 4, OreburghCityPokecenter1F_IllJustTalkToYouLater
    GoToIfEq VAR_0x8008, -2, OreburghCityPokecenter1F_IllJustTalkToYouLater
    GetTrainerInfoTrainerClass VAR_0x8004, VAR_0x8005
    BufferTrainerClassNameWithArticle 0, VAR_0x8005
    CapitalizeFirstLetter 0
    Message OreburghCityPokecenter1F_Text_IsThisWhatYouWantToBe
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, OreburghCityPokecenter1F_SetTrainerClass
    GoTo OreburghCityPokecenter1F_BeWhichKindOfTrainer

OreburghCityPokecenter1F_IllJustTalkToYouLater:
    Message OreburghCityPokecenter1F_Text_IllJustTalkToYouLater
    WaitButton
    CloseMessage
    ReleaseAll
    End

OreburghCityPokecenter1F_SetTrainerClass:
    BufferTrainerClassNameWithArticle 0, VAR_0x8005
    Message OreburghCityPokecenter1F_Text_SoThisIsWhatYouLike
    SetFlag FLAG_CHOSE_UNION_ROOM_APPEARANCE
    CalculateTrainerInfoAppearance VAR_0x8004, VAR_0x8005
    SetTrainerInfoAppearance VAR_0x8005
    GoTo OreburghCityPokecenter1F_IllJustTalkToYouLater

OreburghCityPokecenter1F_Gentleman:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_GAME_COMPLETED, OreburghCityPokecenter1F_WhatOrWhoIsTeamGalactic
    Message OreburghCityPokecenter1F_Text_TeamGalacticIsAMystery
    WaitButton
    CloseMessage
    ReleaseAll
    End

OreburghCityPokecenter1F_WhatOrWhoIsTeamGalactic:
    Message OreburghCityPokecenter1F_Text_WhatOrWhoIsTeamGalactic
    WaitButton
    CloseMessage
    ReleaseAll
    End

OreburghCityPokecenter1F_KidWithNDSWest:
    NPCMessage OreburghCityPokecenter1F_Text_CaptureBattleVideoUsingVsRecorder
    End

OreburghCityPokecenter1F_KidWithNDSEast:
    NPCMessage OreburghCityPokecenter1F_Text_CoolYouHaveAVsRecorder
    End

    .balign 4, 0
