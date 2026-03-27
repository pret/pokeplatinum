#include "macros/scrcmd.inc"
#include "res/text/bank/grand_lake_route_213_northeast_house.h"


    ScriptEntry GrandLakeRoute213NortheastHouse_RichBoy
    ScriptEntry GrandLakeRoute213NortheastHouse_Lady
    ScriptEntryEnd

GrandLakeRoute213NortheastHouse_RichBoy:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CheckPoketchAppRegistered POKETCH_APPID_COINTOSS, VAR_RESULT
    GoToIfNe VAR_RESULT, FALSE, GrandLakeRoute213NortheastHouse_CoinTossForDecisions
    Message GrandLakeRoute213NortheastHouse_Text_ReservationsWereFull
    SetVar VAR_0x8004, POKETCH_APPID_COINTOSS
    Common_GivePoketchApp
    WaitButton
    CloseMessage
    ReleaseAll
    End

GrandLakeRoute213NortheastHouse_CoinTossForDecisions:
    Message GrandLakeRoute213NortheastHouse_Text_CoinTossForDecisions
    WaitButton
    CloseMessage
    ReleaseAll
    End

GrandLakeRoute213NortheastHouse_Lady:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CheckPoketchAppRegistered POKETCH_APPID_COINTOSS, VAR_RESULT
    GoToIfNe VAR_RESULT, FALSE, GrandLakeRoute213NortheastHouse_WantedJustUsTwo
    GoTo GrandLakeRoute213NortheastHouse_HereBecauseCoinToss

GrandLakeRoute213NortheastHouse_HereBecauseCoinToss:
    Message GrandLakeRoute213NortheastHouse_Text_HereBecauseCoinToss
    WaitButton
    CloseMessage
    ReleaseAll
    End

GrandLakeRoute213NortheastHouse_WantedJustUsTwo:
    Message GrandLakeRoute213NortheastHouse_Text_WantedJustUsTwo
    WaitButton
    CloseMessage
    ReleaseAll
    End
