#include "macros/scrcmd.inc"
#include "res/text/bank/oreburgh_city_north_house_1f.h"


    ScriptEntry OreburghCityNorthHouse1F_SchoolKidF
    ScriptEntry OreburghCityNorthHouse1F_ExpertF
    ScriptEntry OreburghCityNorthHouse1F_PokemonBreederM
    ScriptEntryEnd

OreburghCityNorthHouse1F_SchoolKidF:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_TRADED_FOR_KAZZA_ABRA, OreburghCityNorthHouse1F_ThanksToPokemonIGotToBeFriendsWithYou
    Message OreburghCityNorthHouse1F_Text_WouldYouBeWillingToTradeYourMachopForMyAbra
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, OreburghCityNorthHouse1F_TryTrade
    GoTo OreburghCityNorthHouse1F_IfYouChangeYourMindIllBeRightHereWaiting

OreburghCityNorthHouse1F_TryTrade:
    CloseMessage
    FadeScreenOut
    WaitFadeScreen
    SelectPokemonToTrade
    FadeScreenIn
    WaitFadeScreen
    GoToIfEq VAR_RESULT, 0xFF, OreburghCityNorthHouse1F_IfYouChangeYourMindIllBeRightHereWaiting
    StartNpcTrade NPC_TRADE_KAZZA_ABRA
    SetVar VAR_0x8004, VAR_RESULT
    GetPartyMonSpecies VAR_0x8004, VAR_0x8005
    GetNpcTradeRequestedSpecies VAR_RESULT
    GoToIfNe VAR_0x8005, VAR_RESULT, OreburghCityNorthHouse1F_WhatIAskedForWasAMachop
    ScrCmd_229 VAR_0x8004
    FinishNpcTrade
    SetFlag FLAG_TRADED_FOR_KAZZA_ABRA
    Message OreburghCityNorthHouse1F_Text_BeNiceToMyAbra
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

OreburghCityNorthHouse1F_WhatIAskedForWasAMachop:
    FinishNpcTrade
    Message OreburghCityNorthHouse1F_Text_WhatIAskedForWasAMachop
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

OreburghCityNorthHouse1F_IfYouChangeYourMindIllBeRightHereWaiting:
    Message OreburghCityNorthHouse1F_Text_IfYouChangeYourMindIllBeRightHereWaiting
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

OreburghCityNorthHouse1F_ThanksToPokemonIGotToBeFriendsWithYou:
    Message OreburghCityNorthHouse1F_Text_ThanksToPokemonIGotToBeFriendsWithYou
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

OreburghCityNorthHouse1F_ExpertF:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message OreburghCityNorthHouse1F_Text_APokemonObtainedInATradeGrowsQuickly
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

OreburghCityNorthHouse1F_PokemonBreederM:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message OreburghCityNorthHouse1F_Text_WhenYouTradeAPokemonTheItemItsHoldingIsTradedAsWell
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End
