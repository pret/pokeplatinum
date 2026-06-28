#include "macros/scrcmd.inc"
#include "res/text/bank/jubilife_tv_1f.h"


    ScriptEntry JubilifeTV1F_Dummy1
    ScriptEntry JubilifeTV1F_GymGuide
    ScriptEntry JubilifeTV1F_Dummy3
    ScriptEntry JubilifeTV1F_AceTrainerSnowF
    ScriptEntry JubilifeTV1F_Beauty
    ScriptEntry JubilifeTV1F_MiddleAgedMan
    ScriptEntry JubilifeTV1F_Dummy7
    ScriptEntry JubilifeTV1F_OnTransition
    ScriptEntry JubilifeTV1F_AceTrainerM
    ScriptEntryEnd

JubilifeTV1F_OnTransition:
    End

JubilifeTV1F_Dummy1:
    End

JubilifeTV1F_GymGuide:
    NPCMessage JubilifeTV1F_Text_TryDressingUpPokemon
    End

JubilifeTV1F_Dummy3:
    End

JubilifeTV1F_AceTrainerSnowF:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfNe VAR_LOTTERY_PRIZE_ITEM, 0, JubilifeTV1F_GiveStoredLotteryPrize
    GoToIfSet FLAG_DAILY_RECEIVED_LOTTERY_PRIZE, JubilifeTV1F_AlreadyDrawnTicketToday
    GoToIfSet FLAG_DAILY_CHECKED_LUCKY_NUMBER, JubilifeTV1F_AskCheckLuckyNumberAgain
    Message JubilifeTV1F_Text_ThisIsLotteryCorner
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, JubilifeTV1F_CheckTodaysLuckyNumber
    GoTo JubilifeTV1F_PleaseVisitAgain

JubilifeTV1F_AskCheckLuckyNumberAgain:
    Message JubilifeTV1F_Text_CheckLuckyNumberAgain
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, JubilifeTV1F_CheckTodaysLuckyNumber
    GoTo JubilifeTV1F_PleaseVisitAgain
    End

JubilifeTV1F_AlreadyDrawnTicketToday:
    Message JubilifeTV1F_Text_AlreadyDrawnTicketToday
    WaitButton
    CloseMessage
    ReleaseAll
    End

JubilifeTV1F_PleaseVisitAgain:
    Message JubilifeTV1F_Text_PleaseVisitAgain
    WaitButton
    CloseMessage
    ReleaseAll
    End

JubilifeTV1F_CheckTodaysLuckyNumber:
    SetFlag FLAG_DAILY_CHECKED_LUCKY_NUMBER
    Message JubilifeTV1F_Text_LookUpTodaysLuckyNumber
    GetJubilifeLotteryTrainerID VAR_0x8000
    BufferVarPaddingDigits 0, VAR_0x8000, PADDING_MODE_ZEROES, 5
    Message JubilifeTV1F_Text_YourLotoTicketNumberIsX
    CheckForJubilifeLotteryWinner VAR_0x8001, VAR_0x8002, VAR_0x8003, VAR_0x8000
    GoToIfEq VAR_0x8002, 0, JubilifeTV1F_NoMatch
    GoToIfEq VAR_0x8003, FALSE, JubilifeTV1F_MatchedTeamsPokemon
    GoTo JubilifeTV1F_MatchedPCBoxedPokemon

JubilifeTV1F_NoMatch:
    Message JubilifeTV1F_Text_YouDidntGetAMatch
    WaitButton
    CloseMessage
    ReleaseAll
    End

JubilifeTV1F_MatchedTeamsPokemon:
    BufferPartyMonNickname 0, VAR_0x8001
    Message JubilifeTV1F_Text_IDOfTeamPokemonMatchesTicketNumber
    GoTo JubilifeTV1F_CheckMatchedDigits

JubilifeTV1F_MatchedPCBoxedPokemon:
    BufferMonNicknameFromPC 0, VAR_0x8001
    Message JubilifeTV1F_Text_IDOfBoxedPokemonMatchesTicketNumber
    GoTo JubilifeTV1F_CheckMatchedDigits

JubilifeTV1F_CheckMatchedDigits:
    SetVar VAR_0x8008, VAR_0x8002
    GoToIfEq VAR_0x8008, 1, JubilifeTV1F_LastDigitMatched
    GoToIfEq VAR_0x8008, 2, JubilifeTV1F_LastTwoDigitsMatched
    GoToIfEq VAR_0x8008, 3, JubilifeTV1F_LastThreeDigitsMatched
    GoToIfEq VAR_0x8008, 4, JubilifeTV1F_LastFourDigitsMatched
    GoToIfEq VAR_0x8008, 5, JubilifeTV1F_LastFiveDigitsMatched
    End

