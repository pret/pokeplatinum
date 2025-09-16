#include "macros/scrcmd.inc"
#include "res/text/bank/mining_museum.h"

// Script variable constants for fossil revival system
#define VAR_FOSSIL_COUNT VAR_0x8000          // Total fossil count from GetFossilCount
#define VAR_FOSSIL_COUNT_ACCUM VAR_0x8001    // Accumulator for counting fossils
#define VAR_SELECTED_FOSSIL_ITEM VAR_0x8002  // Selected fossil item ID
#define VAR_MENU_SELECTION VAR_0x8003        // Menu selection result
#define VAR_MENU_ENTRY_INDEX VAR_0x8004      // Menu entry index counter
#define VAR_FOSSIL_TYPE_INDEX VAR_0x8005     // Fossil type loop counter
#define VAR_MENU_ENTRY_ID VAR_0x8006         // Menu entry ID (fossil type + 156)

    ScriptEntry MiningMuseum_Welcome
    ScriptEntry MiningMuseum_FossilResearcher
    ScriptEntry MiningMuseum_CoalExhibit1
    ScriptEntry MiningMuseum_CoalExhibit2
    ScriptEntry MiningMuseum_MineUnderSea
    ScriptEntry MiningMuseum_HowCoalIsMade1
    ScriptEntry MiningMuseum_HowCoalIsMade2
    ScriptEntry MiningMuseum_HowCoalIsMade3
    ScriptEntry MiningMuseum_CoalSamplesDisplay
    ScriptEntry MiningMuseum_CoalSamplesBox
    ScriptEntry MiningMuseum_MiningLamps
    ScriptEntry MiningMuseum_MiningTools
    ScriptEntry MiningMuseum_MineWorkerItems
    ScriptEntry MiningMuseum_UndergroundManInfo
    ScriptEntry MiningMuseum_MiningRequiresStrongMind
    ScriptEntry MiningMuseum_MineHistory
    ScriptEntryEnd

MiningMuseum_Welcome:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message MiningMuseum_Text_Welcome
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

MiningMuseum_FossilResearcher:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x0001, MiningMuseum_ExtractingPokemon
    Message MiningMuseum_Text_FossilResearcherGreeting
    GoToIfUnset FLAG_EXPLORER_KIT_RECEIVED, MiningMuseum_NotYetReady
    GoToIfNe VAR_REVIVED_POKEMON_SPECIES, 0, MiningMuseum_PokemonRevival
    GetFossilCount VAR_FOSSIL_COUNT
    GoToIfEq VAR_FOSSIL_COUNT, 0, MiningMuseum_NoFossils
    Message MiningMuseum_Text_HaveFossilForMe
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, MiningMuseum_DeclinedRevival
    GoToIfEq VAR_FOSSIL_COUNT, 1, MiningMuseum_SingleFossilRevival
    SetVar VAR_FOSSIL_COUNT_ACCUM, 0
    CheckItem ITEM_OLD_AMBER, 1, VAR_RESULT
    AddVar VAR_FOSSIL_COUNT_ACCUM, VAR_RESULT
    CheckItem ITEM_HELIX_FOSSIL, 1, VAR_RESULT
    AddVar VAR_FOSSIL_COUNT_ACCUM, VAR_RESULT
    CheckItem ITEM_DOME_FOSSIL, 1, VAR_RESULT
    AddVar VAR_FOSSIL_COUNT_ACCUM, VAR_RESULT
    CheckItem ITEM_ROOT_FOSSIL, 1, VAR_RESULT
    AddVar VAR_FOSSIL_COUNT_ACCUM, VAR_RESULT
    CheckItem ITEM_CLAW_FOSSIL, 1, VAR_RESULT
    AddVar VAR_FOSSIL_COUNT_ACCUM, VAR_RESULT
    CheckItem ITEM_ARMOR_FOSSIL, 1, VAR_RESULT
    AddVar VAR_FOSSIL_COUNT_ACCUM, VAR_RESULT
    CheckItem ITEM_SKULL_FOSSIL, 1, VAR_RESULT
    AddVar VAR_FOSSIL_COUNT_ACCUM, VAR_RESULT
    GoToIfEq VAR_FOSSIL_COUNT_ACCUM, 1, MiningMuseum_SingleFossilRevival
    SetVar VAR_MENU_ENTRY_INDEX, 0
    SetVar VAR_FOSSIL_TYPE_INDEX, 0
    InitGlobalTextMenu 1, 1, 0, VAR_MENU_SELECTION
