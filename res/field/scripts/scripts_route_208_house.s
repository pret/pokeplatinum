#include "macros/scrcmd.inc"
#include "res/text/bank/menu_entries.h"
#include "res/text/bank/route_208_house.h"


    ScriptEntry Route208House_OnTransition
    ScriptEntry Route208House_OldMan
    ScriptEntry Route208House_Twin
    ScriptEntry Route208House_PokemonBreederF
    ScriptEntry Route208House_Book
    ScriptEntryEnd

Route208House_OnTransition:
    SetFlag FLAG_FIRST_ARRIVAL_BERRY_MASTERS_HOUSE
    End

Route208House_OldMan:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_RECEIVED_ROUTE_208_HOUSE_RANDOM_BERRY, Route208House_FeedBerriesToPokemon
    Message Route208House_Text_YoureDeservingOfABerry
    GetRandom VAR_0x8004, 26
    AddVar VAR_0x8004, ITEM_CHERI_BERRY /* Random berry from Cheri to Tamato */
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, Route208House_BagIsFull
    SetFlag FLAG_RECEIVED_ROUTE_208_HOUSE_RANDOM_BERRY
    Common_GiveItemQuantityNoLineFeed
    CloseMessage
    ReleaseAll
    End

Route208House_FeedBerriesToPokemon:
    Message Route208House_Text_FeedBerriesToPokemon
    WaitButton
    CloseMessage
    ReleaseAll
    End

Route208House_BagIsFull:
    Common_MessageBagIsFull
    CloseMessage
    ReleaseAll
    End

Route208House_Twin:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfEq VAR_MAP_LOCAL_0, 1, Route208House_ExplainBerrySearcher
    CheckPoketchAppRegistered POKETCH_APPID_BERRYSEARCHER, VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, Route208House_CertainBerriesNeedLotsOfWater
    Message Route208House_Text_DoYouForgetWhereBerriesArePlanted
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, Route208House_GiveBerrySearcherApp
    GoToIfEq VAR_RESULT, MENU_NO, Route208House_ThenYoureOKWithoutThisNiceThing
    End

Route208House_GiveBerrySearcherApp:
    Message Route208House_Text_YouCanHaveThisPoketchApp
    SetVar VAR_MAP_LOCAL_0, 1
    SetVar VAR_0x8004, POKETCH_APPID_BERRYSEARCHER
    Common_GivePoketchApp
    WaitButton
    CloseMessage
    ReleaseAll
    End

Route208House_ThenYoureOKWithoutThisNiceThing:
    Message Route208House_Text_ThenYoureOKWithoutThisNiceThing
    WaitButton
    CloseMessage
    ReleaseAll
    End

Route208House_ExplainBerrySearcher:
    BufferPoketchAppName 0, POKETCH_APPID_BERRYSEARCHER
    Message Route208House_Text_TheBerrySearcherShowsRipeBerryLocations
    WaitButton
    CloseMessage
    ReleaseAll
    End

Route208House_CertainBerriesNeedLotsOfWater:
    Message Route208House_Text_CertainBerriesNeedLotsOfWater
    WaitButton
    CloseMessage
    ReleaseAll
    End

Route208House_PokemonBreederF:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message Route208House_Text_WouldYouLikeSomeMulch
    ShowMoney 20, 2
    InitGlobalTextMenu 1, 1, 0, VAR_RESULT
    AddMenuEntryImm MenuEntries_Text_MulchShop_GrowthMulch, 0
    AddMenuEntryImm MenuEntries_Text_MulchShop_DampMulch, 1
    AddMenuEntryImm MenuEntries_Text_MulchShop_StableMulch, 2
    AddMenuEntryImm MenuEntries_Text_MulchShop_GooeyMulch, 3
    AddMenuEntryImm MenuEntries_Text_MulchShop_Exit, 4
    ShowMenu
    SetVar VAR_0x8000, VAR_RESULT
    SetVar VAR_0x8008, VAR_0x8000
    GoToIfEq VAR_0x8008, 0, Route208House_TryBuyGrowthMulch
    GoToIfEq VAR_0x8008, 1, Route208House_TryBuyDampMulch
    GoToIfEq VAR_0x8008, 2, Route208House_TryBuyStableMulch
    GoToIfEq VAR_0x8008, 3, Route208House_TryBuyGooeyMulch
    Message Route208House_Text_PleaseComeAgain
    GoTo Route208House_PokemonBreederFEnd

