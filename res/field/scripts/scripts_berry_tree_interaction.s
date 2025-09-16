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
    ScriptEntry PlantBerryScript
    ScriptEntry WaterBerryScript
    ScriptEntry ApplyMulchScript
    ScriptEntryEnd

BerryTreeMainScript:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GetBerryItemID VAR_BerryItemID
    GetBerryYield VAR_BerryYield
    GetBerryGrowthStage VAR_RESULT
    SetVar VAR_MenuSelection, VAR_RESULT
    GoToIfEq VAR_MenuSelection, BERRY_GROWTH_STAGE_NONE, CheckExistingMulch
    GoToIfEq VAR_MenuSelection, BERRY_GROWTH_STAGE_PLANTED, HandleBerryPlanted
    GoToIfEq VAR_MenuSelection, BERRY_GROWTH_STAGE_SPROUTED, HandleBerrySprouted
    GoToIfEq VAR_MenuSelection, BERRY_GROWTH_STAGE_GROWING, HandleBerryGrowing
    GoToIfEq VAR_MenuSelection, BERRY_GROWTH_STAGE_BLOOMING, HandleBerryBlooming
    GoToIfEq VAR_MenuSelection, BERRY_GROWTH_STAGE_FRUIT, HandleBerryFruit
    GoTo CheckExistingMulch
    End

HandleBerryPlanted:
    Call CheckPlayerHasSprayduck
    GoToIfEq VAR_RESULT, 0, HandleBerryPlantedNoWater
    BufferItemNameWithArticle 0, VAR_BerryItemID
    CapitalizeFirstLetter 0
    Message BerryTrees_Text_BerryWasPlantedHere
    GoTo OfferWatering

HandleBerryPlantedNoWater:
    BufferItemNameWithArticle 0, VAR_BerryItemID
    CapitalizeFirstLetter 0
    Message BerryTrees_Text_BerryWasPlantedHereAfterHarvest
    WaitABXPadPress
    GoTo CloseAndEnd

HandleBerrySprouted:
    Call CheckPlayerHasSprayduck
    GoToIfEq VAR_RESULT, 0, HandleBerrySproutedNoWater
    BufferBerryName 0, VAR_BerryItemID
    Message BerryTrees_Text_BerryPlantHasSprouted
    GoTo OfferWatering

HandleBerrySproutedNoWater:
    BufferBerryName 0, VAR_BerryItemID
    Message BerryTrees_Text_BerryPlantHasSproutedAfterHarvest
    WaitABXPadPress
    GoTo CloseAndEnd

HandleBerryGrowing:
    Call CheckPlayerHasSprayduck
    GoToIfEq VAR_RESULT, 0, HandleBerryGrowingNoWater
    BufferBerryName 0, VAR_BerryItemID
    Message BerryTrees_Text_BerryPlantIsGrowingBigger
    GoTo OfferWatering

HandleBerryGrowingNoWater:
    BufferBerryName 0, VAR_BerryItemID
    Message BerryTrees_Text_BerryPlantIsGrowingBiggerAfterHarvest
    WaitABXPadPress
    GoTo CloseAndEnd

HandleBerryBlooming:
    Call CheckPlayerHasSprayduck
    GoToIfEq VAR_RESULT, 0, HandleBerryBloomingNoWater
    BufferBerryName 0, VAR_BerryItemID
    Message BerryTrees_Text_BerryPlantIsInBloom
    GoTo OfferWatering

HandleBerryBloomingNoWater:
    BufferBerryName 0, VAR_BerryItemID
    Message BerryTrees_Text_BerryPlantIsInBloomAfterHarvest
    WaitABXPadPress
    GoTo CloseAndEnd

CheckPlayerHasSprayduck:
    GetPlayerDir VAR_RESULT
    GoToIfNe VAR_RESULT, 0, PlayerDoesNotHaveSprayduck
    CheckItem ITEM_SPRAYDUCK, 1, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, PlayerDoesNotHaveSprayduck
    SetVar VAR_RESULT, 1
    Return

PlayerDoesNotHaveSprayduck:
    SetVar VAR_RESULT, 0
    Return

CheckPlayerHasMulch:
    CheckItem ITEM_GROWTH_MULCH, 1, VAR_RESULT
    GoToIfEq VAR_RESULT, 1, PlayerHasMulch
    CheckItem ITEM_DAMP_MULCH, 1, VAR_RESULT
    GoToIfEq VAR_RESULT, 1, PlayerHasMulch
    CheckItem ITEM_STABLE_MULCH, 1, VAR_RESULT
    GoToIfEq VAR_RESULT, 1, PlayerHasMulch
    CheckItem ITEM_GOOEY_MULCH, 1, VAR_RESULT
    GoToIfEq VAR_RESULT, 1, PlayerHasMulch
    SetVar VAR_RESULT, 0
    Return

