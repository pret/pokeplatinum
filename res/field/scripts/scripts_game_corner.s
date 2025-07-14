#include "macros/scrcmd.inc"
#include "res/text/bank/game_corner.h"

#define LOCALID_SLOT_MACHINE_ID VAR_0x8004


    ScriptEntry GameCorner_SlotMachine_0
    ScriptEntry GameCorner_SlotMachine_1
    ScriptEntry GameCorner_SlotMachine_2
    ScriptEntry GameCorner_SlotMachine_3
    ScriptEntry GameCorner_SlotMachine_4
    ScriptEntry GameCorner_SlotMachine_5
    ScriptEntry GameCorner_SlotMachine_6
    ScriptEntry GameCorner_SlotMachine_7
    ScriptEntry GameCorner_SlotMachine_8
    ScriptEntry GameCorner_SlotMachine_9
    ScriptEntry GameCorner_SlotMachine_10
    ScriptEntry GameCorner_SlotMachine_11
    ScriptEntry GameCorner_CoinsClerk
    ScriptEntry GameCorner_LadyExplainSlotMachines
    ScriptEntry GameCorner_OldMan20Coins
    ScriptEntry GameCorner_Farmer
    ScriptEntry GameCorner_Worker
    ScriptEntry GameCorner_LadyPokeBalls
    ScriptEntry GameCorner_Guitarist
    ScriptEntry GameCorner_MaylenesDad
    ScriptEntry GameCorner_SignBonusRounds
    ScriptEntry GameCorner_Looker
    ScriptEntryEnd

GameCorner_SlotMachine_0:
    SetVar LOCALID_SLOT_MACHINE_ID, 0
    GoTo GameCorner_SlotMachine

GameCorner_SlotMachine_1:
    SetVar LOCALID_SLOT_MACHINE_ID, 1
    GoTo GameCorner_SlotMachine

GameCorner_SlotMachine_2:
    SetVar LOCALID_SLOT_MACHINE_ID, 2
    GoTo GameCorner_SlotMachine

GameCorner_SlotMachine_3:
    SetVar LOCALID_SLOT_MACHINE_ID, 3
    GoTo GameCorner_SlotMachine

GameCorner_SlotMachine_4:
    SetVar LOCALID_SLOT_MACHINE_ID, 4
    GoTo GameCorner_SlotMachine

GameCorner_SlotMachine_5:
    SetVar LOCALID_SLOT_MACHINE_ID, 5
    GoTo GameCorner_SlotMachine

GameCorner_SlotMachine_6:
    SetVar LOCALID_SLOT_MACHINE_ID, 6
    GoTo GameCorner_SlotMachine

GameCorner_SlotMachine_7:
    SetVar LOCALID_SLOT_MACHINE_ID, 7
    GoTo GameCorner_SlotMachine

GameCorner_SlotMachine_8:
    SetVar LOCALID_SLOT_MACHINE_ID, 8
    GoTo GameCorner_SlotMachine

GameCorner_SlotMachine_9:
    SetVar LOCALID_SLOT_MACHINE_ID, 9
    GoTo GameCorner_SlotMachine

GameCorner_SlotMachine_10:
    SetVar LOCALID_SLOT_MACHINE_ID, 10
    GoTo GameCorner_SlotMachine

GameCorner_SlotMachine_11:
    SetVar LOCALID_SLOT_MACHINE_ID, 11
    GoTo GameCorner_SlotMachine

GameCorner_SlotMachine:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    CheckItem ITEM_COIN_CASE, 1, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, GameCorner_SlotMachine_NoCoinCase
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    CreateJournalEvent LOCATION_EVENT_GAME_CORNER, 0, 0, 0, 0
    ScrCmd_267 LOCALID_SLOT_MACHINE_ID
    ReturnToField
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    ReleaseAll
    End

GameCorner_SlotMachine_NoCoinCase:
    Message GameCorner_Text_YouCantPlayIfYouDontHaveACoinCase
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

GameCorner_CoinsClerk:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message GameCorner_Text_WelcomeToTheVeilstoneGameCorner
    CheckItem ITEM_COIN_CASE, 1, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, GameCorner_CoinsClerk_NoCoinCase
    GoToIfSet FLAG_GAME_CORNER_RECEIVED_TM64, GameCorner_CoinsClerk_ShowCoinsAndMoney
    GoToIfSet FLAG_GAME_CORNER_SAVED_TM64, GameCorner_CoinsClerk_CheckIfCanGiveTM64
    CheckBonusRoundStreak VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, GameCorner_CoinsClerk_ShowCoinsAndMoney
    GoTo GameCorner_CoinsClerk_CheckIfCanGiveTM64
    End

