#include "macros/scrcmd.inc"
#include "res/text/bank/union_room.h"
#include "res/text/bank/menu_entries.h"


    ScriptEntry UnionRoom_OnTransition
    ScriptEntry UnionRoom_OnLoad
    ScriptEntry UnionRoom_OnResume
    ScriptEntry UnionRoom_Player
    ScriptEntry UnionRoom_PlayerContactedYou
    ScriptEntry UnionRoom_UnusedEntry6
    ScriptEntry UnionRoom_PlayerBusy
    ScriptEntry UnionRoom_Teala
    ScriptEntryEnd

UnionRoom_OnTransition:
    End

UnionRoom_OnLoad:
    End

UnionRoom_OnResume:
    ScrCmd_142
    End

UnionRoom_Player:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ScrCmd_140 VAR_RESULT
    SetVar VAR_0x8004, VAR_RESULT
    GoToIfEq VAR_RESULT, 5, UnionRoom_TrainerAppearsBusy
    DoUnionRoomGreeting 0
    GoToIfEq VAR_RESULT, 2, UnionRoom_PlayerAskJoinDraw
    GoToIfEq VAR_RESULT, 3, UnionRoom_PlayerAskJoinMixRecords
    GoToIfEq VAR_RESULT, 4, UnionRoom_PlayerAskJoinSpinTrade
    ScrCmd_146 VAR_0x8004, VAR_RESULT
    ScrCmd_140 VAR_RESULT
    GoToIfEq VAR_RESULT, 5, UnionRoom_TrainerAppearsBusy
    Message UnionRoom_Text_TalkingToPlayer
    ScrCmd_141 VAR_RESULT
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 3, UnionRoom_PlayerContactedYou
    GoToIfEq VAR_0x8008, 2, UnionRoom_SorrySomethingElseToDo
    GoTo UnionRoom_ThisIsPlayerDoSomething
    End

UnionRoom_ThisIsPlayerDoSomething:
    ScrCmd_135 100
    GetUnionRoomMessage UR_MSG_THIS_IS_PLAYER_ASK_DO_SOMETHING, VAR_RESULT
    MessageAutoScroll VAR_RESULT
    GoTo UnionRoom_ActivityMenu
    End

UnionRoom_DoSomethingElse:
    ScrCmd_135 100
    ScrCmd_139 11
    GetUnionRoomMessage UR_MSG_DO_SOMETHING_ELSE, VAR_RESULT
    MessageVar VAR_RESULT
    GoTo UnionRoom_ActivityMenu
    End

UnionRoom_ActivityMenu:
    InitGlobalTextMenu 31, 3, 0, VAR_RESULT
    SetMenuXOriginToRight
    AddMenuEntryImm MenuEntries_Text_UnionRoom_Greet, 0
    AddMenuEntryImm MenuEntries_Text_UnionRoom_Draw, 1
    AddMenuEntryImm MenuEntries_Text_UnionRoom_Battle, 2
    AddMenuEntryImm MenuEntries_Text_UnionRoom_Trade, 3
    AddMenuEntryImm MenuEntries_Text_UnionRoom_Records, 4
    AddMenuEntryImm MenuEntries_Text_UnionRoom_Spin, 5
    AddMenuEntryImm MenuEntries_Text_UnionRoom_Cancel, 99
    ShowUnionRoomMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, UnionRoom_AskPlayerGreet
    GoToIfEq VAR_0x8008, 1, UnionRoom_AskPlayerDraw
    GoToIfEq VAR_0x8008, 2, UnionRoom_AskPlayerBattle
    GoToIfEq VAR_0x8008, 3, UnionRoom_AskPlayerTrade
    GoToIfEq VAR_0x8008, 4, UnionRoom_AskPlayerMixRecords
    GoToIfEq VAR_0x8008, 5, UnionRoom_AskPlayerSpinTrade
    GoToIfEq VAR_0x8008, 7, UnionRoom_OtherPlayerSomethingElseToDo
    ScrCmd_143 0, 7
    GoTo UnionRoom_CancelPlayerInteraction
    End

UnionRoom_AskPlayerGreet:
    ScrCmd_143 0, 1
    GetUnionRoomMessage UR_MSG_WAIT_FOR_ANSWER, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, UnionRoom_TryShowTrainerCase
    MessageVar VAR_RESULT
