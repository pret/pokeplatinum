#include "macros/scrcmd.inc"
#include "res/text/bank/mining_museum.h"
#include "res/text/bank/menu_entries.h"


    ScriptEntry MiningMuseum_AceTrainerF
    ScriptEntry MiningMuseum_FossilResearcher
    ScriptEntry MiningMuseum_Hiker
    ScriptEntry MiningMuseum_Twin
    ScriptEntry MiningMuseum_SchoolKidM
    ScriptEntry MiningMuseum_HowCoalIsMade1
    ScriptEntry MiningMuseum_HowCoalIsMade2
    ScriptEntry MiningMuseum_HowCoalIsMade3
    ScriptEntry MiningMuseum_DisplayCoalDifferentRegions
    ScriptEntry MiningMuseum_DisplayCategorizedSamples
    ScriptEntry MiningMuseum_DisplayLamps
    ScriptEntry MiningMuseum_DisplayTools
    ScriptEntry MiningMuseum_DisplayItems
    ScriptEntry MiningMuseum_PokemonBreederF
    ScriptEntry MiningMuseum_Collector
    ScriptEntry MiningMuseum_ExpertM
    ScriptEntryEnd

MiningMuseum_AceTrainerF:
    NPCMessage MiningMuseum_Text_WelcomeToMuseum
    End

MiningMuseum_FossilResearcher:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_MAP_LOCAL_0x01, MiningMuseum_ExtractingPokemon
    Message MiningMuseum_Text_FossilResearcherGreeting
    GoToIfUnset FLAG_RECEIVED_EXPLORER_KIT, MiningMuseum_NotYetReady
    GoToIfNe VAR_REVIVED_POKEMON_SPECIES, 0, MiningMuseum_PokemonRevival
    GetFossilCount VAR_0x8000
    GoToIfEq VAR_0x8000, 0, MiningMuseum_NoFossils
    Message MiningMuseum_Text_ShallIReviveFossil
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, MiningMuseum_DeclinedRevival
    GoToIfEq VAR_0x8000, 1, MiningMuseum_SingleFossilRevival
    SetVar VAR_0x8001, 0
    CheckItem ITEM_OLD_AMBER, 1, VAR_RESULT
    AddVar VAR_0x8001, VAR_RESULT
    CheckItem ITEM_HELIX_FOSSIL, 1, VAR_RESULT
    AddVar VAR_0x8001, VAR_RESULT
    CheckItem ITEM_DOME_FOSSIL, 1, VAR_RESULT
    AddVar VAR_0x8001, VAR_RESULT
    CheckItem ITEM_ROOT_FOSSIL, 1, VAR_RESULT
    AddVar VAR_0x8001, VAR_RESULT
    CheckItem ITEM_CLAW_FOSSIL, 1, VAR_RESULT
    AddVar VAR_0x8001, VAR_RESULT
    CheckItem ITEM_ARMOR_FOSSIL, 1, VAR_RESULT
    AddVar VAR_0x8001, VAR_RESULT
    CheckItem ITEM_SKULL_FOSSIL, 1, VAR_RESULT
    AddVar VAR_0x8001, VAR_RESULT
    GoToIfEq VAR_0x8001, 1, MiningMuseum_SingleFossilRevival
    SetVar VAR_0x8004, 0
    SetVar VAR_0x8005, 0
    InitGlobalTextMenu 1, 1, 0, VAR_0x8003
