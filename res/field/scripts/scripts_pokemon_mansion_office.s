#include "macros/scrcmd.inc"
#include "res/text/bank/pokemon_mansion_office.h"
#include "res/field/events/events_pokemon_mansion_office.h"


    ScriptEntry PokemonMansionOffice_OnTransition
    ScriptEntry PokemonMansionOffice_MrBacklot
    ScriptEntry PokemonMansionOffice_OldMan
    ScriptEntry PokemonMansionOffice_Policeman
    ScriptEntry PokemonMansionOffice_TriggerBlockStatue
    ScriptEntry PokemonMansionOffice_Statue
    ScriptEntry PokemonMansionOffice_Book
    ScriptEntryEnd

PokemonMansionOffice_OnTransition:
    GetHour VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, 0, PokemonMansionOffice_SetBlockStatue
    GoToIfEq VAR_MAP_LOCAL_0, 1, PokemonMansionOffice_SetBlockStatue
    GoToIfLe VAR_MAP_LOCAL_0, 5, PokemonMansionOffice_SetDontBlockStatue
    GoTo PokemonMansionOffice_SetBlockStatue

PokemonMansionOffice_SetBlockStatue:
    ClearFlag FLAG_HIDE_POKEMON_MANSION_OFFICE_POLICEMAN
    SetVar VAR_POKEMON_MANSION_OFFICE_BLOCK_STATUE_STATE, 0
    End

PokemonMansionOffice_SetDontBlockStatue:
    SetFlag FLAG_HIDE_POKEMON_MANSION_OFFICE_POLICEMAN
    SetVar VAR_POKEMON_MANSION_OFFICE_BLOCK_STATUE_STATE, 1
    End

PokemonMansionOffice_MrBacklot:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_ADDED_TROPHY_GARDEN_MON, PokemonMansionOffice_ThereAreCutePokemon
    GoToIfEq VAR_MAP_LOCAL_B, 1, PokemonMansionOffice_ThereAreCutePokemon
    GetNationalDexEnabled VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, PokemonMansionOffice_YouAreEnviousYes
    GoTo PokemonMansionOffice_WelcomeToMansion

PokemonMansionOffice_WelcomeToMansion:
    Message PokemonMansionOffice_Text_WelcomeToMansion
    WaitButton
    CloseMessage
    ReleaseAll
    End

PokemonMansionOffice_YouAreEnviousYes:
    Message PokemonMansionOffice_Text_YouAreEnviousYes
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, PokemonMansionOffice_YouAreEnviousYes2
    GoToIfEq VAR_RESULT, MENU_NO, PokemonMansionOffice_IKnowYoureEnvious
    End

PokemonMansionOffice_IKnowYoureEnvious:
    Message PokemonMansionOffice_Text_IKnowYoureEnvious
    WaitButton
    CloseMessage
    ReleaseAll
    End

PokemonMansionOffice_YouAreEnviousYes2:
    Message PokemonMansionOffice_Text_YouAreEnviousYes2
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, PokemonMansionOffice_AddThrophyGardenMon
    GoToIfEq VAR_RESULT, MENU_NO, PokemonMansionOffice_IKnowYoureEnvious
    End

PokemonMansionOffice_AddThrophyGardenMon:
    AddTrophyGardenMon
    GetTrophyGardenSlot1Species VAR_0x8000
    BufferSpeciesNameFromVar 0, VAR_0x8000, 0, 0
    Message PokemonMansionOffice_Text_IBetYouAre
    GetPlayerMapPos VAR_0x8001, VAR_0x8002
    ApplyMovement LOCALID_OLD_MAN, PokemonMansionOffice_Movement_OldManExclamationMarkFaceEast
    WaitMovement
    Message PokemonMansionOffice_Text_ItDoesntExist
    ApplyMovement LOCALID_MR_BACKLOT, PokemonMansionOffice_Movement_MrBacklotExclamationMarkWalkOnSpotWest
    WaitMovement
    Message PokemonMansionOffice_Text_WhatAreYouSaying
    Message PokemonMansionOffice_Text_RightAwaySir
    CloseMessage
    ApplyMovement LOCALID_OLD_MAN, PokemonMansionOffice_Movement_OldManLeave
    WaitMovement
    RemoveObject LOCALID_OLD_MAN
    SetVar VAR_MAP_LOCAL_B, 1
    Call PokemonMansionOffice_MrBacklotFacePlayer
    SetFlag FLAG_ADDED_TROPHY_GARDEN_MON
    GoTo PokemonMansionOffice_ThereAreCutePokemon