UnionRoom_TryShowTrainerCase:
    ScrCmd_144 VAR_RESULT
    GoToIfEq VAR_RESULT, 7, UnionRoom_OtherPlayerDeclinedGreet
    ScrCmd_139 5
    GetUnionRoomMessage UR_MSG_LETS_START, VAR_RESULT
    MessageVar VAR_RESULT
    WaitTime 30, VAR_RESULT
    ScrCmd_135 1
    CloseMessage
    FadeScreenOut
    WaitFadeScreen
    OpenUnionRoomTrainerCase
    ReturnToField
    Call UnionRoom_InitCommFieldCmd
    MessageInstant UnionRoom_Text_WaitOtherPlayerFinish
    GoTo UnionRoom_DoSomethingElse
    End

UnionRoom_AskPlayerTrade:
    CountPartyNonEggs VAR_RESULT
    GoToIfLt VAR_RESULT, 2, UnionRoom_NeedTwoPokemonDoSomethingElse
    ScrCmd_143 0, 3
    GetUnionRoomMessage UR_MSG_WAIT_FOR_ANSWER, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, UnionRoom_TryTrade
    MessageVar VAR_RESULT
UnionRoom_TryTrade:
    ScrCmd_144 VAR_RESULT
    GoToIfEq VAR_RESULT, 7, UnionRoom_OtherPlayerDeclinedTrade
    ScrCmd_139 7
    GetUnionRoomMessage UR_MSG_LETS_START, VAR_RESULT
    MessageVar VAR_RESULT
    WaitTime 30, VAR_RESULT
    ScrCmd_135 3
    CloseMessage
    FadeScreenOut
    WaitFadeScreen
    ScrCmd_0AE
    ReturnToField
    Call UnionRoom_InitCommFieldCmd
    GoTo UnionRoom_DoSomethingElse
    End

UnionRoom_NeedTwoPokemonDoSomethingElse:
    GetUnionRoomMessage UR_MSG_CANT_TRADE_IF_ONE_POKEMON, VAR_RESULT
    MessageVar VAR_RESULT
    GoTo UnionRoom_DoSomethingElse
    End

UnionRoom_AskPlayerBattle:
    CountPartyMonsBelowLevelThreshold VAR_RESULT, 30
    GoToIfLt VAR_RESULT, 2, UnionRoom_NeedTwoPokemonLv30DoSomethingElse
    ScrCmd_143 0, 2
    GetUnionRoomMessage UR_MSG_WAIT_FOR_ANSWER, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, UnionRoom_TryBattle
    MessageVar VAR_RESULT
UnionRoom_TryBattle:
    ScrCmd_144 VAR_RESULT
    GoToIfEq VAR_RESULT, 7, UnionRoom_OtherPlayerDeclinedBattle
    ScrCmd_139 6
    GetUnionRoomMessage UR_MSG_LETS_START, VAR_RESULT
    MessageVar VAR_RESULT
    WaitTime 30, VAR_RESULT
    ScrCmd_135 2
    CloseMessage
    FadeScreenOut
    WaitFadeScreen
    SelectPokemonForUnionRoomBattle
    FadeScreenIn
    WaitFadeScreen
    Message UnionRoom_Text_WaitOtherPlayersChoice
    ScrCmd_135 102
    CloseMessage
    ScrCmd_2BA VAR_RESULT
    GoToIfEq VAR_RESULT, 1, UnionRoom_BattleHasBeenCanceled
    GoToIfEq VAR_RESULT, 2, UnionRoom_BattleHasBeenCanceled
    StartLinkBattle
    Call UnionRoom_InitCommFieldCmd
    GoTo UnionRoom_DoSomethingElse
    End

UnionRoom_NeedTwoPokemonLv30DoSomethingElse:
    GetUnionRoomMessage UR_MSG_NEED_TWO_LV_30_POKEMON_TO_BATTLE, VAR_RESULT
    MessageVar VAR_RESULT
    GoTo UnionRoom_DoSomethingElse
    End

UnionRoom_AskPlayerDraw:
    ScrCmd_143 0, 4
    GetUnionRoomMessage UR_MSG_WAIT_FOR_ANSWER, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, UnionRoom_TryDraw
    MessageVar VAR_RESULT
