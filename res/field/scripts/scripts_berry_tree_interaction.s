#include "macros/scrcmd.inc"
#include "res/text/bank/berry_trees.h"
#include "constants/items.h"
#include "generated/berry_growth_stages.h"

// Variable aliases for better readability
#define VAR_BerryItemID VAR_0x8000
#define VAR_BerryYield VAR_0x8001
#define VAR_TempItemCount VAR_0x8004
#define VAR_SelectedMulchID VAR_0x8005
#define VAR_MenuSelection VAR_0x8008


    ScriptEntry BerryTreeMainScript
    ScriptEntry BerryTree_PlantBerryScript
    ScriptEntry BerryTree_WaterBerryScript
    ScriptEntry BerryTree_ApplyMulchScript
    ScriptEntryEnd

BerryTreeMainScript:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GetBerryItemID VAR_BerryItemID
    GetBerryYield VAR_BerryYield
    GetBerryGrowthStage VAR_RESULT
    SetVar VAR_MenuSelection, VAR_RESULT
    GoToIfEq VAR_MenuSelection, BERRY_GROWTH_STAGE_NONE, BerryTree_CheckExistingMulch
    GoToIfEq VAR_MenuSelection, BERRY_GROWTH_STAGE_PLANTED, BerryTree_PlantedState
    GoToIfEq VAR_MenuSelection, BERRY_GROWTH_STAGE_SPROUTED, BerryTree_SproutedState
    GoToIfEq VAR_MenuSelection, BERRY_GROWTH_STAGE_GROWING, BerryTree_GrowingState
    GoToIfEq VAR_MenuSelection, BERRY_GROWTH_STAGE_BLOOMING, BerryTree_BloomingState
    GoToIfEq VAR_MenuSelection, BERRY_GROWTH_STAGE_FRUIT, BerryTree_FruitState
    GoTo BerryTree_CheckExistingMulch
    End

BerryTree_PlantedState:
    Call BerryTree_CheckPlayerHasSprayduck
    GoToIfEq VAR_RESULT, 0, BerryTree_PlantedStateNoWater
    BufferItemNameWithArticle 0, VAR_BerryItemID
    CapitalizeFirstLetter 0
    Message BerryTrees_Text_BerryWasPlantedHere
    GoTo BerryTree_OfferWatering

BerryTree_PlantedStateNoWater:
    BufferItemNameWithArticle 0, VAR_BerryItemID
    CapitalizeFirstLetter 0
    Message BerryTrees_Text_BerryWasPlantedHereAfterHarvest
    WaitABXPadPress
    GoTo BerryTree_CloseAndEnd

BerryTree_SproutedState:
    Call BerryTree_CheckPlayerHasSprayduck
    GoToIfEq VAR_RESULT, 0, BerryTree_SproutedStateNoWater
    BufferBerryName 0, VAR_BerryItemID
    Message BerryTrees_Text_BerryPlantHasSprouted
    GoTo BerryTree_OfferWatering

BerryTree_SproutedStateNoWater:
    BufferBerryName 0, VAR_BerryItemID
    Message BerryTrees_Text_BerryPlantHasSproutedAfterHarvest
    WaitABXPadPress
    GoTo BerryTree_CloseAndEnd

BerryTree_GrowingState:
    Call BerryTree_CheckPlayerHasSprayduck
    GoToIfEq VAR_RESULT, 0, BerryTree_GrowingStateNoWater
    BufferBerryName 0, VAR_BerryItemID
    Message BerryTrees_Text_BerryPlantIsGrowingBigger
    GoTo BerryTree_OfferWatering

BerryTree_GrowingStateNoWater:
    BufferBerryName 0, VAR_BerryItemID
    Message BerryTrees_Text_BerryPlantIsGrowingBiggerAfterHarvest
    WaitABXPadPress
    GoTo BerryTree_CloseAndEnd

BerryTree_BloomingState:
    Call BerryTree_CheckPlayerHasSprayduck
    GoToIfEq VAR_RESULT, 0, BerryTree_BloomingStateNoWater
    BufferBerryName 0, VAR_BerryItemID
    Message BerryTrees_Text_BerryPlantIsInBloom
    GoTo BerryTree_OfferWatering