PlayerHasMulch:
    SetVar VAR_RESULT, 1
    Return

OfferWatering:
    Message BerryTrees_Text_WantToSprinkleWater
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, CloseAndEnd
    CloseMessage
    SetBerryWateringState BERRY_WATERING_START
    Message BerryTrees_Text_ThereAllHappy
    WaitABXPadPress
    SetBerryWateringState BERRY_WATERING_END
    GoTo CloseAndEnd

HandleBerryFruit:
    BufferNumber 1, VAR_BerryYield
    GoToIfGt VAR_BerryYield, 1, ShowMultipleBerriesMessage
    BufferItemNameWithArticle 0, VAR_BerryItemID
    Message BerryTrees_Text_ThereIsBerryWantToPickIt
    GoTo ShowHarvestMenu

ShowMultipleBerriesMessage:
    BufferItemNamePlural 0, VAR_BerryItemID
    Message BerryTrees_Text_ThereAreBerriesWantToPickThem
ShowHarvestMenu:
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, HandleHarvestDeclined
    GoToIfCannotFitItem VAR_BerryItemID, VAR_BerryYield, VAR_RESULT, CheckBagSpace
    BufferNumber 1, VAR_BerryYield
    GoToIfGt VAR_BerryYield, 1, ShowMultipleBerriesPickedMessage
    BufferItemName 0, VAR_BerryItemID
    Message BerryTrees_Text_YouPickedTheBerry
    GoTo HarvestBerries

ShowMultipleBerriesPickedMessage:
    BufferItemNamePlural 0, VAR_BerryItemID
    Message BerryTrees_Text_YouPickedTheBerries
HarvestBerries:
    PlaySound SEQ_KINOMI
    WaitSound
    HarvestBerry
    BufferPlayerName 0
    GoToIfGt VAR_BerryYield, 1, ShowMultipleBerriesStoredMessage
    BufferItemName 1, VAR_BerryItemID
    GoTo ShowBerriesStoredMessage

ShowMultipleBerriesStoredMessage:
    BufferItemNamePlural 1, VAR_BerryItemID
ShowBerriesStoredMessage:
    GetItemPocket VAR_BerryItemID, VAR_RESULT
    BufferPocketName 3, VAR_RESULT
    Message BerryTrees_Text_PlayerPutAwayBerriesInBagPocket
    WaitABXPadPress
    GoTo CloseAndEnd

CheckBagSpace:
    GoToIfGt VAR_BerryYield, 1, ShowMultipleBerriesBagFullMessage
    BufferItemName 0, VAR_BerryItemID
    GoTo ShowBagFullMessage

ShowMultipleBerriesBagFullMessage:
    BufferItemNamePlural 0, VAR_BerryItemID
ShowBagFullMessage:
    Message BerryTrees_Text_BagIsFullBerriesCouldntBeTaken
    WaitABXPadPress
    GoTo CloseAndEnd

HandleHarvestDeclined:
    Call CheckPlayerHasSprayduck
    GoToIfEq VAR_RESULT, 0, ShowLeftBerryMessage
    GoTo OfferWatering

ShowLeftBerryMessage:
    BufferPlayerName 0
    GoToIfGt VAR_BerryYield, 1, ShowLeftBerriesMessage
    BufferItemName 1, VAR_BerryItemID
    Message BerryTrees_Text_PlayerLeftBerryWhereItWas
    GoTo EndLeftBerryMessage

ShowLeftBerriesMessage:
    BufferItemNamePlural 1, VAR_BerryItemID
    Message BerryTrees_Text_PlayerLeftBerriesWhereTheyWere
EndLeftBerryMessage:
    WaitABXPadPress
    GoTo CloseAndEnd

CheckExistingMulch:
    GetBerryMulchType VAR_RESULT
    GoToIfEq VAR_RESULT, 0, CheckEmptySoil
    CheckPocketHasItems POCKET_BERRIES, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, ShowMulchExistsMessage
    GetBerryMulchType VAR_RESULT
    BufferItemName 0, VAR_RESULT
    Message BerryTrees_Text_MulchHasBeenLaidDown
    GoTo OfferPlantBerry