MiningMuseum_FossilMenuLoop:
    CallIfEq VAR_0x8005, 0, MiningMuseum_CheckHasOldAmber
    CallIfEq VAR_0x8005, 1, MiningMuseum_CheckHasHelixFossil
    CallIfEq VAR_0x8005, 2, MiningMuseum_CheckHasDomeFossil
    CallIfEq VAR_0x8005, 3, MiningMuseum_CheckHasRootFossil
    CallIfEq VAR_0x8005, 4, MiningMuseum_CheckHasClawFossil
    CallIfEq VAR_0x8005, 5, MiningMuseum_CheckHasArmorFossil
    CallIfEq VAR_0x8005, 6, MiningMuseum_CheckHasSkullFossil
    GoToIfEq VAR_RESULT, FALSE, MiningMuseum_FossilMenuNext
    CallIfEq VAR_0x8004, 0, MiningMuseum_SetOldAmberVar
    CallIfEq VAR_0x8004, 1, MiningMuseum_SetHelixFossilVar
    CallIfEq VAR_0x8004, 2, MiningMuseum_SetDomeFossilVar
    CallIfEq VAR_0x8004, 3, MiningMuseum_SetRootFossilVar
    CallIfEq VAR_0x8004, 4, MiningMuseum_SetClawFossilVar
    CallIfEq VAR_0x8004, 5, MiningMuseum_SetArmorFossilVar
    CallIfEq VAR_0x8004, 6, MiningMuseum_SetSkullFossilVar
    SetVar VAR_0x8006, VAR_0x8005
    AddVar VAR_0x8006, MenuEntries_Text_Fossil_OldAmber
    AddMenuEntry VAR_0x8006, VAR_0x8004
    GoTo MiningMuseum_FossilMenuContinue

MiningMuseum_FossilMenuNext:
    AddVar VAR_0x8005, 1
    GoTo MiningMuseum_FossilMenuLoop

MiningMuseum_FossilMenuContinue:
    AddVar VAR_0x8004, 1
    AddVar VAR_0x8005, 1
    GoToIfNe VAR_0x8004, VAR_0x8001, MiningMuseum_FossilMenuLoop
    AddMenuEntry MenuEntries_Text_Fossil_Cancel, VAR_0x8004
    ShowMenu
    GoToIfEq VAR_0x8003, 0xFF, MiningMuseum_DeclinedRevival
    GoToIfEq VAR_0x8003, VAR_MAP_LOCAL_0x00, MiningMuseum_DeclinedRevival
    CallIfEq VAR_0x8003, 0, MiningMuseum_GetOldAmberVar
    CallIfEq VAR_0x8003, 1, MiningMuseum_GetHelixFossilVar
    CallIfEq VAR_0x8003, 2, MiningMuseum_GetDomeFossilVar
    CallIfEq VAR_0x8003, 3, MiningMuseum_GetRootFossilVar
    CallIfEq VAR_0x8003, 4, MiningMuseum_GetClawFossilVar
    CallIfEq VAR_0x8003, 5, MiningMuseum_GetArmorFossilVar
    CallIfEq VAR_0x8003, 6, MiningMuseum_GetSkullFossilVar
    GetSpeciesFromFossil VAR_REVIVED_POKEMON_SPECIES, VAR_0x8002
    GoToIfEq VAR_REVIVED_POKEMON_SPECIES, 0, MiningMuseum_DeclinedRevival
    RemoveItem VAR_0x8002, 1, VAR_RESULT
    GoTo MiningMuseum_ExtractingPokemon

MiningMuseum_CheckHasOldAmber:
    SetVar VAR_MAP_LOCAL_0x00, ITEM_OLD_AMBER
    CheckItem VAR_MAP_LOCAL_0x00, 1, VAR_RESULT
    Return

MiningMuseum_CheckHasHelixFossil:
    SetVar VAR_MAP_LOCAL_0x00, ITEM_HELIX_FOSSIL
    CheckItem VAR_MAP_LOCAL_0x00, 1, VAR_RESULT
    Return

MiningMuseum_CheckHasDomeFossil:
    SetVar VAR_MAP_LOCAL_0x00, ITEM_DOME_FOSSIL
    CheckItem VAR_MAP_LOCAL_0x00, 1, VAR_RESULT
    Return

MiningMuseum_CheckHasRootFossil:
    SetVar VAR_MAP_LOCAL_0x00, ITEM_ROOT_FOSSIL
    CheckItem VAR_MAP_LOCAL_0x00, 1, VAR_RESULT
    Return