Route208House_TryBuyMulch:
    CallIfEq VAR_0x8000, 0, Route208House_CheckMoneyGrowthMulch
    CallIfEq VAR_0x8000, 1, Route208House_CheckMoneyDampMulch
    CallIfEq VAR_0x8000, 2, Route208House_CheckMoneyStableMulch
    CallIfEq VAR_0x8000, 3, Route208House_CheckMoneyGooeyMulch
    GoToIfEq VAR_RESULT, 0, Route208House_YouDontHaveEnoughMoney
    GoToIfCannotFitItem VAR_0x8001, 1, VAR_RESULT, Route208House_YourBagAppearsToBeFull
    CallIfEq VAR_0x8000, 0, Route208House_SpendMoneyGrowthMulch
    CallIfEq VAR_0x8000, 1, Route208House_SpendMoneyDampMulch
    CallIfEq VAR_0x8000, 2, Route208House_SpendMoneyStableMulch
    CallIfEq VAR_0x8000, 3, Route208House_SpendMoneyGooeyMulch
    UpdateMoneyDisplay
    PlaySE SEQ_SE_DP_REGI
    AddItem VAR_0x8001, 1, VAR_RESULT
    BufferItemName 0, VAR_0x8001
    Message Route208House_Text_YouBoughtSomeMulch
    Message Route208House_Text_ThatMulchWillPromoteBerryGrowth
    GoTo Route208House_PokemonBreederFEnd

Route208House_PokemonBreederFEnd:
    WaitButton
    CloseMessage
    HideMoney
    ReleaseAll
    End

Route208House_YourBagAppearsToBeFull:
    Message Route208House_Text_YourBagAppearsToBeFull
    GoTo Route208House_PokemonBreederFEnd

Route208House_YouDontHaveEnoughMoney:
    Message Route208House_Text_YouDontHaveEnoughMoney
    GoTo Route208House_PokemonBreederFEnd

Route208House_TryBuyGrowthMulch:
    SetVar VAR_0x8001, ITEM_GROWTH_MULCH
    GoTo Route208House_TryBuyMulch

Route208House_TryBuyDampMulch:
    SetVar VAR_0x8001, ITEM_DAMP_MULCH
    GoTo Route208House_TryBuyMulch

Route208House_TryBuyStableMulch:
    SetVar VAR_0x8001, ITEM_STABLE_MULCH
    GoTo Route208House_TryBuyMulch

Route208House_TryBuyGooeyMulch:
    SetVar VAR_0x8001, ITEM_GOOEY_MULCH
    GoTo Route208House_TryBuyMulch

Route208House_CheckMoneyGrowthMulch:
    CheckMoney VAR_RESULT, 200
    Return

Route208House_CheckMoneyDampMulch:
    CheckMoney VAR_RESULT, 200
    Return

Route208House_CheckMoneyStableMulch:
    CheckMoney VAR_RESULT, 200
    Return

Route208House_CheckMoneyGooeyMulch:
    CheckMoney VAR_RESULT, 200
    Return

Route208House_SpendMoneyGrowthMulch:
    AddToGameRecord RECORD_MONEY_SPENT, 200
    RemoveMoney 200
    Return

Route208House_SpendMoneyDampMulch:
    AddToGameRecord RECORD_MONEY_SPENT, 200
    RemoveMoney 200
    Return

Route208House_SpendMoneyStableMulch:
    AddToGameRecord RECORD_MONEY_SPENT, 200
    RemoveMoney 200
    Return

Route208House_SpendMoneyGooeyMulch:
    AddToGameRecord RECORD_MONEY_SPENT, 200
    RemoveMoney 200
    Return

Route208House_Book:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message Route208House_Text_BookMuchAdoAboutMulch
    GoTo Route208House_ReadAboutWhatMulch
    End

Route208House_ReadAboutWhatMulch:
    Message Route208House_Text_ReadAboutWhatMulch
    InitLocalTextMenu 30, 7, 0, VAR_RESULT
    SetMenuXOriginToRight
    AddMenuEntryImm Route208House_Text_GrowthMulch, 0
    AddMenuEntryImm Route208House_Text_DampMulch, 1
    AddMenuEntryImm Route208House_Text_StableMulch, 2
    AddMenuEntryImm Route208House_Text_GooeyMulch, 3
    AddMenuEntryImm Route208House_Text_Exit, 4
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, Route208House_ExplainGrowthMulch
    GoToIfEq VAR_0x8008, 1, Route208House_ExplainDampMulch
    GoToIfEq VAR_0x8008, 2, Route208House_ExplainStableMulch
    GoToIfEq VAR_0x8008, 3, Route208House_ExplainGooeyMulch
    GoToIfEq VAR_0x8008, 4, Route208House_BookEnd
    GoTo Route208House_BookEnd
    End

Route208House_ExplainGrowthMulch:
    Message Route208House_Text_ExplainGrowthMulch
    GoTo Route208House_ReadAboutWhatMulch
    End

Route208House_ExplainDampMulch:
    Message Route208House_Text_ExplainDampMulch
    GoTo Route208House_ReadAboutWhatMulch
    End

Route208House_ExplainStableMulch:
    Message Route208House_Text_ExplainStableMulch
    GoTo Route208House_ReadAboutWhatMulch
    End

Route208House_ExplainGooeyMulch:
    Message Route208House_Text_ExplainGooeyMulch
    GoTo Route208House_ReadAboutWhatMulch
    End

Route208House_BookEnd:
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
