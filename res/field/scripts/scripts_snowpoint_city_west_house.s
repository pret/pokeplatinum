#include "macros/scrcmd.inc"
#include "res/text/bank/snowpoint_city_west_house.h"


    ScriptEntry SnowpointCityWestHouse_AceTrainerM
    ScriptEntry SnowpointCityWestHouse_Mindy
    ScriptEntryEnd

SnowpointCityWestHouse_AceTrainerM:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_TRADED_FOR_GASPAR_HAUNTER, SnowpointCityWestHouse_MyGirlsHappy
    Message SnowpointCityWestHouse_Text_SuchVivacityAndCharm
    WaitButton
    CloseMessage
    ReleaseAll
    End

SnowpointCityWestHouse_MyGirlsHappy:
    Message SnowpointCityWestHouse_Text_MyGirlsHappy
    WaitButton
    CloseMessage
    ReleaseAll
    End

SnowpointCityWestHouse_Mindy:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_TRADED_FOR_GASPAR_HAUNTER, SnowpointCityWestHouse_WeGotToBeFriends
    Message SnowpointCityWestHouse_Text_AskTradeMedichamForHaunter
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, SnowpointCityWestHouse_TryTrade
    GoTo SnowpointCityWestHouse_OKIfYouDontWant

SnowpointCityWestHouse_TryTrade:
    CloseMessage
    FadeScreenOut
    WaitFadeScreen
    SelectPokemonToTrade
    FadeScreenIn
    WaitFadeScreen
    GoToIfEq VAR_RESULT, PARTY_SLOT_NONE, SnowpointCityWestHouse_OKIfYouDontWant
    InitNPCTrade NPC_TRADE_GASPAR_HAUNTER
    SetVar VAR_0x8004, VAR_RESULT
    GetPartyMonSpecies VAR_0x8004, VAR_0x8005
    GetNPCTradeRequestedSpecies VAR_RESULT
    GoToIfNe VAR_0x8005, VAR_RESULT, SnowpointCityWestHouse_IAskedForMedicham
    StartNPCTrade VAR_0x8004
    FinishNPCTrade
    SetFlag FLAG_TRADED_FOR_GASPAR_HAUNTER
    Message SnowpointCityWestHouse_Text_IMadeItPreventEvolving
    WaitButton
    CloseMessage
    ReleaseAll
    End

SnowpointCityWestHouse_IAskedForMedicham:
    FinishNPCTrade
    Message SnowpointCityWestHouse_Text_IAskedForMedicham
    WaitButton
    CloseMessage
    ReleaseAll
    End

SnowpointCityWestHouse_OKIfYouDontWant:
    Message SnowpointCityWestHouse_Text_OKIfYouDontWant
    WaitButton
    CloseMessage
    ReleaseAll
    End

SnowpointCityWestHouse_WeGotToBeFriends:
    Message SnowpointCityWestHouse_Text_WeGotToBeFriends
    WaitButton
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