CheckEmptySoil:
    GetPlayerDir VAR_RESULT
    GoToIfNe VAR_RESULT, 0, ShowEmptySoilMessage
    Call CheckPlayerHasMulch
    GoToIfEq VAR_RESULT, 1, ShowSoilMenu
    CheckPocketHasItems POCKET_BERRIES, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, ShowEmptySoilMessage
    Message BerryTrees_Text_SoftEarthySoil
    GoTo OfferPlantBerry

ShowSoilMenu:
    Message BerryTrees_Text_SoftEarthySoil
    CheckPocketHasItems POCKET_BERRIES, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, OfferFertilizer
    InitLocalTextMenu 1, 1, 0, VAR_RESULT
    AddMenuEntryImm BerryTrees_Text_Fertilize, 0
    AddMenuEntryImm BerryTrees_Text_PlantBerry, 1
    AddMenuEntryImm BerryTrees_Text_Exit, 2
    ShowMenu
    SetVar VAR_MenuSelection, VAR_RESULT
    GoToIfEq VAR_MenuSelection, 0, OpenMulchMenu
    GoToIfEq VAR_MenuSelection, 1, OpenBerryMenu
    GoToIfEq VAR_MenuSelection, 2, CloseAndEnd
    GoTo CloseAndEnd

OfferFertilizer:
    Message BerryTrees_Text_PutDownSomeFertilizer
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, OpenMulchMenu
    GoTo CloseAndEnd

OpenMulchMenu:
    CloseMessage
    FadeScreenOut
    WaitFadeScreen
    OpenItemsBag
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    GetSelectedItem VAR_SelectedMulchID
    SetVar VAR_MenuSelection, VAR_SelectedMulchID
    GoToIfEq VAR_MenuSelection, ITEM_NONE, ReleaseAndEnd
    GoToIfEq VAR_MenuSelection, ITEM_GROWTH_MULCH, ApplyMulch
    GoToIfEq VAR_MenuSelection, ITEM_DAMP_MULCH, ApplyMulch
    GoToIfEq VAR_MenuSelection, ITEM_STABLE_MULCH, ApplyMulch
    GoToIfEq VAR_MenuSelection, ITEM_GOOEY_MULCH, ApplyMulch
    GoTo ReleaseAndEnd

ApplyMulch:
    RemoveItem VAR_SelectedMulchID, 1, VAR_TempItemCount
    SetBerryMulch VAR_SelectedMulchID
    CheckPocketHasItems POCKET_BERRIES, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, ShowMulchAppliedMessage
    BufferItemName 0, VAR_SelectedMulchID
    Message BerryTrees_Text_MulchWasScatteredOnSoil
    GoTo OfferPlantBerry

ShowMulchAppliedMessage:
    BufferItemName 0, VAR_SelectedMulchID
    Message BerryTrees_Text_MulchWasScatteredOnSoilAfterHarvest
    WaitABXPadPress
    GoTo CloseAndEnd

OfferPlantBerry:
    Message BerryTrees_Text_WantToPlantBerry
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, CloseAndEnd
OpenBerryMenu:
    CloseMessage
    FadeScreenOut
    WaitFadeScreen
    OpenBerriesBag
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    GetSelectedItem VAR_RESULT
    GoToIfEq VAR_RESULT, 0, ReleaseAndEnd
    BufferItemName 0, VAR_RESULT
    Message BerryTrees_Text_BerryWasPlantedInSoftSoil
    WaitABXPadPress
    RemoveItem VAR_RESULT, 1, VAR_TempItemCount
    PlantBerry VAR_RESULT
    GoTo CloseAndEnd

CloseAndEnd:
    CloseMessage
ReleaseAndEnd:
    ReleaseAll
    End

ShowEmptySoilMessage:
    Message BerryTrees_Text_SoftEarthySoilAfterHarvest
    WaitABXPadPress
    GoTo CloseAndEnd

ShowMulchExistsMessage:
    GetBerryMulchType VAR_RESULT
    BufferItemName 0, VAR_RESULT
    Message BerryTrees_Text_MulchHasBeenLaidDownAfterHarvest
    WaitABXPadPress
    GoTo CloseAndEnd

PlantBerryScript:
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

WaterBerryScript:
    LockAll
    SetBerryWateringState BERRY_WATERING_START
    Message BerryTrees_Text_ThereAllHappy
    WaitABXPadPress
    SetBerryWateringState BERRY_WATERING_END
    CloseMessage
    ReleaseAll
    End

ApplyMulchScript:
    LockAll
    SetVar VAR_RESULT, VAR_BerryItemID
    SetVar VAR_SelectedMulchID, VAR_BerryItemID
    GoTo ApplyMulch