UnionRoom_TryDraw:
    ScrCmd_144 VAR_RESULT
    GoToIfEq VAR_RESULT, 7, UnionRoom_OtherPlayerDeclinedDraw
    GetUnionRoomMessage UR_MSG_LETS_START, VAR_RESULT
    MessageVar VAR_RESULT
    WaitABPressTime 30
    ScrCmd_135 4
    CloseMessage
    FadeScreenOut
    WaitFadeScreen
    ScrCmd_0AC
    ReturnToField
    Call UnionRoom_InitCommFieldCmd
    GoTo UnionRoom_PlayerInteractionEnd
    End

UnionRoom_AskPlayerMixRecords:
    ScrCmd_143 0, 5
    GetUnionRoomMessage UR_MSG_WAIT_FOR_ANSWER, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, UnionRoom_TryMixRecords
    MessageVar VAR_RESULT
UnionRoom_TryMixRecords:
    ScrCmd_144 VAR_RESULT
    GoToIfEq VAR_RESULT, 7, UnionRoom_OtherPlayerDeclinedMixRecords
    GetUnionRoomMessage UR_MSG_LETS_START, VAR_RESULT
    MessageVar VAR_RESULT
    WaitABPressTime 30
    ScrCmd_135 5
    CloseMessage
    FadeScreenOut
    WaitFadeScreen
    ScrCmd_0AF
    ReturnToField
    Call UnionRoom_InitCommFieldCmd
    GoTo UnionRoom_PlayerInteractionEnd
    End

UnionRoom_AskPlayerSpinTrade:
    CountPartyEggs VAR_RESULT
    GoToIfEq VAR_RESULT, 0, UnionRoom_SpinTradeNeedEgg
    IsCommGameCodePlatinum VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, UnionRoom_CantSpinTradeDiamondPearl
    ScrCmd_143 0, 6
    GetUnionRoomMessage UR_MSG_WAIT_FOR_ANSWER, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, UnionRoom_TrySpin
    MessageVar VAR_RESULT
UnionRoom_TrySpin:
    ScrCmd_144 VAR_RESULT
    GoToIfEq VAR_RESULT, 7, UnionRoom_OtherPlayerDeclinedSpinTrade
    GetUnionRoomMessage UR_MSG_LETS_START, VAR_RESULT
    MessageVar VAR_RESULT
    WaitABPressTime 30
    ScrCmd_135 6
    CloseMessage
    FadeScreenOut
    WaitFadeScreen
    ScrCmd_2C6
    ReturnToField
    Call UnionRoom_InitCommFieldCmd
    GoTo UnionRoom_PlayerInteractionEnd
    End

UnionRoom_PlayerInteractionEnd:
    ReleaseAll
    End

UnionRoom_Unused:
    ScrCmd_143 0, 1
    CloseMessage
    ReleaseAll
    End

UnionRoom_SorrySomethingElseToDo:
    Message UnionRoom_Text_SorrySomethingElseToDoMale
    WaitTime 30, VAR_RESULT
    CloseMessage
    ScrCmd_13B
    ReleaseAll
    End

UnionRoom_TrainerAppearsBusy:
    ScrCmd_13A
    GetUnionRoomMessage UR_MSG_TRAINER_BUSY, VAR_RESULT
    MessageVar VAR_RESULT
    WaitABPress
    CloseMessage
    ScrCmd_13B
    ReleaseAll
    End

UnionRoom_PlayerAskJoinDraw:
    ScrCmd_13A
    GetUnionRoomMessage UR_MSG_ASK_JOIN_DRAW, VAR_RESULT
    MessageVar VAR_RESULT
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, UnionRoom_DeclinedJoinDraw
    ScrCmd_146 VAR_0x8004, VAR_RESULT
    GoToIfEq VAR_RESULT, 5, UnionRoom_SorrySomethingElseToDo
    ScrCmd_141 VAR_RESULT
    GoToIfEq VAR_RESULT, 2, UnionRoom_SorrySomethingElseToDo
    GetUnionRoomMessage UR_MSG_JOINED_DRAW, VAR_RESULT
    MessageVar VAR_RESULT
    WaitTime 30, VAR_RESULT
    CloseMessage
    FadeScreenOut
    WaitFadeScreen
    ScrCmd_0AC
    ReturnToField
    FadeScreenIn
    GoTo UnionRoom_PlayerInteractionEnd
    End