MiningMuseum_FossilMenuLoop:
    CallIfEq VAR_FOSSIL_TYPE_INDEX, 0, MiningMuseum_CheckFossil_OldAmber
    CallIfEq VAR_FOSSIL_TYPE_INDEX, 1, MiningMuseum_CheckFossil_HelixFossil
    CallIfEq VAR_FOSSIL_TYPE_INDEX, 2, MiningMuseum_CheckFossil_DomeFossil
    CallIfEq VAR_FOSSIL_TYPE_INDEX, 3, MiningMuseum_CheckFossil_RootFossil
    CallIfEq VAR_FOSSIL_TYPE_INDEX, 4, MiningMuseum_CheckFossil_ClawFossil
    CallIfEq VAR_FOSSIL_TYPE_INDEX, 5, MiningMuseum_CheckFossil_ArmorFossil
    CallIfEq VAR_FOSSIL_TYPE_INDEX, 6, MiningMuseum_CheckFossil_SkullFossil
    GoToIfEq VAR_RESULT, FALSE, MiningMuseum_FossilMenuNext
    CallIfEq VAR_MENU_ENTRY_INDEX, 0, MiningMuseum_SetOldAmberVar
    CallIfEq VAR_MENU_ENTRY_INDEX, 1, MiningMuseum_SetHelixFossilVar
    CallIfEq VAR_MENU_ENTRY_INDEX, 2, MiningMuseum_SetDomeFossilVar
    CallIfEq VAR_MENU_ENTRY_INDEX, 3, MiningMuseum_SetRootFossilVar
    CallIfEq VAR_MENU_ENTRY_INDEX, 4, MiningMuseum_SetClawFossilVar
    CallIfEq VAR_MENU_ENTRY_INDEX, 5, MiningMuseum_SetArmorFossilVar
    CallIfEq VAR_MENU_ENTRY_INDEX, 6, MiningMuseum_SetSkullFossilVar
    SetVar VAR_MENU_ENTRY_ID, VAR_FOSSIL_TYPE_INDEX
    AddVar VAR_MENU_ENTRY_ID, 156
    AddMenuEntry VAR_MENU_ENTRY_ID, VAR_MENU_ENTRY_INDEX
    GoTo MiningMuseum_FossilMenuContinue

MiningMuseum_FossilMenuNext:
    AddVar VAR_FOSSIL_TYPE_INDEX, 1
    GoTo MiningMuseum_FossilMenuLoop

MiningMuseum_FossilMenuContinue:
    AddVar VAR_MENU_ENTRY_INDEX, 1
    AddVar VAR_FOSSIL_TYPE_INDEX, 1
    GoToIfNe VAR_MENU_ENTRY_INDEX, VAR_FOSSIL_COUNT_ACCUM, MiningMuseum_FossilMenuLoop
    AddMenuEntry 44, VAR_MENU_ENTRY_INDEX
    ShowMenu
    GoToIfEq VAR_MENU_SELECTION, 0xFF, MiningMuseum_DeclinedRevival
    GoToIfEq VAR_MENU_SELECTION, VAR_MAP_LOCAL_0, MiningMuseum_DeclinedRevival
    CallIfEq VAR_MENU_SELECTION, 0, MiningMuseum_GetOldAmberVar
    CallIfEq VAR_MENU_SELECTION, 1, MiningMuseum_GetHelixFossilVar
    CallIfEq VAR_MENU_SELECTION, 2, MiningMuseum_GetDomeFossilVar
    CallIfEq VAR_MENU_SELECTION, 3, MiningMuseum_GetRootFossilVar
    CallIfEq VAR_MENU_SELECTION, 4, MiningMuseum_GetClawFossilVar
    CallIfEq VAR_MENU_SELECTION, 5, MiningMuseum_GetArmorFossilVar
    CallIfEq VAR_MENU_SELECTION, 6, MiningMuseum_GetSkullFossilVar
    GetSpeciesFromFossil VAR_REVIVED_POKEMON_SPECIES, VAR_SELECTED_FOSSIL_ITEM
    GoToIfEq VAR_REVIVED_POKEMON_SPECIES, 0, MiningMuseum_DeclinedRevival
    RemoveItem VAR_SELECTED_FOSSIL_ITEM, 1, VAR_RESULT
    GoTo MiningMuseum_ExtractingPokemon