GameCorner_CoinsClerk_NoCoinCase:
    Message GameCorner_Text_DidYouWantSomeCoins_NoCoinCase
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

GameCorner_CoinsClerk_ShowCoinsAndMoney:
    ShowCoins 20, 2
    ShowMoney 20, 7
GameCorner_CoinsClerk_OpenCoinBuyMenu:
    Message GameCorner_Text_DidYouWantSomeCoins_1000For50Coins
    InitGlobalTextMenu 1, 1, 0, VAR_RESULT
    AddMenuEntryImm 125, 0
    AddMenuEntryImm 126, 1
    AddMenuEntryImm 127, 2
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, GameCorner_CoinsClerk_Buy50Coins
    GoToIfEq VAR_0x8008, 1, GameCorner_CoinsClerk_Buy500Coins
    GoTo GameCorner_CoinsClerk_Cancel

GameCorner_CoinsClerk_Buy50Coins:
    GoToIfNotEnoughMoney 1000, GameCorner_CoinsClerk_NotEnoughMoney
    GoToIfCannotAddCoins 50, GameCorner_CoinsClerk_CoinCaseFull
    PlayFanfare SEQ_SE_DP_REGI
    AddToGameRecord RECORD_MONEY_SPENT, 1000
    RemoveMoney 1000
    UpdateMoneyDisplay
    WaitFanfare SEQ_SE_DP_REGI
    PlayFanfare SEQ_SE_PL_COIN
    AddCoins 50
    UpdateCoinDisplay
    WaitFanfare SEQ_SE_PL_COIN
    Message GameCorner_Text_DidYouWantSomeCoins_ThankYouVeryMuchHereAreYourCoins
    WaitTime 30, VAR_RESULT
    GoTo GameCorner_CoinsClerk_OpenCoinBuyMenu

GameCorner_CoinsClerk_Buy500Coins:
    GoToIfNotEnoughMoney 10000, GameCorner_CoinsClerk_NotEnoughMoney
    GoToIfCannotAddCoins 500, GameCorner_CoinsClerk_CoinCaseFull
    PlayFanfare SEQ_SE_DP_REGI
    AddToGameRecord RECORD_MONEY_SPENT, 10000
    RemoveMoney 10000
    UpdateMoneyDisplay
    WaitFanfare SEQ_SE_DP_REGI
    PlayFanfare SEQ_SE_PL_COIN
    AddCoins 500
    UpdateCoinDisplay
    WaitFanfare SEQ_SE_PL_COIN
    Message GameCorner_Text_DidYouWantSomeCoins_ThankYouVeryMuchHereAreYourCoins
    WaitTime 30, VAR_RESULT
    GoTo GameCorner_CoinsClerk_OpenCoinBuyMenu

GameCorner_CoinsClerk_NotEnoughMoney:
    Message GameCorner_Text_UmYouDontAppearToHaveEnoughMoney
    WaitABXPadPress
    CloseMessage
    HideCoins
    HideMoney
    ReleaseAll
    End

GameCorner_CoinsClerk_CoinCaseFull:
    Message GameCorner_Text_OhYourCoinCaseIsFull
    WaitABXPadPress
    CloseMessage
    HideCoins
    HideMoney
    ReleaseAll
    End

GameCorner_CoinsClerk_Cancel:
    Message GameCorner_Text_OhYouDontNeedCoinsThen
    WaitABXPadPress
    CloseMessage
    HideCoins
    HideMoney
    ReleaseAll
    End

GameCorner_CoinsClerk_CheckIfCanGiveTM64:
    SetVar VAR_0x8004, ITEM_TM64
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, GameCorner_CoinsClerk_SaveTM64
    GoTo GameCorner_CoinsClerk_TenStraightBonusRounds
    End

GameCorner_CoinsClerk_TenStraightBonusRounds:
    GoToIfSet FLAG_GAME_CORNER_SAVED_TM64, GameCorner_CoinsClerk_TenStraightBonusRounds_SavedTM
    Message GameCorner_Text_TenStraightBonusRoundsOnTheSlots
    GoTo GameCorner_CoinsClerk_GiveTM64
    End

