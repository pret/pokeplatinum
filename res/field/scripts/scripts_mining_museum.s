#include "macros/scrcmd.inc"
#include "res/text/bank/mining_museum.h"


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
    GetFossilCount VAR_0x8000
    GoToIfEq VAR_0x8000, 0, MiningMuseum_NoFossils
    Message MiningMuseum_Text_HaveFossilForMe
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
    CallIfEq VAR_0x8005, 0, MiningMuseum_CheckFossil_OldAmber
    CallIfEq VAR_0x8005, 1, MiningMuseum_CheckFossil_HelixFossil
    CallIfEq VAR_0x8005, 2, MiningMuseum_CheckFossil_DomeFossil
    CallIfEq VAR_0x8005, 3, MiningMuseum_CheckFossil_RootFossil
    CallIfEq VAR_0x8005, 4, MiningMuseum_CheckFossil_ClawFossil
    CallIfEq VAR_0x8005, 5, MiningMuseum_CheckFossil_ArmorFossil
    CallIfEq VAR_0x8005, 6, MiningMuseum_CheckFossil_SkullFossil
    GoToIfEq VAR_RESULT, FALSE, MiningMuseum_FossilMenuNext
    CallIfEq VAR_0x8004, 0, MiningMuseum_SetOldAmberVar
    CallIfEq VAR_0x8004, 1, MiningMuseum_SetHelixFossilVar
    CallIfEq VAR_0x8004, 2, MiningMuseum_SetDomeFossilVar
    CallIfEq VAR_0x8004, 3, MiningMuseum_SetRootFossilVar
    CallIfEq VAR_0x8004, 4, MiningMuseum_SetClawFossilVar
    CallIfEq VAR_0x8004, 5, MiningMuseum_SetArmorFossilVar
    CallIfEq VAR_0x8004, 6, MiningMuseum_SetSkullFossilVar
    SetVar VAR_0x8006, VAR_0x8005
    AddVar VAR_0x8006, 156
    AddMenuEntry VAR_0x8006, VAR_0x8004
    GoTo MiningMuseum_FossilMenuContinue

MiningMuseum_FossilMenuNext:
    AddVar VAR_0x8005, 1
    GoTo MiningMuseum_FossilMenuLoop

MiningMuseum_FossilMenuContinue:
    AddVar VAR_0x8004, 1
    AddVar VAR_0x8005, 1
    GoToIfNe VAR_0x8004, VAR_0x8001, MiningMuseum_FossilMenuLoop
    AddMenuEntry 44, VAR_0x8004
    ShowMenu
    GoToIfEq VAR_0x8003, 0xFF, MiningMuseum_DeclinedRevival
    GoToIfEq VAR_0x8003, VAR_MAP_LOCAL_0, MiningMuseum_DeclinedRevival
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
    SetVar VAR_0x8002, VAR_MAP_LOCAL_1
    Return

MiningMuseum_GetHelixFossilVar:
    SetVar VAR_0x8002, VAR_MAP_LOCAL_2
    Return

MiningMuseum_GetDomeFossilVar:
    SetVar VAR_0x8002, VAR_MAP_LOCAL_3
    Return

MiningMuseum_GetRootFossilVar:
    SetVar VAR_0x8002, VAR_MAP_LOCAL_4
    Return

MiningMuseum_GetClawFossilVar:
    SetVar VAR_0x8002, VAR_MAP_LOCAL_5
    Return

MiningMuseum_GetArmorFossilVar:
    SetVar VAR_0x8002, VAR_MAP_LOCAL_6
    Return

MiningMuseum_GetSkullFossilVar:
    SetVar VAR_0x8002, VAR_MAP_LOCAL_7
    Return

MiningMuseum_SingleFossilRevival:
    FindFossilAtThreshold VAR_0x8002, VAR_0x8004, 1
    GetSpeciesFromFossil VAR_REVIVED_POKEMON_SPECIES, VAR_0x8002
    RemoveItem VAR_0x8002, 1, VAR_RESULT
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
    OpenPokemonNamingScreen VAR_MAP_LOCAL_0, VAR_RESULT
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