UnionRoom_DeclinedJoinDraw:
    GetUnionRoomMessage UR_MSG_DECLINED_JOIN_DRAW, VAR_RESULT
    MessageVar VAR_RESULT
    WaitTime 30, VAR_RESULT
    ScrCmd_13B
    CloseMessage
    ReleaseAll
    End

UnionRoom_PlayerAskJoinMixRecords:
    ScrCmd_13A
    GetUnionRoomMessage UR_MSG_ASK_JOIN_MIX_RECORDS, VAR_RESULT
    MessageVar VAR_RESULT
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, UnionRoom_DeclinedJoinMixRecords
    ScrCmd_146 VAR_0x8004, VAR_RESULT
    GoToIfEq VAR_RESULT, 5, UnionRoom_SorrySomethingElseToDo
    ScrCmd_141 VAR_RESULT
    GoToIfEq VAR_RESULT, 2, UnionRoom_SorrySomethingElseToDo
    GetUnionRoomMessage UR_MSG_JOINED_MIX_RECORDS, VAR_RESULT
    MessageVar VAR_RESULT
    WaitTime 30, VAR_RESULT
    CloseMessage
    FadeScreenOut
    WaitFadeScreen
    ScrCmd_0AF
    ReturnToField
    FadeScreenIn
    GoTo UnionRoom_PlayerInteractionEnd
    End

UnionRoom_PlayerAskJoinSpinTrade:
    ScrCmd_13A
    GetUnionRoomMessage UR_MSG_ASK_JOIN_SPIN_TRADE, VAR_RESULT
    MessageVar VAR_RESULT
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, UnionRoom_DeclinedJoinSpinTrade
    CountPartyEggs VAR_RESULT
    GoToIfEq VAR_RESULT, 0, UnionRoom_NeedEggToSpinTrade
    CheckPartyHasBadEgg VAR_RESULT
    GoToIfEq VAR_RESULT, 1, UnionRoom_CantJoinSpinTradeWithBadEgg
    ScrCmd_146 VAR_0x8004, VAR_RESULT
    GoToIfEq VAR_RESULT, 5, UnionRoom_SorrySomethingElseToDo
    ScrCmd_141 VAR_RESULT
    GoToIfEq VAR_RESULT, 2, UnionRoom_SorrySomethingElseToDo
    GetUnionRoomMessage UR_MSG_JOINED_SPIN_TRADE, VAR_RESULT
    MessageVar VAR_RESULT
    WaitTime 30, VAR_RESULT
    CloseMessage
    FadeScreenOut
    WaitFadeScreen
    ScrCmd_2C6
    ReturnToField
    FadeScreenIn
    GoTo UnionRoom_PlayerInteractionEnd
    End

UnionRoom_DeclinedJoinMixRecords:
    GetUnionRoomMessage UR_MSG_DECLINED_JOIN_MIX_RECORDS, VAR_RESULT
    MessageVar VAR_RESULT
    WaitTime 30, VAR_RESULT
    CloseMessage
    ScrCmd_13B
    ReleaseAll
    End

UnionRoom_DeclinedJoinSpinTrade:
    GetUnionRoomMessage UR_MSG_DECLINED_JOIN_SPIN_TRADE, VAR_RESULT
    MessageVar VAR_RESULT
    WaitTime 30, VAR_RESULT
    CloseMessage
    ReleaseAll
    End

UnionRoom_CantJoinSpinTradeWithBadEgg:
    GetUnionRoomMessage UR_MSG_CANT_SPIN_TRADE_BAD_EGG, VAR_RESULT
    MessageVar VAR_RESULT
    WaitTime 30, VAR_RESULT
    CloseMessage
    ReleaseAll
    End

UnionRoom_NeedEggToSpinTrade:
    GetUnionRoomMessage UR_MSG_NEED_EGG_TO_SPIN_TRADE, VAR_RESULT
    MessageVar VAR_RESULT
    WaitTime 30, VAR_RESULT
    CloseMessage
    ReleaseAll
    End

UnionRoom_OtherPlayerDeclinedGreet:
    GetUnionRoomMessage UR_MSG_DECLINED_GREET, VAR_RESULT
    MessageVar VAR_RESULT
    WaitTime 30, VAR_RESULT
    GoTo UnionRoom_OtherPlayerDeclinedEnd
    End

