#include "macros/scrcmd.inc"
#include "res/text/bank/jubilife_tv_1f.h"


    ScriptEntry JubilifeTV1F_Unused1
    ScriptEntry JubilifeTV1F_GymGuide
    ScriptEntry JubilifeTV1F_Unused2
    ScriptEntry JubilifeTV1F_AceTrainerSnowF
    ScriptEntry JubilifeTV1F_Beauty
    ScriptEntry JubilifeTV1F_MiddleAgedMan
    ScriptEntry JubilifeTV1F_Unused3
    ScriptEntry JubilifeTV1F_OnTransition
    ScriptEntry JubilifeTV1F_AceTrainerM
    ScriptEntryEnd

JubilifeTV1F_OnTransition:
    End

JubilifeTV1F_Unused1:
    End

JubilifeTV1F_GymGuide:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message JubilifeTV1F_Text_WhyDontYouTryDressingUpYourPokemonNow
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

JubilifeTV1F_Unused2:
    End

JubilifeTV1F_AceTrainerSnowF:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfNe VAR_LOTTERY_PRIZE_ITEM, 0, JubilifeTV1F_GiveStoredLotteryPrize
    GoToIfSet FLAG_OBTAINED_LOTTERY_PRIZE, JubilifeTV1F_YouveAlreadyDrawnALotoTicketToday
    GoToIfSet FLAG_CHECKED_LUCKY_NUMBER, JubilifeTV1F_AskCheckLuckyNumberAgain
    Message JubilifeTV1F_Text_ThisIsThePokemonLotteryCorner
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, JubilifeTV1F_CheckTodaysLuckyNumber
    GoTo JubilifeTV1F_OhISeePleaseDoVisitUsAgain

JubilifeTV1F_AskCheckLuckyNumberAgain:
    Message JubilifeTV1F_Text_WouldYouLikeToCheckTodaysLuckyNumberAgain
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, JubilifeTV1F_CheckTodaysLuckyNumber
    GoTo JubilifeTV1F_OhISeePleaseDoVisitUsAgain
    End

JubilifeTV1F_YouveAlreadyDrawnALotoTicketToday:
    Message JubilifeTV1F_Text_YouveAlreadyDrawnALotoTicketToday
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

JubilifeTV1F_OhISeePleaseDoVisitUsAgain:
    Message JubilifeTV1F_Text_OhISeePleaseDoVisitUsAgain
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

JubilifeTV1F_CheckTodaysLuckyNumber:
    SetFlag FLAG_CHECKED_LUCKY_NUMBER
    Message JubilifeTV1F_Text_FirstIllLookUpTodaysPokemonLotteryCornerLuckyNumber
    GetJubilifeLotteryTrainerID VAR_0x8000
    BufferVarPaddingDigits 0, VAR_0x8000, PADDING_MODE_ZEROES, 5
    Message JubilifeTV1F_Text_YourLotoTicketNumberIsNum
    CheckForJubilifeLotteryWinner VAR_0x8001, VAR_0x8002, VAR_0x8003, VAR_0x8000
    GoToIfEq VAR_0x8002, 0, JubilifeTV1F_NoMatch
    GoToIfEq VAR_0x8003, FALSE, JubilifeTV1F_MatchedTeamsPokemon
    GoTo JubilifeTV1F_MatchedPCBoxedPokemon

JubilifeTV1F_NoMatch:
    Message JubilifeTV1F_Text_ImSorryYouDidntGetAMatch
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

JubilifeTV1F_MatchedTeamsPokemon:
    BufferPartyMonNickname 0, VAR_0x8001
    Message JubilifeTV1F_Text_CongratulationsTheIDOfYourTeamsPokemonMatchesYourLotoTicketNumber
    GoTo JubilifeTV1F_CheckMatchedDigits

JubilifeTV1F_MatchedPCBoxedPokemon:
    BufferMonNicknameFromPC 0, VAR_0x8001
    Message JubilifeTV1F_Text_CongratulationsTheIDOfYourPCBoxedPokemonMatchesYourLotoTicketNumber
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
    Message JubilifeTV1F_Text_TheLastDigitMatchedSoYouWinTheFourthPrize
    GoTo JubilifeTV1F_SetLotteryPrize
    End

JubilifeTV1F_LastTwoDigitsMatched:
    Message JubilifeTV1F_Text_TheLastTwoDigitsMatchedSoYouWinTheThirdPrize
    GoTo JubilifeTV1F_SetLotteryPrize

JubilifeTV1F_LastThreeDigitsMatched:
    Message JubilifeTV1F_Text_TheLastThreeDigitsMatchedSoYouWinTheSecondPrize
    GoTo JubilifeTV1F_SetLotteryPrize

JubilifeTV1F_LastFourDigitsMatched:
    Message JubilifeTV1F_Text_TheLastFourDigitsMatchedSoYouWinTheFirstPrize
    GoTo JubilifeTV1F_SetLotteryPrize

JubilifeTV1F_LastFiveDigitsMatched:
    Message JubilifeTV1F_Text_OhMyGoodnessAllFiveDigitsMatchedYouveWonTheJackpotPrize
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
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, JubilifeTV1F_OhYouSeemToHaveNoRoomForThis
    Common_GiveItemQuantity
    GoTo JubilifeTV1F_PleaseDoVisitAgain

JubilifeTV1F_OhYouSeemToHaveNoRoomForThis:
    SetVar VAR_LOTTERY_PRIZE_ITEM, VAR_0x8002
    Message JubilifeTV1F_Text_OhYouSeemToHaveNoRoomForThis
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

JubilifeTV1F_GiveStoredLotteryPrize:
    BufferPlayerName 0
    Message JubilifeTV1F_Text_ThisIsThePrizeWeveBeenHoldingForYou
    SetVar VAR_0x8002, VAR_LOTTERY_PRIZE_ITEM
    GoTo JubilifeTV1F_SetLotteryPrize

JubilifeTV1F_PleaseDoVisitAgain:
    SetVar VAR_LOTTERY_PRIZE_ITEM, 0
    SetFlag FLAG_OBTAINED_LOTTERY_PRIZE
    Message JubilifeTV1F_Text_PleaseDoVisitAgain
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

JubilifeTV1F_Beauty:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message JubilifeTV1F_Text_TheyKeepTrackOfOfficialRecordsHere
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

JubilifeTV1F_MiddleAgedMan:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message JubilifeTV1F_Text_ImGoingToGetCommercialsShownOnTV
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

JubilifeTV1F_Unused3:
    End

JubilifeTV1F_AceTrainerM:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message JubilifeTV1F_Text_TheTVStationInterviewsAllSortsOfTrainersForItsShows
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