BerryTree_BloomingStateNoWater:
    BufferBerryName 0, VAR_BerryItemID
    Message BerryTrees_Text_BerryPlantIsInBloomAfterHarvest
    WaitABXPadPress
    GoTo BerryTree_CloseAndEnd

BerryTree_CheckPlayerHasSprayduck:
    GetPlayerDir VAR_RESULT
    GoToIfNe VAR_RESULT, 0, BerryTree_PlayerDoesNotHaveSprayduck
    CheckItem ITEM_SPRAYDUCK, 1, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, BerryTree_PlayerDoesNotHaveSprayduck
    SetVar VAR_RESULT, 1
    Return

BerryTree_PlayerDoesNotHaveSprayduck:
    SetVar VAR_RESULT, 0
    Return

BerryTree_CheckPlayerHasMulch:
    CheckItem ITEM_GROWTH_MULCH, 1, VAR_RESULT
    GoToIfEq VAR_RESULT, 1, BerryTree_PlayerHasMulch
    CheckItem ITEM_DAMP_MULCH, 1, VAR_RESULT
    GoToIfEq VAR_RESULT, 1, BerryTree_PlayerHasMulch
    CheckItem ITEM_STABLE_MULCH, 1, VAR_RESULT
    GoToIfEq VAR_RESULT, 1, BerryTree_PlayerHasMulch
    CheckItem ITEM_GOOEY_MULCH, 1, VAR_RESULT
    GoToIfEq VAR_RESULT, 1, BerryTree_PlayerHasMulch
    SetVar VAR_RESULT, 0
    Return

BerryTree_PlayerHasMulch:
    SetVar VAR_RESULT, 1
    Return

BerryTree_OfferWatering:
    Message BerryTrees_Text_WantToSprinkleWater
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, BerryTree_CloseAndEnd
    CloseMessage
    SetBerryWateringState BERRY_WATERING_START
    Message BerryTrees_Text_ThereAllHappy
    WaitABXPadPress
    SetBerryWateringState BERRY_WATERING_END
    GoTo BerryTree_CloseAndEnd

BerryTree_FruitState:
    BufferNumber 1, VAR_BerryYield
    GoToIfGt VAR_BerryYield, 1, BerryTree_ShowMultipleBerriesMessage
    BufferItemNameWithArticle 0, VAR_BerryItemID
    Message BerryTrees_Text_ThereIsBerryWantToPickIt
    GoTo BerryTree_ShowHarvestMenu

BerryTree_ShowMultipleBerriesMessage:
    BufferItemNamePlural 0, VAR_BerryItemID
    Message BerryTrees_Text_ThereAreBerriesWantToPickThem
BerryTree_ShowHarvestMenu:
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, BerryTree_HandleHarvestDeclined
    GoToIfCannotFitItem VAR_BerryItemID, VAR_BerryYield, VAR_RESULT, BerryTree_CheckBagSpace
    BufferNumber 1, VAR_BerryYield
    GoToIfGt VAR_BerryYield, 1, BerryTree_ShowMultipleBerriesPickedMessage
    BufferItemName 0, VAR_BerryItemID
    Message BerryTrees_Text_YouPickedTheBerry
    GoTo BerryTree_HarvestBerries

BerryTree_ShowMultipleBerriesPickedMessage:
    BufferItemNamePlural 0, VAR_BerryItemID
    Message BerryTrees_Text_YouPickedTheBerries
BerryTree_HarvestBerries:
    PlaySound SEQ_KINOMI
    WaitSound
    HarvestBerry
    BufferPlayerName 0
    GoToIfGt VAR_BerryYield, 1, BerryTree_ShowMultipleBerriesStoredMessage
    BufferItemName 1, VAR_BerryItemID
    GoTo BerryTree_ShowBerriesStoredMessage

BerryTree_ShowMultipleBerriesStoredMessage:
    BufferItemNamePlural 1, VAR_BerryItemID
