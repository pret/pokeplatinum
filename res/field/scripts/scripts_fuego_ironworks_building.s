#include "macros/scrcmd.inc"
#include "res/text/bank/fuego_ironworks_building.h"
#include "res/text/bank/menu_entries.h"


    ScriptEntry FuegoIronworksBuilding_OnTransition
    ScriptEntry FuegoIronworksBuilding_MrFuego
    ScriptEntryEnd

FuegoIronworksBuilding_OnTransition:
    SetFlag FLAG_FIRST_ARRIVAL_FUEGO_IRONWORKS
    End

FuegoIronworksBuilding_MrFuego:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_MR_FUEGO_ASKED_FOR_TRADE, FuegoIronworksBuilding_CheckStarPieceForTradeAgain
    GoToIfSet FLAG_RECEIVED_FUEGO_IRONWORKS_BUILDING_STAR_PIECE, FuegoIronworksBuilding_CheckStarPieceForTrade
    Message FuegoIronworksBuilding_Text_HeresASouvenir
    SetVar VAR_0x8004, ITEM_STAR_PIECE
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, FuegoIronworksBuilding_BagIsFull
    SetFlag FLAG_RECEIVED_FUEGO_IRONWORKS_BUILDING_STAR_PIECE
    Common_GiveItemQuantity
    GoTo FuegoIronworksBuilding_CheckStarPieceForTrade
    End

FuegoIronworksBuilding_CheckStarPieceForTrade:
    CheckItem ITEM_STAR_PIECE, 1, VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, FuegoIronworksBuilding_AskTradeStarPieceForShards
    Message FuegoIronworksBuilding_Text_TradeStarPiecesForShards
    GoTo FuegoIronworksBuilding_MrFuegoEnd
    End

FuegoIronworksBuilding_AskTradeStarPieceForShards:
    SetFlag FLAG_MR_FUEGO_ASKED_FOR_TRADE
    Message FuegoIronworksBuilding_Text_AskTradeStarPiecesForShards
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, FuegoIronworksBuilding_TryTrade
    GoToIfEq VAR_RESULT, MENU_NO, FuegoIronworksBuilding_YoureNotTrading
    End

FuegoIronworksBuilding_CheckStarPieceForTradeAgain:
    CheckItem ITEM_STAR_PIECE, 1, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, FuegoIronworksBuilding_AnyStarPieces
    Message FuegoIronworksBuilding_Text_WantToTrade
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, FuegoIronworksBuilding_TryTrade
    GoToIfEq VAR_RESULT, MENU_NO, FuegoIronworksBuilding_YoureNotTrading
    End

FuegoIronworksBuilding_AnyStarPieces:
    Message FuegoIronworksBuilding_Text_AnyStarPieces
    GoTo FuegoIronworksBuilding_MrFuegoEnd
    End

FuegoIronworksBuilding_MrFuegoEnd:
    WaitButton
    CloseMessage
    ReleaseAll
    End

FuegoIronworksBuilding_YoureNotTrading:
    Message FuegoIronworksBuilding_Text_YoureNotTrading
    GoTo FuegoIronworksBuilding_MrFuegoEnd
    End

FuegoIronworksBuilding_TryTrade:
    GetItemQuantity ITEM_STAR_PIECE, VAR_0x8000
    GoToIfGe VAR_0x8000, 10, FuegoIronworksBuilding_AskTrade10StarPieces
    GoTo FuegoIronworksBuilding_Trade1StarPiece
    End

FuegoIronworksBuilding_Trade1StarPiece:
    IncrementGameRecord RECORD_STAR_PIECES_TRADED
    RemoveItem ITEM_STAR_PIECE, 1, VAR_RESULT
    AddItem ITEM_RED_SHARD, 1, VAR_RESULT
    AddItem ITEM_BLUE_SHARD, 1, VAR_RESULT
    AddItem ITEM_YELLOW_SHARD, 1, VAR_RESULT
    AddItem ITEM_GREEN_SHARD, 1, VAR_RESULT
    GoTo FuegoIronworksBuilding_ThereYouAre
    End

FuegoIronworksBuilding_AskTrade10StarPieces:
    Message FuegoIronworksBuilding_Text_WantToTrade10StarPieces
    InitGlobalTextMenu 31, 11, 0, VAR_0x8001
    SetMenuXOriginToRight
    AddMenuEntry MenuEntries_Text_StarPieces_1, 0
    AddMenuEntry MenuEntries_Text_StarPieces_10, 1
    AddMenuEntry MenuEntries_Text_Exit2, 2
    ShowMenu
    SetVar VAR_0x8007, 10
    SetVar VAR_0x8008, VAR_0x8001
    GoToIfEq VAR_0x8008, 0, FuegoIronworksBuilding_Trade1StarPiece
    GoToIfEq VAR_0x8008, 1, FuegoIronworksBuilding_Trade10StarPieces
    GoTo FuegoIronworksBuilding_YoureNotTrading
    End

FuegoIronworksBuilding_Trade10StarPieces:
    SubVar VAR_0x8007, 1
    IncrementGameRecord RECORD_STAR_PIECES_TRADED
    AddItem ITEM_RED_SHARD, 1, VAR_RESULT
    AddItem ITEM_BLUE_SHARD, 1, VAR_RESULT
    AddItem ITEM_YELLOW_SHARD, 1, VAR_RESULT
    AddItem ITEM_GREEN_SHARD, 1, VAR_RESULT
    RemoveItem ITEM_STAR_PIECE, 1, VAR_RESULT
    GoToIfEq VAR_0x8007, 0, FuegoIronworksBuilding_ThereYouAre
    GoTo FuegoIronworksBuilding_Trade10StarPieces
    End

FuegoIronworksBuilding_ThereYouAre:
    Message FuegoIronworksBuilding_Text_ThereYouAre
    Message FuegoIronworksBuilding_Text_NothingIfNoIron
    WaitButton
    CloseMessage
    ReleaseAll
    End

FuegoIronworksBuilding_BagIsFull:
    Common_MessageBagIsFull
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