MiningMuseum_CheckHasClawFossil:
    SetVar VAR_MAP_LOCAL_0x00, ITEM_CLAW_FOSSIL
    CheckItem VAR_MAP_LOCAL_0x00, 1, VAR_RESULT
    Return

MiningMuseum_CheckHasArmorFossil:
    SetVar VAR_MAP_LOCAL_0x00, ITEM_ARMOR_FOSSIL
    CheckItem VAR_MAP_LOCAL_0x00, 1, VAR_RESULT
    Return

MiningMuseum_CheckHasSkullFossil:
    SetVar VAR_MAP_LOCAL_0x00, ITEM_SKULL_FOSSIL
    CheckItem VAR_MAP_LOCAL_0x00, 1, VAR_RESULT
    Return

MiningMuseum_SetOldAmberVar:
    SetVar VAR_MAP_LOCAL_0x01, VAR_MAP_LOCAL_0x00
    Return

MiningMuseum_SetHelixFossilVar:
    SetVar VAR_MAP_LOCAL_0x02, VAR_MAP_LOCAL_0x00
    Return

MiningMuseum_SetDomeFossilVar:
    SetVar VAR_MAP_LOCAL_0x03, VAR_MAP_LOCAL_0x00
    Return

MiningMuseum_SetRootFossilVar:
    SetVar VAR_MAP_LOCAL_0x04, VAR_MAP_LOCAL_0x00
    Return

MiningMuseum_SetClawFossilVar:
    SetVar VAR_MAP_LOCAL_0x05, VAR_MAP_LOCAL_0x00
    Return

MiningMuseum_SetArmorFossilVar:
    SetVar VAR_MAP_LOCAL_0x06, VAR_MAP_LOCAL_0x00
    Return

MiningMuseum_SetSkullFossilVar:
    SetVar VAR_MAP_LOCAL_0x07, VAR_MAP_LOCAL_0x00
    Return

MiningMuseum_GetOldAmberVar:
    SetVar VAR_0x8002, VAR_MAP_LOCAL_0x01
    Return

MiningMuseum_GetHelixFossilVar:
    SetVar VAR_0x8002, VAR_MAP_LOCAL_0x02
    Return

MiningMuseum_GetDomeFossilVar:
    SetVar VAR_0x8002, VAR_MAP_LOCAL_0x03
    Return

MiningMuseum_GetRootFossilVar:
    SetVar VAR_0x8002, VAR_MAP_LOCAL_0x04
    Return

MiningMuseum_GetClawFossilVar:
    SetVar VAR_0x8002, VAR_MAP_LOCAL_0x05
    Return

MiningMuseum_GetArmorFossilVar:
    SetVar VAR_0x8002, VAR_MAP_LOCAL_0x06
    Return

MiningMuseum_GetSkullFossilVar:
    SetVar VAR_0x8002, VAR_MAP_LOCAL_0x07
    Return

MiningMuseum_SingleFossilRevival:
    FindFossilAtThreshold VAR_0x8002, VAR_0x8004, 1
    GetSpeciesFromFossil VAR_REVIVED_POKEMON_SPECIES, VAR_0x8002
    RemoveItem VAR_0x8002, 1, VAR_RESULT
    GoTo MiningMuseum_ExtractingPokemon

MiningMuseum_ExtractingPokemon:
    SetFlag FLAG_MAP_LOCAL_0x01
    Message MiningMuseum_Text_ExtractingPokemonLeave
    WaitButton
    CloseMessage
    ReleaseAll
    End

MiningMuseum_DeclinedRevival:
    Message MiningMuseum_Text_DeclinedFossilRevival
    WaitButton
    CloseMessage
    ReleaseAll
    End