PokemonMansionOffice_ThereAreCutePokemon:
    GetTrophyGardenSlot1Species VAR_0x8000
    BufferSpeciesNameFromVar 0, VAR_0x8000, 0, 0
    Message PokemonMansionOffice_Text_ThereAreCutePokemon
    WaitButton
    CloseMessage
    ReleaseAll
    End

PokemonMansionOffice_MrBacklotFacePlayer:
    GoToIfEq VAR_0x8001, 4, PokemonMansionOffice_MrBacklotWalkOnSpotWest
    GoToIfEq VAR_0x8001, 6, PokemonMansionOffice_MrBacklotWalkOnSpotEast
    GoToIfEq VAR_0x8002, 6, PokemonMansionOffice_MrBacklotWalkOnSpotNorth
    GoTo PokemonMansionOffice_MrBacklotWalkOnSpotSouth

PokemonMansionOffice_MrBacklotWalkOnSpotWest:
    ApplyMovement LOCALID_MR_BACKLOT, PokemonMansionOffice_Movement_MrBacklotWalkOnSpotWest
    WaitMovement
    Return

PokemonMansionOffice_MrBacklotWalkOnSpotEast:
    ApplyMovement LOCALID_MR_BACKLOT, PokemonMansionOffice_Movement_MrBacklotWalkOnSpotEast
    WaitMovement
    Return

PokemonMansionOffice_MrBacklotWalkOnSpotNorth:
    ApplyMovement LOCALID_MR_BACKLOT, PokemonMansionOffice_Movement_MrBacklotWalkOnSpotNorth
    WaitMovement
    Return

PokemonMansionOffice_MrBacklotWalkOnSpotSouth:
    ApplyMovement LOCALID_MR_BACKLOT, PokemonMansionOffice_Movement_MrBacklotWalkOnSpotSouth
    WaitMovement
    Return

    .balign 4, 0
PokemonMansionOffice_Movement_OldManFaceSouth:
    FaceSouth
    EndMovement

    .balign 4, 0
PokemonMansionOffice_Movement_OldManExclamationMarkFaceEast:
    EmoteExclamationMark
    Delay16
    FaceEast
    EndMovement

    .balign 4, 0
PokemonMansionOffice_Movement_MrBacklotExclamationMarkWalkOnSpotWest:
    EmoteExclamationMark
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
PokemonMansionOffice_Movement_OldManLeave:
    WalkNormalSouth 2
    WalkNormalEast
    FaceSouth
    SetInvisible
    EndMovement

    .balign 4, 0
PokemonMansionOffice_Movement_MrBacklotWalkOnSpotWest:
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
PokemonMansionOffice_Movement_MrBacklotWalkOnSpotEast:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
PokemonMansionOffice_Movement_MrBacklotWalkOnSpotNorth:
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
PokemonMansionOffice_Movement_MrBacklotWalkOnSpotSouth:
    WalkOnSpotNormalSouth
    EndMovement

PokemonMansionOffice_OldMan:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GetNationalDexEnabled VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, PokemonMansionOffice_OldManNationalDexEnabled
    GoTo PokemonMansionOffice_OldManMessage

PokemonMansionOffice_OldManNationalDexEnabled:
    GoToIfSet FLAG_TALKED_TO_POKEMON_MANSION_OFFICE_OLD_MAN_NATIONAL_DEX, PokemonMansionOffice_OldManMessage
    GoTo PokemonMansionOffice_HowWasTrophyGarden
    End

PokemonMansionOffice_HowWasTrophyGarden:
    Message PokemonMansionOffice_Text_HowWasTrophyGarden
    SetFlag FLAG_TALKED_TO_POKEMON_MANSION_OFFICE_OLD_MAN_NATIONAL_DEX
    WaitButton
    CloseMessage
    ApplyMovement LOCALID_OLD_MAN, PokemonMansionOffice_Movement_OldManFaceSouth
    WaitMovement
    ReleaseAll
    End

PokemonMansionOffice_OldManMessage:
    GoToIfSet FLAG_ADDED_TROPHY_GARDEN_MON, PokemonMansionOffice_ThereWereSomePokemon
    CheckGameCompleted VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, PokemonMansionOffice_MessageGameCompleted
    GetRandom VAR_RESULT, 2
    CallIfEq VAR_RESULT, 0, PokemonMansionOffice_MasterIsWonderful
    CallIfEq VAR_RESULT, 1, PokemonMansionOffice_MasterEnjoysShowingGarden
    WaitButton
    CloseMessage
    ApplyMovement LOCALID_OLD_MAN, PokemonMansionOffice_Movement_OldManFaceSouth
    WaitMovement
    ReleaseAll
    End