BerryTree_ShowBerriesStoredMessage:
    GetItemPocket VAR_BerryItemID, VAR_RESULT
    BufferPocketName 3, VAR_RESULT
    Message BerryTrees_Text_PlayerPutAwayBerriesInBagPocket
    WaitABXPadPress
    GoTo BerryTree_CloseAndEnd

BerryTree_CheckBagSpace:
    GoToIfGt VAR_BerryYield, 1, BerryTree_ShowMultipleBerriesBagFullMessage
    BufferItemName 0, VAR_BerryItemID
    GoTo BerryTree_ShowBagFullMessage

BerryTree_ShowMultipleBerriesBagFullMessage:
    BufferItemNamePlural 0, VAR_BerryItemID
BerryTree_ShowBagFullMessage:
    Message BerryTrees_Text_BagIsFullBerriesCouldntBeTaken
    WaitABXPadPress
    GoTo BerryTree_CloseAndEnd

BerryTree_HandleHarvestDeclined:
    Call BerryTree_CheckPlayerHasSprayduck
    GoToIfEq VAR_RESULT, 0, BerryTree_ShowLeftBerryMessage
    GoTo BerryTree_OfferWatering

BerryTree_ShowLeftBerryMessage:
    BufferPlayerName 0
    GoToIfGt VAR_BerryYield, 1, BerryTree_ShowLeftBerriesMessage
    BufferItemName 1, VAR_BerryItemID
    Message BerryTrees_Text_PlayerLeftBerryWhereItWas
    GoTo BerryTree_EndLeftBerryMessage

BerryTree_ShowLeftBerriesMessage:
    BufferItemNamePlural 1, VAR_BerryItemID
    Message BerryTrees_Text_PlayerLeftBerriesWhereTheyWere
BerryTree_EndLeftBerryMessage:
    WaitABXPadPress
    GoTo BerryTree_CloseAndEnd

BerryTree_CheckExistingMulch:
    GetBerryMulchType VAR_RESULT
    GoToIfEq VAR_RESULT, 0, BerryTree_CheckEmptySoil
    CheckPocketHasItems POCKET_BERRIES, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, BerryTree_ShowMulchExistsMessage
    GetBerryMulchType VAR_RESULT
    BufferItemName 0, VAR_RESULT
    Message BerryTrees_Text_MulchHasBeenLaidDown
    GoTo BerryTree_OfferPlantBerry

BerryTree_CheckEmptySoil:
    GetPlayerDir VAR_RESULT
    GoToIfNe VAR_RESULT, 0, BerryTree_ShowEmptySoilMessage
    Call BerryTree_CheckPlayerHasMulch
    GoToIfEq VAR_RESULT, 1, BerryTree_ShowSoilMenu
    CheckPocketHasItems POCKET_BERRIES, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, BerryTree_ShowEmptySoilMessage
    Message BerryTrees_Text_SoftEarthySoil
    GoTo BerryTree_OfferPlantBerry

BerryTree_ShowSoilMenu:
    Message BerryTrees_Text_SoftEarthySoil
    CheckPocketHasItems POCKET_BERRIES, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, BerryTree_OfferFertilizer
    InitLocalTextMenu 1, 1, 0, VAR_RESULT
    AddMenuEntryImm BerryTrees_Text_Fertilize, 0
    AddMenuEntryImm BerryTrees_Text_PlantBerry, 1
    AddMenuEntryImm BerryTrees_Text_Exit, 2
    ShowMenu
    SetVar VAR_MenuSelection, VAR_RESULT
    GoToIfEq VAR_MenuSelection, 0, BerryTree_OpenMulchMenu
    GoToIfEq VAR_MenuSelection, 1, BerryTree_OpenBerryMenu
    GoToIfEq VAR_MenuSelection, 2, BerryTree_CloseAndEnd
    GoTo BerryTree_CloseAndEnd

BerryTree_OfferFertilizer:
    Message BerryTrees_Text_PutDownSomeFertilizer
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, BerryTree_OpenMulchMenu
    GoTo BerryTree_CloseAndEnd