UnionRoom_OtherPlayerDeclinedDraw:
    GetUnionRoomMessage UR_MSG_DECLINED_DRAW, VAR_RESULT
    MessageVar VAR_RESULT
    WaitTime 30, VAR_RESULT
    GoTo UnionRoom_OtherPlayerDeclinedEnd
    End

UnionRoom_OtherPlayerDeclinedBattle:
    GetUnionRoomMessage UR_MSG_DECLINED_BATTLE, VAR_RESULT
    MessageVar VAR_RESULT
    WaitTime 30, VAR_RESULT
    GoTo UnionRoom_OtherPlayerDeclinedEnd
    End

UnionRoom_OtherPlayerDeclinedTrade:
    GetUnionRoomMessage UR_MSG_DECLINED_TRADE, VAR_RESULT
    MessageVar VAR_RESULT
    WaitTime 30, VAR_RESULT
    GoTo UnionRoom_OtherPlayerDeclinedEnd
    End

UnionRoom_UnusedDecline:
    GetUnionRoomMessage UR_MSG_DECLINED_UNUSED, VAR_RESULT
    MessageVar VAR_RESULT
    WaitTime 30, VAR_RESULT
    GoTo UnionRoom_OtherPlayerDeclinedEnd
    End

UnionRoom_OtherPlayerDeclinedMixRecords:
    GetUnionRoomMessage UR_MSG_DECLINED_SPIN_TRADE_MIX_RECORDS, VAR_RESULT
    MessageVar VAR_RESULT
    WaitTime 30, VAR_RESULT
    GoTo UnionRoom_OtherPlayerDeclinedEnd
    End

UnionRoom_YouDontHaveAnEgg:
    ScrCmd_143 1, 1
    Message UnionRoom_Text_YouDontHaveAnEgg
    GoTo UnionRoom_DeclinedEnd
    End

UnionRoom_SpinTradeNeedEgg:
    GetUnionRoomMessage UR_MSG_NEED_EGG_TO_SPIN_TRADE, VAR_RESULT
    MessageVar VAR_RESULT
    GoTo UnionRoom_DoSomethingElse
    End

UnionRoom_CantSpinTradeDiamondPearl:
    Message UnionRoom_Text_CantSpinTradeDiamondPearl
    GoTo UnionRoom_DoSomethingElse
    End

UnionRoom_OtherPlayerDeclinedSpinTrade:
    GetUnionRoomMessage UR_MSG_DECLINED_SPIN_TRADE_MIX_RECORDS, VAR_RESULT
    MessageVar VAR_RESULT
    WaitTime 30, VAR_RESULT
    GoTo UnionRoom_OtherPlayerDeclinedEnd
    End

UnionRoom_CancelPlayerInteraction:
    GetUnionRoomMessage UR_MSG_ASK_IF_YOU_WANT_SOMETHING, VAR_RESULT
    MessageVar VAR_RESULT
    WaitTime 30, VAR_RESULT
    ScrCmd_135 101
    CloseMessage
    ScrCmd_13E
    ReleaseAll
    End

UnionRoom_OtherPlayerSomethingElseToDo:
    GetUnionRoomMessage UR_MSG_SOMETHING_ELSE_TO_DO, VAR_RESULT
    MessageVar VAR_RESULT
    WaitTime 30, VAR_RESULT
    ScrCmd_135 101
    CloseMessage
    ScrCmd_13E
    ReleaseAll
    End

UnionRoom_OtherPlayerDeclinedEnd:
    ScrCmd_135 101
    CloseMessage
    ScrCmd_13E
    ReleaseAll
    End

UnionRoom_PlayerContactedYou:
    LockAll
    PlaySE SEQ_SE_DP_BUTTON9
    DoUnionRoomGreeting 1
    MessageAutoScroll UnionRoom_Text_PlayerContactedYou
    WaitABPressTime 30
    GoTo UnionRoom_AwaitingResponse
    End