MiningMuseum_CheckFossil_OldAmber:
    SetVar VAR_MAP_LOCAL_0, ITEM_OLD_AMBER
    CheckItem VAR_MAP_LOCAL_0, 1, VAR_RESULT
    Return

MiningMuseum_CheckFossil_HelixFossil:
    SetVar VAR_MAP_LOCAL_0, ITEM_HELIX_FOSSIL
    CheckItem VAR_MAP_LOCAL_0, 1, VAR_RESULT
    Return

MiningMuseum_CheckFossil_DomeFossil:
    SetVar VAR_MAP_LOCAL_0, ITEM_DOME_FOSSIL
    CheckItem VAR_MAP_LOCAL_0, 1, VAR_RESULT
    Return

MiningMuseum_CheckFossil_RootFossil:
    SetVar VAR_MAP_LOCAL_0, ITEM_ROOT_FOSSIL
    CheckItem VAR_MAP_LOCAL_0, 1, VAR_RESULT
    Return

MiningMuseum_CheckFossil_ClawFossil:
    SetVar VAR_MAP_LOCAL_0, ITEM_CLAW_FOSSIL
    CheckItem VAR_MAP_LOCAL_0, 1, VAR_RESULT
    Return

MiningMuseum_CheckFossil_ArmorFossil:
    SetVar VAR_MAP_LOCAL_0, ITEM_ARMOR_FOSSIL
    CheckItem VAR_MAP_LOCAL_0, 1, VAR_RESULT
    Return

MiningMuseum_CheckFossil_SkullFossil:
    SetVar VAR_MAP_LOCAL_0, ITEM_SKULL_FOSSIL
    CheckItem VAR_MAP_LOCAL_0, 1, VAR_RESULT
    Return

MiningMuseum_SetOldAmberVar:
    SetVar VAR_MAP_LOCAL_1, VAR_MAP_LOCAL_0
    Return

MiningMuseum_SetHelixFossilVar:
    SetVar VAR_MAP_LOCAL_2, VAR_MAP_LOCAL_0
    Return

MiningMuseum_SetDomeFossilVar:
    SetVar VAR_MAP_LOCAL_3, VAR_MAP_LOCAL_0
    Return

MiningMuseum_SetRootFossilVar:
    SetVar VAR_MAP_LOCAL_4, VAR_MAP_LOCAL_0
    Return

MiningMuseum_SetClawFossilVar:
    SetVar VAR_MAP_LOCAL_5, VAR_MAP_LOCAL_0
    Return

MiningMuseum_SetArmorFossilVar:
    SetVar VAR_MAP_LOCAL_6, VAR_MAP_LOCAL_0
    Return

MiningMuseum_SetSkullFossilVar:
    SetVar VAR_MAP_LOCAL_7, VAR_MAP_LOCAL_0
    Return

MiningMuseum_GetOldAmberVar:
    SetVar VAR_SELECTED_FOSSIL_ITEM, VAR_MAP_LOCAL_1
    Return

MiningMuseum_GetHelixFossilVar:
    SetVar VAR_SELECTED_FOSSIL_ITEM, VAR_MAP_LOCAL_2
    Return

MiningMuseum_GetDomeFossilVar:
    SetVar VAR_SELECTED_FOSSIL_ITEM, VAR_MAP_LOCAL_3
    Return

