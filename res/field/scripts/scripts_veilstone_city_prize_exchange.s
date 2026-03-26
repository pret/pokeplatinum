#include "macros/scrcmd.inc"
#include "res/text/bank/veilstone_city_prize_exchange.h"
#include "res/text/bank/menu_entries.h"


    ScriptEntry VeilstoneCityPrizeExchange_Receptionist
    ScriptEntry VeilstoneCityPrizeExchange_Guitarist
    ScriptEntry VeilstoneCityPrizeExchange_OldMan
    ScriptEntryEnd

VeilstoneCityPrizeExchange_Receptionist:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    SetVar VAR_MAP_LOCAL_1, 19
    Message VeilstoneCityPrizeExchange_Text_ExchangeCoinsForPrizes
    ShowCoins 21, 1
    SetVar VAR_0x8005, 0
    SetVar VAR_0x8006, 0
    GoTo VeilstoneCityPrizeExchange_TryBuyPrize
    End

VeilstoneCityPrizeExchange_TryBuyPrize:
    Message VeilstoneCityPrizeExchange_Text_WhichPrize
    Call VeilstoneCityPrizeExchange_InitPrizeMenu
    GoToIfEq VAR_RESULT, MENU_CANCEL, VeilstoneCityPrizeExchange_DontBuyAPrize
    GoToIfEq VAR_RESULT, VAR_MAP_LOCAL_1, VeilstoneCityPrizeExchange_DontBuyAPrize
    GetGameCornerPrizeData VAR_RESULT, VAR_0x8000, VAR_0x8001
    CallIfLt VAR_0x8000, ITEM_TM01, VeilstoneCityPrizeExchange_IsYourChoiceThisItem
    CallIfGe VAR_0x8000, ITEM_TM01, VeilstoneCityPrizeExchange_IsYourChoiceThisTM
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, VeilstoneCityPrizeExchange_TryBuyPrize
    HasCoins VAR_RESULT, VAR_0x8001
    GoToIfEq VAR_RESULT, FALSE, VeilstoneCityPrizeExchange_NotEnoughCoins
    GoToIfCannotFitItem VAR_0x8000, 1, VAR_RESULT, VeilstoneCityPrizeExchange_NoRoomAvailable
    Message VeilstoneCityPrizeExchange_Text_HereYouGo
    AddItem VAR_0x8000, 1, VAR_RESULT
    SubtractCoins VAR_0x8001
    UpdateCoinDisplay
    PlaySE SEQ_SE_DP_REGI
    WaitSE SEQ_SE_DP_REGI
    GoTo VeilstoneCityPrizeExchange_TryBuyPrize
    End

VeilstoneCityPrizeExchange_DontBuyAPrize:
    Message VeilstoneCityPrizeExchange_Text_OhIsThatSo
    WaitButton
    CloseMessage
    HideCoins
    ReleaseAll
    End

VeilstoneCityPrizeExchange_NoRoomAvailable:
    BufferItemName 0, VAR_0x8000
    Message VeilstoneCityPrizeExchange_Text_NoRoomAvailable
    GoTo VeilstoneCityPrizeExchange_TryBuyPrize
    End

VeilstoneCityPrizeExchange_NotEnoughCoins:
    Message VeilstoneCityPrizeExchange_Text_NotEnoughCoins
    GoTo VeilstoneCityPrizeExchange_TryBuyPrize
    End

VeilstoneCityPrizeExchange_IsYourChoiceThisItem:
    BufferItemName 0, VAR_0x8000
    Message VeilstoneCityPrizeExchange_Text_IsYourChoiceThisItem
    Return

VeilstoneCityPrizeExchange_IsYourChoiceThisTM:
    BufferItemName 0, VAR_0x8000
    BufferTMHMMoveName 1, VAR_0x8000
    Message VeilstoneCityPrizeExchange_Text_IsYourChoiceThisTM
    Return

VeilstoneCityPrizeExchange_InitPrizeMenu:
    SetVar VAR_0x8008, 0
    SetVar VAR_0x8009, 0
    InitGlobalTextListMenu 1, 1, 0, VAR_RESULT
    GoTo VeilstoneCityPrizeExchange_AddPrizeToMenu
    End