UnionRoom_AwaitingResponse:
    Message UnionRoom_Text_AwaitingResponseFromPlayer
    ScrCmd_135 100
    ScrCmd_139 11
    ScrCmd_145 VAR_RESULT
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 1, UnionRoom_PlayerAskShowTrainerCase
    GoToIfEq VAR_0x8008, 4, UnionRoom_PlayerAskDraw
    GoToIfEq VAR_0x8008, 2, UnionRoom_PlayerAskBattle
    GoToIfEq VAR_0x8008, 3, UnionRoom_PlayerAskTrade
    GoToIfEq VAR_0x8008, 5, UnionRoom_PlayerAskMixRecords
    GoToIfEq VAR_0x8008, 6, UnionRoom_PlayerAskSpinTrade
    GoToIfEq VAR_0x8008, 7, UnionRoom_ChatHasBeenDropped
    GoToIfEq VAR_0x8008, 8, UnionRoom_ChatWasEnded
    End

UnionRoom_PlayerAskShowTrainerCase:
    Message UnionRoom_Text_ShowTrainerCase
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, UnionRoom_DeclinedOfferShowTrainerCase
    ScrCmd_143 1, 0
    CloseMessage
    ScrCmd_144 VAR_RESULT
    GoToIfEq VAR_RESULT, 7, UnionRoom_DeclinedShowTrainerCase
    GetTrainerCasePlayerMessage VAR_RESULT
    MessageVar VAR_RESULT
    WaitTime 30, VAR_RESULT
    ScrCmd_135 1
    CloseMessage
    ScrCmd_139 5
    FadeScreenOut
    WaitFadeScreen
    OpenUnionRoomTrainerCase
    ReturnToField
    Call UnionRoom_InitCommFieldCmd
    GoTo UnionRoom_AwaitingResponse
    End

UnionRoom_DeclinedOfferShowTrainerCase:
    ScrCmd_143 1, 1
    Message UnionRoom_Text_DeclinedOfferShowTrainerCase
    GoTo UnionRoom_DeclinedEnd
    End

UnionRoom_PlayerAskTrade:
    Message UnionRoom_Text_AcceptTradeOffer
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, UnionRoom_DeclinedInvitationTrade
    CountPartyNonEggs VAR_RESULT
    GoToIfLt VAR_RESULT, 2, UnionRoom_NeedTwoPokemonEnd
    ScrCmd_143 1, 0
    CloseMessage
    ScrCmd_144 VAR_RESULT
    GoToIfEq VAR_RESULT, 7, UnionRoom_ChatHasBeenDropped
    Message UnionRoom_Text_TradeWillBeStarted
    WaitTime 30, VAR_RESULT
    ScrCmd_135 3
    CloseMessage
    ScrCmd_139 7
    FadeScreenOut
    WaitFadeScreen
    ScrCmd_0AE
    ReturnToField
    ScrCmd_139 11
    Call UnionRoom_InitCommFieldCmd
    GoTo UnionRoom_AwaitingResponse
    End

UnionRoom_DeclinedInvitationTrade:
    ScrCmd_143 1, 1
    Message UnionRoom_Text_DeclinedInvitationTrade
    GoTo UnionRoom_DeclinedEnd
    End

UnionRoom_NeedTwoPokemonEnd:
    ScrCmd_143 1, 1
    Message UnionRoom_Text_NeedAtLeastTwoPokemon
    GoTo UnionRoom_DeclinedEnd
    End

UnionRoom_PlayerAskBattle:
    Message UnionRoom_Text_AcceptBattleChallenge
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, UnionRoom_DeclinedBattleSpinTradeMixRecords
    CountPartyMonsBelowLevelThreshold VAR_RESULT, 30
    GoToIfLt VAR_RESULT, 2, UnionRoom_NeedTwoPokemonLv30End
    ScrCmd_143 1, 0
    CloseMessage
    ScrCmd_144 VAR_RESULT
    GoToIfEq VAR_RESULT, 7, UnionRoom_ChatHasBeenDropped
    Message UnionRoom_Text_BattleWillBeStarted
    WaitTime 30, VAR_RESULT
    ScrCmd_135 2
    CloseMessage
    ScrCmd_139 6
    FadeScreenOut
    WaitFadeScreen
    SelectPokemonForUnionRoomBattle
    FadeScreenIn
    WaitFadeScreen
    Message UnionRoom_Text_WaitOtherPlayersChoice
    ScrCmd_135 102
    CloseMessage
    ScrCmd_2BA VAR_RESULT
    GoToIfEq VAR_RESULT, 1, UnionRoom_BattleHasBeenCanceled
    GoToIfEq VAR_RESULT, 2, UnionRoom_BattleHasBeenCanceled
    StartLinkBattle
    ScrCmd_139 11
    Call UnionRoom_InitCommFieldCmd
    GoTo UnionRoom_AwaitingResponse
    End