GameCorner_CoinsClerk_TenStraightBonusRounds_SavedTM:
    Message GameCorner_Text_WeReStillAmazedByYourTenStraightBonusRounds
    GoTo GameCorner_CoinsClerk_GiveTM64
    End

GameCorner_CoinsClerk_GiveTM64:
    CallCommonScript 0x7FC
    SetFlag FLAG_GAME_CORNER_RECEIVED_TM64
    Message GameCorner_Text_PleaseKeepPlayingTheSlots
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

GameCorner_CoinsClerk_SaveTM64:
    SetFlag FLAG_GAME_CORNER_SAVED_TM64
    GoTo GameCorner_CoinsClerk_ShowCoinsAndMoney
    End

GameCorner_LadyExplainSlotMachines:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message GameCorner_Text_IllEplainHowTheSlotMachinesWorkAtThisGameCorner
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

GameCorner_OldMan20Coins:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CheckItem ITEM_COIN_CASE, 1, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, GameCorner_OldMan20Coins_NoCoinCase
    GoToIfSet FLAG_GAME_CORNER_RECEIVED_20_COINS_OLD_MAN, GameCorner_OldMan20Coins_LineUpClefairy
    GoToIfCannotAddCoins 20, GameCorner_OldMan20Coins_LineUpClefairy
    SetFlag FLAG_GAME_CORNER_RECEIVED_20_COINS_OLD_MAN
    BufferPlayerName 0
    Message GameCorner_Text_IveBeenWinningATonToday
    WaitABXPadPress
    PlayFanfare SEQ_SE_PL_COIN
    AddCoins 20
    WaitFanfare SEQ_SE_PL_COIN
    CloseMessage
    ReleaseAll
    End

GameCorner_OldMan20Coins_NoCoinCase:
    Message GameCorner_Text_HeyKidIfYouWantToPlayHereYouNeedACoinCase
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

GameCorner_OldMan20Coins_LineUpClefairy:
    Message GameCorner_Text_ListenWhenClefairyAppears
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

GameCorner_Farmer:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CheckItem ITEM_COIN_CASE, 1, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, GameCorner_Farmer_NoCoinCase
    GoToIfSet FLAG_GAME_CORNER_RECEIVED_50_COINS_FARMER, GameCorner_Farmer_CannotAddCoins
    GoToIfCannotAddCoins 50, GameCorner_Farmer_CannotAddCoins
    SetFlag FLAG_GAME_CORNER_RECEIVED_50_COINS_FARMER
    BufferPlayerName 0
    Message GameCorner_Text_WooHooClefairyLookYeahahItsACarnival
    WaitABXPadPress
    PlayFanfare SEQ_SE_PL_COIN
    AddCoins 50
    WaitFanfare SEQ_SE_PL_COIN
    CloseMessage
    ReleaseAll
    End

GameCorner_Farmer_NoCoinCase:
    Message GameCorner_Text_WooHooClefairyLookAtItItsDrivingMeBananas
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

GameCorner_Farmer_CannotAddCoins:
    Message GameCorner_Text_WooHooClefairyItsAdorable
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

GameCorner_Worker:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message GameCorner_Text_IWantCoinsOfCourse
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

GameCorner_LadyPokeBalls:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message GameCorner_Text_WhenAPokeBallAppears
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

GameCorner_Guitarist:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message GameCorner_Text_AFriendInMyGroupScoredATonOfCoinsHere
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

GameCorner_MaylenesDad:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message GameCorner_Text_SighNothingGoingMyWayToday
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

GameCorner_SignBonusRounds:
    GoToIfGt VAR_CONSECUTIVE_BONUS_ROUND_WINS, 999, GameCorner_SignBonusRounds_GreaterThan999
    BufferNumber 0, VAR_CONSECUTIVE_BONUS_ROUND_WINS
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message GameCorner_Text_ShootFor10
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

GameCorner_SignBonusRounds_GreaterThan999:
    BufferNumber 0, 999
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message GameCorner_Text_ShootFor10
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

GameCorner_Looker:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_ARRESTED_CHARON_STARK_MOUNTAIN, GameCorner_Looker_PostStarkMountain
    Message GameCorner_Text_Looker
    GoTo GameCorner_Looker_End
    End

GameCorner_Looker_PostStarkMountain:
    Message GameCorner_Text_Looker_PostStarkMountain
    GoTo GameCorner_Looker_End
    End

GameCorner_Looker_End:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
