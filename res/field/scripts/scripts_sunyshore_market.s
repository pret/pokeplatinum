#include "macros/scrcmd.inc"
#include "res/text/bank/sunyshore_market.h"
#include "generated/ribbons.h"
#include "constants/pokemon.h"


    ScriptEntry SunyshoreMarket_EffortRibbonWoman
    ScriptEntry SunyshoreMarket_NPC1
    ScriptEntry SunyshoreMarket_SealShop
    ScriptEntry SunyshoreMarket_NPC2
    ScriptEntry SunyshoreMarket_Dummy
    ScriptEntry SunyshoreMarket_NPC3

SunyshoreMarket_Dummy:
    End

SunyshoreMarket_EffortRibbonWoman:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GetFirstNonEggInParty VAR_0x8000
    GetPartyMonRibbon VAR_RESULT, VAR_0x8000, RIBBON_HOENN_EFFORT
    GoToIfEq VAR_RESULT, TRUE, SunyshoreMarket_PokemonAlreadyHasEffortRibbon
    BufferPartyMonSpecies 0, VAR_0x8000
    Message SunyshoreMarket_Text_OhYourPokemon
    GetPartyMonEVTotal VAR_RESULT, VAR_0x8000
    GoToIfLt VAR_RESULT, MAX_EVS_ALL_STATS, SunyshoreMarket_NotEnoughEVs
    Message SunyshoreMarket_Text_ItWorkedStupendouslyHard
    SetPartyMonRibbon VAR_0x8000, RIBBON_HOENN_EFFORT
    PlaySound SEQ_FANFA1
    BufferPlayerName 1
    Message SunyshoreMarket_Text_PlayerReceivedEffortRibbon
    WaitSound
    BufferPartyMonSpecies 0, VAR_0x8000
    Message SunyshoreMarket_Text_PlayerPutEffortRibbonOn
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

SunyshoreMarket_NotEnoughEVs:
    Message SunyshoreMarket_Text_ItNeedsToWorkHarder
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

SunyshoreMarket_PokemonAlreadyHasEffortRibbon:
    BufferPartyMonSpecies 0, VAR_0x8000
    Message SunyshoreMarket_Text_EffortRibbonLooksGood
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

SunyshoreMarket_NPC1:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message SunyshoreMarket_Text_BestKnownForSeals
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

SunyshoreMarket_SealShop:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CheckItem ITEM_SEAL_CASE, 1, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, SunyshoreMarket_NoSealCase
    Message SunyshoreMarket_Text_ALittleTimeIfYouWill
    CallCommonScript 0x7E3
    CloseMessageWithoutErasing
    Call SunyshoreMarket_OpenSealShopMenu
    ReleaseAll
    End

SunyshoreMarket_NoSealCase:
    Message SunyshoreMarket_Text_NoSealCase
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

SunyshoreMarket_OpenSealShopMenu:
    GetDayOfWeek VAR_RESULT
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, DAY_OF_WEEK_SUNDAY, SunyshoreMarket_SealShopSunday
    GoToIfEq VAR_0x8008, DAY_OF_WEEK_MONDAY, SunyshoreMarket_SealShopMonday
    GoToIfEq VAR_0x8008, DAY_OF_WEEK_TUESDAY, SunyshoreMarket_SealShopTuesday
    GoToIfEq VAR_0x8008, DAY_OF_WEEK_WEDNESDAY, SunyshoreMarket_SealShopWednesday
    GoToIfEq VAR_0x8008, DAY_OF_WEEK_THURSDAY, SunyshoreMarket_SealShopThursday
    GoToIfEq VAR_0x8008, DAY_OF_WEEK_FRIDAY, SunyshoreMarket_SealShopFriday
    GoToIfEq VAR_0x8008, DAY_OF_WEEK_SATURDAY, SunyshoreMarket_SealShopSaturday
    End

SunyshoreMarket_SealShopMonday:
    PokeMartSeal MART_SEAL_ID_SUNYSHORE_MONDAY
    Return

SunyshoreMarket_SealShopTuesday:
    PokeMartSeal MART_SEAL_ID_SUNYSHORE_TUESDAY
    Return

SunyshoreMarket_SealShopWednesday:
    PokeMartSeal MART_SEAL_ID_SUNYSHORE_WEDNESDAY
    Return

SunyshoreMarket_SealShopThursday:
    PokeMartSeal MART_SEAL_ID_SUNYSHORE_THURSDAY
    Return

SunyshoreMarket_SealShopFriday:
    PokeMartSeal MART_SEAL_ID_SUNYSHORE_FRIDAY
    Return

SunyshoreMarket_SealShopSaturday:
    PokeMartSeal MART_SEAL_ID_SUNYSHORE_SATURDAY
    Return

SunyshoreMarket_SealShopSunday:
    PokeMartSeal MART_SEAL_ID_SUNYSHORE_SUNDAY
    Return

SunyshoreMarket_NPC2:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message SunyshoreMarket_Text_SeeTheSealMerchant
    GetDayOfWeek VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, DAY_OF_WEEK_SUNDAY, SunyshoreMarket_NPC2_FirstWeekHalfMessage
    GoToIfEq VAR_MAP_LOCAL_0, DAY_OF_WEEK_MONDAY, SunyshoreMarket_NPC2_FirstWeekHalfMessage
    GoToIfEq VAR_MAP_LOCAL_0, DAY_OF_WEEK_TUESDAY, SunyshoreMarket_NPC2_FirstWeekHalfMessage
    GoToIfEq VAR_MAP_LOCAL_0, DAY_OF_WEEK_WEDNESDAY, SunyshoreMarket_NPC2_FirstWeekHalfMessage
    GoTo SunyshoreMarket_NPC2_SecondWeekHalfMessage

SunyshoreMarket_NPC2_FirstWeekHalfMessage:
    Message SunyshoreMarket_Text_DidntHaveSeals
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

SunyshoreMarket_NPC2_SecondWeekHalfMessage:
    Message SunyshoreMarket_Text_CameThroughWithDifferentSeals
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

SunyshoreMarket_NPC3:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message SunyshoreMarket_Text_HugeFanOfWiFiPlaza
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