VeilstoneCityPrizeExchange_AddPrizeToMenu:
    GetGameCornerPrizeData VAR_0x8008, VAR_0x8000, VAR_0x8001
    BufferItemName 0, VAR_0x8000
    BufferVarPaddingDigits 1, VAR_0x8001, PADDING_MODE_SPACES, 5
    AddListMenuEntry MenuEntries_Text_PrizeExchange_Prize, VAR_0x8008
    AddVar VAR_0x8008, 1
    GoToIfLt VAR_0x8008, VAR_MAP_LOCAL_1, VeilstoneCityPrizeExchange_AddPrizeToMenu
    GoTo VeilstoneCityPrizeExchange_FinishMenu
    End

VeilstoneCityPrizeExchange_FinishMenu:
    AddListMenuEntry MenuEntries_Text_PrizeExchange_NoThanks, VAR_0x8008
    ShowListMenuRememberCursor VAR_0x8005, VAR_0x8006
    Return

VeilstoneCityPrizeExchange_Guitarist:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_TALKED_TO_VEILSTONE_CITY_PRIZE_EXCHANGE_GUITARIST, VeilstoneCityPrizeExchange_AskTellHiddenPowerType
    SetFlag FLAG_TALKED_TO_VEILSTONE_CITY_PRIZE_EXCHANGE_GUITARIST
    Message VeilstoneCityPrizeExchange_Text_ICanTellHiddenPowerTypes
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, VeilstoneCityPrizeExchange_IfYouWantAskMe
    GoTo VeilstoneCityPrizeExchange_TryTellHiddenPowerType
    End

VeilstoneCityPrizeExchange_AskTellHiddenPowerType:
    Message VeilstoneCityPrizeExchange_Text_IllTellHiddenPowerTypes
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, VeilstoneCityPrizeExchange_IfYouWantAskMe
    GoTo VeilstoneCityPrizeExchange_TryTellHiddenPowerType
    End

VeilstoneCityPrizeExchange_TryTellHiddenPowerType:
    CloseMessage
    FadeScreenOut
    WaitFadeScreen
    SelectMoveTutorPokemon
    GetSelectedPartySlot VAR_0x8000
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    GoToIfEq VAR_0x8000, PARTY_SLOT_NONE, VeilstoneCityPrizeExchange_IfYouWantAskMe
    GetPartyMonSpecies VAR_0x8000, VAR_0x8001
    GoToIfEq VAR_0x8001, 0, VeilstoneCityPrizeExchange_EggsCantLearnMoves
    CalcHiddenPowerType VAR_0x8000, VAR_0x8004
    GoToIfEq VAR_0x8004, -1, VeilstoneCityPrizeExchange_PokemonCantLearnHiddenPower
    CheckPartyMonHasMove VAR_RESULT, MOVE_HIDDEN_POWER, VAR_0x8000
    GoToIfEq VAR_RESULT, 0, VeilstoneCityPrizeExchange_PokemonsHiddenPowerWouldBeType
    BufferTypeName 0, VAR_0x8004
    Message VeilstoneCityPrizeExchange_Text_PokemonsHiddenPowerIsType
    GoTo VeilstoneCityPrizeExchange_GuitaristEnd
    End

VeilstoneCityPrizeExchange_PokemonCantLearnHiddenPower:
    Message VeilstoneCityPrizeExchange_Text_PokemonCantLearnHiddenPower
    GoTo VeilstoneCityPrizeExchange_GuitaristEnd
    End

VeilstoneCityPrizeExchange_IfYouWantAskMe:
    Message VeilstoneCityPrizeExchange_Text_IfYouWantAskMe
    GoTo VeilstoneCityPrizeExchange_GuitaristEnd
    End

VeilstoneCityPrizeExchange_EggsCantLearnMoves:
    Message VeilstoneCityPrizeExchange_Text_EggsCantLearnMoves
    GoTo VeilstoneCityPrizeExchange_GuitaristEnd
    End

VeilstoneCityPrizeExchange_PokemonsHiddenPowerWouldBeType:
    BufferTypeName 0, VAR_0x8004
    Message VeilstoneCityPrizeExchange_Text_PokemonsHiddenPowerWouldBeType
    GoTo VeilstoneCityPrizeExchange_GuitaristEnd
    End

VeilstoneCityPrizeExchange_GuitaristEnd:
    WaitButton
    CloseMessage
    ReleaseAll
    End

VeilstoneCityPrizeExchange_OldMan:
    NPCMessage VeilstoneCityPrizeExchange_Text_IHaveNoCoins
    End

    .balign 4, 0