MiningMuseum_PokemonRevival:
    BufferSpeciesNameFromVar 0, VAR_REVIVED_POKEMON_SPECIES, 0, 0
    Message MiningMuseum_Text_ThisIsRevivedPokemon
    GetPartyCount VAR_RESULT
    GoToIfEq VAR_RESULT, MAX_PARTY_SIZE, MiningMuseum_PartyFull
    BufferSpeciesNameFromVar 1, VAR_REVIVED_POKEMON_SPECIES, 0, 0
    BufferPlayerName 0
    PlayFanfare SEQ_FANFA4
    Message MiningMuseum_Text_ReceivedPokemon
    WaitFanfare
    GivePokemon VAR_REVIVED_POKEMON_SPECIES, 20, ITEM_NONE, VAR_RESULT
    IncrementGameRecord RECORD_POKEMON_RECEIVED_FROM_FOSSIL_REVIVAL
    SetVar VAR_REVIVED_POKEMON_SPECIES, 0
    Message MiningMuseum_Text_GiveNickname
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, MiningMuseum_NicknamePrompt
    GoToIfEq VAR_RESULT, MENU_NO, MiningMuseum_NoNickname
    End

MiningMuseum_NicknamePrompt:
    CloseMessage
    GetPartyCount VAR_MAP_LOCAL_0x00
    SubVar VAR_MAP_LOCAL_0x00, 1
    FadeScreenOut
    WaitFadeScreen
    OpenPokemonNamingScreen VAR_MAP_LOCAL_0x00, VAR_RESULT
    CallIfNe VAR_RESULT, 1, MiningMuseum_RecordNickname
    FadeScreenIn
    WaitFadeScreen
    ReleaseAll
    End

MiningMuseum_RecordNickname:
    IncrementGameRecord RECORD_POKEMON_NICKNAMED
    Return

MiningMuseum_NoNickname:
    CloseMessage
    ReleaseAll
    End

MiningMuseum_PartyFull:
    Message MiningMuseum_Text_PartyFull
    WaitButton
    CloseMessage
    ReleaseAll
    End

MiningMuseum_NoFossils:
    Message MiningMuseum_Text_BringFossilsToMe
    WaitButton
    CloseMessage
    ReleaseAll
    End

MiningMuseum_NotYetReady:
    Message MiningMuseum_Text_NotYetReady
    WaitButton
    CloseMessage
    ReleaseAll
    End

MiningMuseum_Hiker:
    NPCMessage MiningMuseum_Text_CoalExhibit1
    End

MiningMuseum_Twin:
    NPCMessage MiningMuseum_Text_CoalExhibit2
    End

MiningMuseum_SchoolKidM:
    NPCMessage MiningMuseum_Text_MineExtendsUnderSea
    End

MiningMuseum_HowCoalIsMade1:
    EventMessage MiningMuseum_Text_HowCoalIsMade1
    End

MiningMuseum_HowCoalIsMade2:
    EventMessage MiningMuseum_Text_HowCoalIsMade2
    End

MiningMuseum_HowCoalIsMade3:
    EventMessage MiningMuseum_Text_HowCoalIsMade3
    End

MiningMuseum_DisplayCoalDifferentRegions:
    EventMessage MiningMuseum_Text_SamplesDifferentRegions
    End

MiningMuseum_DisplayCategorizedSamples:
    EventMessage MiningMuseum_Text_CategorizedCoalSamples
    End

MiningMuseum_DisplayLamps:
    EventMessage MiningMuseum_Text_MiningLamps
    End

MiningMuseum_DisplayTools:
    EventMessage MiningMuseum_Text_MiningTools
    End

MiningMuseum_DisplayItems:
    EventMessage MiningMuseum_Text_MineWorkerItems
    End

MiningMuseum_PokemonBreederF:
    NPCMessage MiningMuseum_Text_UndergroundManInfo
    End

MiningMuseum_Collector:
    NPCMessage MiningMuseum_Text_MiningRequiresStrongMind
    End

MiningMuseum_ExpertM:
    NPCMessage MiningMuseum_Text_MineHistory
    End

    .balign 4, 0