UnionRoom_DeclinedBattleSpinTradeMixRecords:
    ScrCmd_143 1, 1
    Message UnionRoom_Text_DeclinedToTakePart
    GoTo UnionRoom_DeclinedEnd
    End

UnionRoom_NeedTwoPokemonLv30End:
    ScrCmd_143 1, 1
    Message UnionRoom_Text_NeedTwoPokemonLv30
    GoTo UnionRoom_DeclinedEnd
    End

UnionRoom_PlayerAskMixRecords:
    Message UnionRoom_Text_MixRecordsWithPlayer
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, UnionRoom_DeclinedBattleSpinTradeMixRecords
    ScrCmd_143 1, 0
    CloseMessage
    ScrCmd_144 VAR_RESULT
    GoToIfEq VAR_RESULT, 7, UnionRoom_ChatHasBeenDropped
    Message UnionRoom_Text_RecordMixingWillBeStarted
    WaitTime 30, VAR_RESULT
    ScrCmd_135 5
    CloseMessage
    ScrCmd_139 2
    FadeScreenOut
    WaitFadeScreen
    ScrCmd_0AF
    ReturnToField
    Call UnionRoom_InitCommFieldCmd
    ReleaseAll
    End

UnionRoom_PlayerAskSpinTrade:
    Message UnionRoom_Text_TakePartInSpinTrade
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, UnionRoom_DeclinedBattleSpinTradeMixRecords
    ScrCmd_143 1, 0
    CloseMessage
    CountPartyEggs VAR_RESULT
    GoToIfEq VAR_RESULT, 0, UnionRoom_YouDontHaveAnEgg
    ScrCmd_144 VAR_RESULT
    GoToIfEq VAR_RESULT, 7, UnionRoom_ChatHasBeenDropped
    Message UnionRoom_Text_StartingTheSpinTrade
    WaitTime 30, VAR_RESULT
    ScrCmd_135 6
    CloseMessage
    ScrCmd_139 13
    FadeScreenOut
    WaitFadeScreen
    ScrCmd_2C6
    ReturnToField
    Call UnionRoom_InitCommFieldCmd
    ReleaseAll
    End

UnionRoom_PlayerAskDraw:
    Message UnionRoom_Text_JoinOtherPlayerAndDraw
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, UnionRoom_DeclinedDraw
    ScrCmd_143 1, 0
    CloseMessage
    ScrCmd_144 VAR_RESULT
    GoToIfEq VAR_RESULT, 7, UnionRoom_ChatHasBeenDropped
    Message UnionRoom_Text_LetsGetDrawing
    WaitTime 30, VAR_RESULT
    ScrCmd_135 4
    CloseMessage
    ScrCmd_139 1
    FadeScreenOut
    WaitFadeScreen
    ScrCmd_0AC
    ReturnToField
    Call UnionRoom_InitCommFieldCmd
    ReleaseAll
    End

UnionRoom_DeclinedDraw:
    ScrCmd_143 1, 1
    Message UnionRoom_Text_DeclinedDraw
    GoTo UnionRoom_DeclinedEnd
    End

UnionRoom_DeclinedShowTrainerCase:
    Message UnionRoom_Text_DeclinedInvitationShowTrainerCase
    GoTo UnionRoom_DeclinedEnd
    End

UnionRoom_BattleHasBeenCanceled:
    ScrCmd_139 11
    Message UnionRoom_Text_BattleHasBeenCanceled
    WaitTime 30, VAR_RESULT
    GoTo UnionRoom_DeclinedEnd
    End

UnionRoom_ChatHasBeenDropped:
    Message UnionRoom_Text_ChatHasBeenDropped
    WaitTime 30, VAR_RESULT
    GoTo UnionRoom_DeclinedEnd
    End

UnionRoom_ChatWasEnded:
    Message UnionRoom_Text_ChatWasEnded
    WaitTime 30, VAR_RESULT
    GoTo UnionRoom_DeclinedEnd
    End

UnionRoom_DeclinedEnd:
    ScrCmd_135 101
    CloseMessage
    ScrCmd_13E
    ReleaseAll
    End

UnionRoom_Unused3:
    ScrCmd_143 1, 1
    CloseMessage
    ReleaseAll
    End

