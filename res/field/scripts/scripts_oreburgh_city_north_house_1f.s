#include "macros/scrcmd.inc"
#include "constants/npc_trades.h"
#include "res/text/bank/oreburgh_city_north_house_1f.h"


    ScriptEntry OreburghCityNorthHouse1F_SchoolKidF
    ScriptEntry OreburghCityNorthHouse1F_ExpertF
    ScriptEntry OreburghCityNorthHouse1F_PokemonBreederM
    ScriptEntryEnd

OreburghCityNorthHouse1F_SchoolKidF:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_TRADED_FOR_KAZZA_ABRA, OreburghCityNorthHouse1F_ThanksToPokemonWereFriends
    Message OreburghCityNorthHouse1F_Text_AskTradeMachopForAbra
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, OreburghCityNorthHouse1F_TryTrade
    GoTo OreburghCityNorthHouse1F_IllBeWaiting

OreburghCityNorthHouse1F_TryTrade:
    CloseMessage
    FadeScreenOut
    WaitFadeScreen
    SelectPokemonToTrade
    FadeScreenIn
    WaitFadeScreen
    GoToIfEq VAR_RESULT, 0xFF, OreburghCityNorthHouse1F_IllBeWaiting
    InitNPCTrade NPC_TRADE_KAZZA_ABRA
    SetVar VAR_0x8004, VAR_RESULT
    GetPartyMonSpecies VAR_0x8004, VAR_0x8005
    GetNPCTradeRequestedSpecies VAR_RESULT
    GoToIfNe VAR_0x8005, VAR_RESULT, OreburghCityNorthHouse1F_AskedForMachop
    StartNPCTrade VAR_0x8004
    FinishNPCTrade
    SetFlag FLAG_TRADED_FOR_KAZZA_ABRA
    Message OreburghCityNorthHouse1F_Text_BeNiceToMyAbra
    WaitButton
    CloseMessage
    ReleaseAll
    End

OreburghCityNorthHouse1F_AskedForMachop:
    FinishNPCTrade
    Message OreburghCityNorthHouse1F_Text_AskedForMachop
    WaitButton
    CloseMessage
    ReleaseAll
    End

OreburghCityNorthHouse1F_IllBeWaiting:
    Message OreburghCityNorthHouse1F_Text_IllBeWaiting
    WaitButton
    CloseMessage
    ReleaseAll
    End

OreburghCityNorthHouse1F_ThanksToPokemonWereFriends:
    Message OreburghCityNorthHouse1F_Text_ThanksToPokemonWereFriends
    WaitButton
    CloseMessage
    ReleaseAll
    End

OreburghCityNorthHouse1F_ExpertF:
    NPCMessage OreburghCityNorthHouse1F_Text_PokemonFromTradeGrowsQuickly
    End

OreburghCityNorthHouse1F_PokemonBreederM:
    NPCMessage OreburghCityNorthHouse1F_Text_ItemIsTradedAsWell
    End