MiningMuseum_GetRootFossilVar:
    SetVar VAR_SELECTED_FOSSIL_ITEM, VAR_MAP_LOCAL_4
    Return

MiningMuseum_GetClawFossilVar:
    SetVar VAR_SELECTED_FOSSIL_ITEM, VAR_MAP_LOCAL_5
    Return

MiningMuseum_GetArmorFossilVar:
    SetVar VAR_SELECTED_FOSSIL_ITEM, VAR_MAP_LOCAL_6
    Return

MiningMuseum_GetSkullFossilVar:
    SetVar VAR_SELECTED_FOSSIL_ITEM, VAR_MAP_LOCAL_7
    Return

MiningMuseum_SingleFossilRevival:
    FindFossilAtThreshold VAR_SELECTED_FOSSIL_ITEM, VAR_MENU_ENTRY_INDEX, 1
    GetSpeciesFromFossil VAR_REVIVED_POKEMON_SPECIES, VAR_SELECTED_FOSSIL_ITEM
    RemoveItem VAR_SELECTED_FOSSIL_ITEM, 1, VAR_RESULT
    GoTo MiningMuseum_ExtractingPokemon

MiningMuseum_ExtractingPokemon:
    SetFlag FLAG_UNK_0x0001
    Message MiningMuseum_Text_ExtractingPokemonLeave
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

MiningMuseum_DeclinedRevival:
    Message MiningMuseum_Text_DeclinedFossilRevival
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

MiningMuseum_PokemonRevival:
    BufferSpeciesNameFromVar 0, VAR_REVIVED_POKEMON_SPECIES, 0, 0
    Message MiningMuseum_Text_PokemonRevivedTooLong
    GetPartyCount VAR_RESULT
    GoToIfEq VAR_RESULT, 6, MiningMuseum_PartyFull
    BufferSpeciesNameFromVar 1, VAR_REVIVED_POKEMON_SPECIES, 0, 0
    BufferPlayerName 0
    PlaySound SEQ_FANFA4
    Message MiningMuseum_Text_PokemonReceived
    WaitSound
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
    GetPartyCount VAR_MAP_LOCAL_0
    SubVar VAR_MAP_LOCAL_0, 1
    FadeScreenOut
    WaitFadeScreen
    ScrCmd_0BB VAR_MAP_LOCAL_0, VAR_RESULT
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
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

MiningMuseum_NoFossils:
    Message MiningMuseum_Text_BringFossilsToMe
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

MiningMuseum_NotYetReady:
    Message MiningMuseum_Text_NotYetReady
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

MiningMuseum_CoalExhibit1:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message MiningMuseum_Text_CoalExhibit1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

MiningMuseum_CoalExhibit2:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message MiningMuseum_Text_CoalExhibit2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

MiningMuseum_MineUnderSea:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message MiningMuseum_Text_MineExtendsUnderSea
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

MiningMuseum_HowCoalIsMade1:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message MiningMuseum_Text_HowCoalIsMade1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

MiningMuseum_HowCoalIsMade2:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message MiningMuseum_Text_HowCoalIsMade2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

MiningMuseum_HowCoalIsMade3:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message MiningMuseum_Text_HowCoalIsMade3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

MiningMuseum_CoalSamplesDisplay:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message MiningMuseum_Text_CoalSamplesDisplay
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

MiningMuseum_CoalSamplesBox:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message MiningMuseum_Text_CoalSamplesBox
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

MiningMuseum_MiningLamps:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message MiningMuseum_Text_MiningLamps
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

MiningMuseum_MiningTools:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message MiningMuseum_Text_MiningTools
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

MiningMuseum_MineWorkerItems:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message MiningMuseum_Text_MineWorkerItems
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

MiningMuseum_UndergroundManInfo:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message MiningMuseum_Text_UndergroundManInfo
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

MiningMuseum_MiningRequiresStrongMind:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message MiningMuseum_Text_MiningRequiresStrongMind
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

MiningMuseum_MineHistory:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message MiningMuseum_Text_MineHistory
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