UnionRoom_InitCommFieldCmd:
    InitCommFieldCmd
    FadeScreenIn
    Return

UnionRoom_UnusedEntry6:
    NPCMessage UnionRoom_Text_Dummy207
    End

UnionRoom_PlayerBusy:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoTo UnionRoom_TrainerAppearsBusy
    End

UnionRoom_Teala:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoTo UnionRoom_TealaMenu
    End

UnionRoom_TealaMenu:
    ScrCmd_13A
    CallIfSet FLAG_TALKED_TO_UNION_ROOM_TEALA, UnionRoom_HowMayIHelp
    CallIfUnset FLAG_TALKED_TO_UNION_ROOM_TEALA, UnionRoom_WelcomeToUnionRoom
    SetFlag FLAG_TALKED_TO_UNION_ROOM_TEALA
    InitGlobalTextMenu 31, 11, 0, VAR_RESULT
    SetMenuXOriginToRight
    AddMenuEntryImm MenuEntries_Text_Info, 0
    AddMenuEntryImm MenuEntries_Text_UnionRoom_Converse, 1
    AddMenuEntryImm MenuEntries_Text_UnionRoom_Cancel, 2
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, UnionRoom_InfoMenu
    GoToIfEq VAR_0x8008, 1, UnionRoom_Converse
    GoTo UnionRoom_TealaEnd
    End

UnionRoom_HowMayIHelp:
    Message UnionRoom_Text_HowMayIHelp
    Return

UnionRoom_WelcomeToUnionRoom:
    Message UnionRoom_Text_WelcomeToUnionRoom
    Return

UnionRoom_Converse:
    GetUnionRoomTealaMessage VAR_RESULT
    MessageVar VAR_RESULT
    GoTo UnionRoom_TealaMenu
    End

UnionRoom_TealaEnd:
    ScrCmd_13B
    CloseMessage
    ReleaseAll
    End

UnionRoom_InfoMenu:
    Message UnionRoom_Text_ExplainWhichTopic
    InitGlobalTextMenu 31, 3, 0, VAR_RESULT
    SetMenuXOriginToRight
    AddMenuEntryImm MenuEntries_Text_UnionRoom_Battle, 0
    AddMenuEntryImm MenuEntries_Text_UnionRoom_Trade, 1
    AddMenuEntryImm MenuEntries_Text_UnionRoom_Records, 2
    AddMenuEntryImm MenuEntries_Text_UnionRoom_Draw, 3
    AddMenuEntryImm MenuEntries_Text_UnionRoom_Chat, 4
    AddMenuEntryImm MenuEntries_Text_UnionRoom_Spin, 5
    AddMenuEntryImm MenuEntries_Text_ListMenu_Exit, 6
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, UnionRoom_ExplainBattle
    GoToIfEq VAR_0x8008, 1, UnionRoom_ExplainTrade
    GoToIfEq VAR_0x8008, 2, UnionRoom_ExplainRecordMixing
    GoToIfEq VAR_0x8008, 3, UnionRoom_ExplainDraw
    GoToIfEq VAR_0x8008, 4, UnionRoom_ExplainChat
    GoToIfEq VAR_0x8008, 5, UnionRoom_ExplainSpinTrade
    GoTo UnionRoom_TealaMenu
    End

UnionRoom_ExplainBattle:
    Message UnionRoom_Text_ExplainBattle
    GoTo UnionRoom_InfoMenu
    End

UnionRoom_ExplainTrade:
    Message UnionRoom_Text_ExplainTrade
    GoTo UnionRoom_InfoMenu
    End

UnionRoom_ExplainRecordMixing:
    Message UnionRoom_Text_ExplainRecordMixing
    GoTo UnionRoom_InfoMenu
    End

UnionRoom_ExplainDraw:
    Message UnionRoom_Text_ExplainDraw
    GoTo UnionRoom_InfoMenu
    End

UnionRoom_ExplainChat:
    Message UnionRoom_Text_ExplainChat
    GoTo UnionRoom_InfoMenu
    End

UnionRoom_ExplainSpinTrade:
    Message UnionRoom_Text_ExplainSpinTrade
    GoTo UnionRoom_InfoMenu
    End

UnionRoom_Unused4:
    GoTo UnionRoom_TealaMenu
    End