BerryTree_OpenMulchMenu:
    CloseMessage
    FadeScreenOut
    WaitFadeScreen
    OpenItemsBag
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    GetSelectedItem VAR_SelectedMulchID
    SetVar VAR_MenuSelection, VAR_SelectedMulchID
    GoToIfEq VAR_MenuSelection, ITEM_NONE, BerryTree_ReleaseAndEnd
    GoToIfEq VAR_MenuSelection, ITEM_GROWTH_MULCH, BerryTree_ApplyMulch
    GoToIfEq VAR_MenuSelection, ITEM_DAMP_MULCH, BerryTree_ApplyMulch
    GoToIfEq VAR_MenuSelection, ITEM_STABLE_MULCH, BerryTree_ApplyMulch
    GoToIfEq VAR_MenuSelection, ITEM_GOOEY_MULCH, BerryTree_ApplyMulch
    GoTo BerryTree_ReleaseAndEnd

BerryTree_ApplyMulch:
    RemoveItem VAR_SelectedMulchID, 1, VAR_TempItemCount
    SetBerryMulch VAR_SelectedMulchID
    CheckPocketHasItems POCKET_BERRIES, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, BerryTree_ShowMulchAppliedMessage
    BufferItemName 0, VAR_SelectedMulchID
    Message BerryTrees_Text_MulchWasScatteredOnSoil
    GoTo BerryTree_OfferPlantBerry

BerryTree_ShowMulchAppliedMessage:
    BufferItemName 0, VAR_SelectedMulchID
    Message BerryTrees_Text_MulchWasScatteredOnSoilAfterHarvest
    WaitABXPadPress
    GoTo BerryTree_CloseAndEnd

BerryTree_OfferPlantBerry:
    Message BerryTrees_Text_WantToPlantBerry
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, BerryTree_CloseAndEnd
BerryTree_OpenBerryMenu:
    CloseMessage
    FadeScreenOut
    WaitFadeScreen
    OpenBerriesBag
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    GetSelectedItem VAR_RESULT
    GoToIfEq VAR_RESULT, 0, BerryTree_ReleaseAndEnd
    BufferItemName 0, VAR_RESULT
    Message BerryTrees_Text_BerryWasPlantedInSoftSoil
    WaitABXPadPress
    RemoveItem VAR_RESULT, 1, VAR_TempItemCount
    PlantBerry VAR_RESULT
    GoTo BerryTree_CloseAndEnd

BerryTree_CloseAndEnd:
    CloseMessage
BerryTree_ReleaseAndEnd:
    ReleaseAll
    End

BerryTree_ShowEmptySoilMessage:
    Message BerryTrees_Text_SoftEarthySoilAfterHarvest
    WaitABXPadPress
    GoTo BerryTree_CloseAndEnd

BerryTree_ShowMulchExistsMessage:
    GetBerryMulchType VAR_RESULT
    BufferItemName 0, VAR_RESULT
    Message BerryTrees_Text_MulchHasBeenLaidDownAfterHarvest
    WaitABXPadPress
    GoTo BerryTree_CloseAndEnd

BerryTree_PlantBerryScript:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    BufferItemName 0, VAR_BerryItemID
    Message BerryTrees_Text_BerryWasPlantedInSoftSoil
    WaitABXPadPress
    CloseMessage
    RemoveItem VAR_BerryItemID, 1, VAR_TempItemCount
    PlantBerry VAR_BerryItemID
    ReleaseAll
    End

BerryTree_WaterBerryScript:
    LockAll
    SetBerryWateringState BERRY_WATERING_START
    Message BerryTrees_Text_ThereAllHappy
    WaitABXPadPress
    SetBerryWateringState BERRY_WATERING_END
    CloseMessage
    ReleaseAll
    End

BerryTree_ApplyMulchScript:
    LockAll
    SetVar VAR_RESULT, VAR_BerryItemID
    SetVar VAR_SelectedMulchID, VAR_BerryItemID
    GoTo BerryTree_ApplyMulch