JubilifeTV1F_LastDigitMatched:
    Message JubilifeTV1F_Text_LastDigitMatchedWinFourthPrize
    GoTo JubilifeTV1F_SetLotteryPrize
    End

JubilifeTV1F_LastTwoDigitsMatched:
    Message JubilifeTV1F_Text_LastTwoDigitsMatchedWinThirdPrize
    GoTo JubilifeTV1F_SetLotteryPrize

JubilifeTV1F_LastThreeDigitsMatched:
    Message JubilifeTV1F_Text_LastThreeDigitsMatchedWinSecondPrize
    GoTo JubilifeTV1F_SetLotteryPrize

JubilifeTV1F_LastFourDigitsMatched:
    Message JubilifeTV1F_Text_LastFourDigitsMatchedWinFirstPrize
    GoTo JubilifeTV1F_SetLotteryPrize

JubilifeTV1F_LastFiveDigitsMatched:
    Message JubilifeTV1F_Text_AllDigitsMatchedWinJackpot
    GoTo JubilifeTV1F_SetLotteryPrize

JubilifeTV1F_SetLotteryPrize:
    SetVar VAR_0x8008, VAR_0x8002
    GoToIfEq VAR_0x8008, 1, JubilifeTV1F_SetFourthPrize
    GoToIfEq VAR_0x8008, 2, JubilifeTV1F_SetThirdPrize
    GoToIfEq VAR_0x8008, 3, JubilifeTV1F_SetSecondPrize
    GoToIfEq VAR_0x8008, 4, JubilifeTV1F_SetFirstPrize
    GoToIfEq VAR_0x8008, 5, JubilifeTV1F_SetJackpotPrize
    End

JubilifeTV1F_SetFourthPrize:
    SetVar VAR_0x8003, ITEM_ULTRA_BALL
    GoTo JubilifeTV1F_GiveLotteryPrize
    End

JubilifeTV1F_SetThirdPrize:
    SetVar VAR_0x8003, ITEM_PP_UP
    GoTo JubilifeTV1F_GiveLotteryPrize

JubilifeTV1F_SetSecondPrize:
    SetVar VAR_0x8003, ITEM_EXP_SHARE
    GoTo JubilifeTV1F_GiveLotteryPrize

JubilifeTV1F_SetFirstPrize:
    SetVar VAR_0x8003, ITEM_MAX_REVIVE
    GoTo JubilifeTV1F_GiveLotteryPrize

JubilifeTV1F_SetJackpotPrize:
    SetVar VAR_0x8003, ITEM_MASTER_BALL
    GoTo JubilifeTV1F_GiveLotteryPrize

JubilifeTV1F_GiveLotteryPrize:
    SetVar VAR_0x8004, VAR_0x8003
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, JubilifeTV1F_NoRoomForThis
    Common_GiveItemQuantity
    GoTo JubilifeTV1F_PleaseDoVisitAgain

JubilifeTV1F_NoRoomForThis:
    SetVar VAR_LOTTERY_PRIZE_ITEM, VAR_0x8002
    Message JubilifeTV1F_Text_NoRoomForThis
    WaitButton
    CloseMessage
    ReleaseAll
    End

JubilifeTV1F_GiveStoredLotteryPrize:
    BufferPlayerName 0
    Message JubilifeTV1F_Text_ThisIsPrizeWeveBeenHolding
    SetVar VAR_0x8002, VAR_LOTTERY_PRIZE_ITEM
    GoTo JubilifeTV1F_SetLotteryPrize

JubilifeTV1F_PleaseDoVisitAgain:
    SetVar VAR_LOTTERY_PRIZE_ITEM, 0
    SetFlag FLAG_DAILY_RECEIVED_LOTTERY_PRIZE
    Message JubilifeTV1F_Text_PleaseDoVisitAgain
    WaitButton
    CloseMessage
    ReleaseAll
    End

JubilifeTV1F_Beauty:
    NPCMessage JubilifeTV1F_Text_TheyKeepTrackOfRecords
    End

JubilifeTV1F_MiddleAgedMan:
    NPCMessage JubilifeTV1F_Text_CommercialsShownOnTV
    End

JubilifeTV1F_Dummy7:
    End

JubilifeTV1F_AceTrainerM:
    NPCMessage JubilifeTV1F_Text_InterviewsAllSortsOfTrainers
    End

    .balign 4, 0