PokemonMansionOffice_MasterIsWonderful:
    Message PokemonMansionOffice_Text_MasterIsWonderful
    Return

PokemonMansionOffice_MasterEnjoysShowingGarden:
    Message PokemonMansionOffice_Text_MasterEnjoysShowingGarden
    Return

PokemonMansionOffice_MessageGameCompleted:
    GetRandom VAR_RESULT, 2
    CallIfEq VAR_RESULT, 0, PokemonMansionOffice_MasterIsWonderful2
    CallIfEq VAR_RESULT, 1, PokemonMansionOffice_MasterTookStroll
    WaitButton
    CloseMessage
    ApplyMovement LOCALID_OLD_MAN, PokemonMansionOffice_Movement_OldManFaceSouth
    WaitMovement
    ReleaseAll
    End

PokemonMansionOffice_MasterIsWonderful2:
    Message PokemonMansionOffice_Text_MasterIsWonderful
    Return

PokemonMansionOffice_MasterTookStroll:
    Message PokemonMansionOffice_Text_MasterTookStroll
    Return

PokemonMansionOffice_ThereWereSomePokemon:
    GetTrophyGardenSlot1Species VAR_0x8000
    BufferSpeciesNameFromVar 0, VAR_0x8000, 0, 0
    Message PokemonMansionOffice_Text_ThereWereSomePokemon
    WaitButton
    CloseMessage
    ApplyMovement LOCALID_OLD_MAN, PokemonMansionOffice_Movement_OldManFaceSouth
    WaitMovement
    ReleaseAll
    End

PokemonMansionOffice_Policeman:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message PokemonMansionOffice_Text_LookDontTouchStatue
    WaitButton
    CloseMessage
    ApplyMovement LOCALID_POLICEMAN, PokemonMansionOffice_Movement_PolicemanFaceSouth
    WaitMovement
    ReleaseAll
    End

    .balign 4, 0
PokemonMansionOffice_Movement_PolicemanFaceSouth:
    FaceSouth
    EndMovement

    .balign 4, 0
PokemonMansionOffice_Movement_PolicemanFaceWest:
    FaceWest
    EndMovement

PokemonMansionOffice_TriggerBlockStatue:
    LockAll
    ApplyMovement LOCALID_POLICEMAN, PokemonMansionOffice_Movement_PolicemanFaceWest
    WaitMovement
    Message PokemonMansionOffice_Text_SorryDontTouchStatue
    CloseMessage
    ApplyMovement LOCALID_PLAYER, PokemonMansionOffice_Movement_PlayerWalkBackFromStatue
    ApplyMovement LOCALID_POLICEMAN, PokemonMansionOffice_Movement_PolicemanFaceSouth
    WaitMovement
    ReleaseAll
    End

    .balign 4, 0
PokemonMansionOffice_Movement_PlayerWalkBackFromStatue:
    WalkNormalSouth
    FaceNorth
    EndMovement

PokemonMansionOffice_Statue:
    EventMessage PokemonMansionOffice_Text_ExpensivePokemonStatue
    End

PokemonMansionOffice_Book:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    Message PokemonMansionOffice_Text_WouldYouReadBook
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, PokemonMansionOffice_ReadBook
    GoToIfEq VAR_RESULT, MENU_NO, PokemonMansionOffice_PutBookBack
    End

PokemonMansionOffice_ReadBook:
    Message PokemonMansionOffice_Text_ManaphyInfo
    GoToIfSet FLAG_SKIP_POKEMON_MANSION_OFFICE_BOOK_SEEN_MANAPHY_CHECK, PokemonMansionOffice_PutBookBack
    CheckHasSeenSpecies SPECIES_MANAPHY, VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, PokemonMansionOffice_AlreadySawManaphy
    DrawPokemonPreview SPECIES_MANAPHY, GENDER_MALE
    WaitABPress
    RemovePokemonPreview
    SetFlag FLAG_SKIP_POKEMON_MANSION_OFFICE_BOOK_SEEN_MANAPHY_CHECK
    Message PokemonMansionOffice_Text_ManaphyAddedToPokedex
    GoTo PokemonMansionOffice_BookEnd
    End

PokemonMansionOffice_AlreadySawManaphy:
    SetFlag FLAG_SKIP_POKEMON_MANSION_OFFICE_BOOK_SEEN_MANAPHY_CHECK
    GoTo PokemonMansionOffice_PutBookBack
    End

PokemonMansionOffice_PutBookBack:
    BufferPlayerName 0
    Message PokemonMansionOffice_Text_PlayerPutBookBack
    GoTo PokemonMansionOffice_BookEnd
    End

PokemonMansionOffice_BookEnd:
    WaitButton
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
