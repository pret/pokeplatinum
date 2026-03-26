#include "macros/scrcmd.inc"
#include "res/text/bank/pastoria_city_northeast_house.h"
#include "generated/pokemon_contest_types.h"


    ScriptEntry PastoriaCityNortheastHouse_AceTrainerM
    ScriptEntry PastoriaCityNortheastHouse_BattleGirl
    ScriptEntry PastoriaCityNortheastHouse_Pachirisu
    ScriptEntryEnd

PastoriaCityNortheastHouse_AceTrainerM:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GetFirstNonEggInParty VAR_0x8000
    GoToIfUnset FLAG_RECEIVED_PASTORIA_CITY_NORTHEAST_HOUSE_RED_SCARF, PastoriaCityNortheastHouse_ExaminePokemon
    GoToIfUnset FLAG_RECEIVED_PASTORIA_CITY_NORTHEAST_HOUSE_BLUE_SCARF, PastoriaCityNortheastHouse_ExaminePokemon
    GoToIfUnset FLAG_RECEIVED_PASTORIA_CITY_NORTHEAST_HOUSE_PINK_SCARF, PastoriaCityNortheastHouse_ExaminePokemon
    GoToIfUnset FLAG_RECEIVED_PASTORIA_CITY_NORTHEAST_HOUSE_GREEN_SCARF, PastoriaCityNortheastHouse_ExaminePokemon
    GoToIfUnset FLAG_RECEIVED_PASTORIA_CITY_NORTHEAST_HOUSE_YELLOW_SCARF, PastoriaCityNortheastHouse_ExaminePokemon
    Message PastoriaCityNortheastHouse_Text_OutOfScarves
    WaitButton
    CloseMessage
    ReleaseAll
    End

PastoriaCityNortheastHouse_ExaminePokemon:
    Message PastoriaCityNortheastHouse_Text_LetMeExamine
    Message PastoriaCityNortheastHouse_Text_HmhmISee
    Call PastoriaCityNortheastHouse_ExamineStatCool
    GoToIfEq VAR_RESULT, TRUE, PastoriaCityNortheastHouse_TryGiveRedScarf
    Call PastoriaCityNortheastHouse_ExamineStatBeauty
    GoToIfEq VAR_RESULT, TRUE, PastoriaCityNortheastHouse_TryGiveBlueScarf
    Call PastoriaCityNortheastHouse_ExamineStatCute
    GoToIfEq VAR_RESULT, TRUE, PastoriaCityNortheastHouse_TryGivePinkScarf
    Call PastoriaCityNortheastHouse_ExamineStatSmart
    GoToIfEq VAR_RESULT, TRUE, PastoriaCityNortheastHouse_TryGiveGreenScarf
    Call PastoriaCityNortheastHouse_ExamineStatTough
    GoToIfEq VAR_RESULT, TRUE, PastoriaCityNortheastHouse_TryGiveYellowScarf
    Message PastoriaCityNortheastHouse_Text_ItsNotGood
    WaitButton
    CloseMessage
    ReleaseAll
    End

PastoriaCityNortheastHouse_BagIsFull:
    Message PastoriaCityNortheastHouse_Text_YourBagsFull
    WaitButton
    CloseMessage
    ReleaseAll
    End

PastoriaCityNortheastHouse_TryGiveRedScarf:
    SetVar VAR_0x8004, ITEM_RED_SCARF
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, PastoriaCityNortheastHouse_BagIsFull
    BufferPartyMonSpecies 0, VAR_0x8000
    BufferItemName 1, ITEM_RED_SCARF
    Message PastoriaCityNortheastHouse_Text_PokemonsLookingGood
    Common_GiveItemQuantity
    SetFlag FLAG_RECEIVED_PASTORIA_CITY_NORTHEAST_HOUSE_RED_SCARF
    Message PastoriaCityNortheastHouse_Text_RedScarfCool
    WaitButton
    CloseMessage
    ReleaseAll
    End

PastoriaCityNortheastHouse_TryGiveBlueScarf:
    SetVar VAR_0x8004, ITEM_BLUE_SCARF
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, PastoriaCityNortheastHouse_BagIsFull
    BufferPartyMonSpecies 0, VAR_0x8000
    BufferItemName 1, ITEM_BLUE_SCARF
    Message PastoriaCityNortheastHouse_Text_PokemonsLookingGood
    Common_GiveItemQuantity
    SetFlag FLAG_RECEIVED_PASTORIA_CITY_NORTHEAST_HOUSE_BLUE_SCARF
    Message PastoriaCityNortheastHouse_Text_BlueScarfBeauty
    WaitButton
    CloseMessage
    ReleaseAll
    End

PastoriaCityNortheastHouse_TryGivePinkScarf:
    SetVar VAR_0x8004, ITEM_PINK_SCARF
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, PastoriaCityNortheastHouse_BagIsFull
    BufferPartyMonSpecies 0, VAR_0x8000
    BufferItemName 1, ITEM_PINK_SCARF
    Message PastoriaCityNortheastHouse_Text_PokemonsLookingGood
    Common_GiveItemQuantity
    SetFlag FLAG_RECEIVED_PASTORIA_CITY_NORTHEAST_HOUSE_PINK_SCARF
    Message PastoriaCityNortheastHouse_Text_PinkScarfCute
    WaitButton
    CloseMessage
    ReleaseAll
    End

PastoriaCityNortheastHouse_TryGiveGreenScarf:
    SetVar VAR_0x8004, ITEM_GREEN_SCARF
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, PastoriaCityNortheastHouse_BagIsFull
    BufferPartyMonSpecies 0, VAR_0x8000
    BufferItemName 1, ITEM_GREEN_SCARF
    Message PastoriaCityNortheastHouse_Text_PokemonsLookingGood
    Common_GiveItemQuantity
    SetFlag FLAG_RECEIVED_PASTORIA_CITY_NORTHEAST_HOUSE_GREEN_SCARF
    Message PastoriaCityNortheastHouse_Text_GreenScarfSmart
    WaitButton
    CloseMessage
    ReleaseAll
    End

PastoriaCityNortheastHouse_TryGiveYellowScarf:
    SetVar VAR_0x8004, ITEM_YELLOW_SCARF
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, PastoriaCityNortheastHouse_BagIsFull
    BufferPartyMonSpecies 0, VAR_0x8000
    BufferItemName 1, ITEM_YELLOW_SCARF
    Message PastoriaCityNortheastHouse_Text_PokemonsLookingGood
    Common_GiveItemQuantity
    SetFlag FLAG_RECEIVED_PASTORIA_CITY_NORTHEAST_HOUSE_YELLOW_SCARF
    Message PastoriaCityNortheastHouse_Text_YellowScarfTough
    WaitButton
    CloseMessage
    ReleaseAll
    End

PastoriaCityNortheastHouse_ExamineStatCool:
    GoToIfSet FLAG_RECEIVED_PASTORIA_CITY_NORTHEAST_HOUSE_RED_SCARF, PastoriaCityNortheastHouse_SetResultCoolFalse
    GetPartyMonContestStat VAR_0x8000, CONTEST_TYPE_COOL, VAR_RESULT
    GoToIfLt VAR_RESULT, 200, PastoriaCityNortheastHouse_SetResultCoolFalse
    SetVar VAR_RESULT, TRUE
    Return

PastoriaCityNortheastHouse_SetResultCoolFalse:
    SetVar VAR_RESULT, FALSE
    Return

PastoriaCityNortheastHouse_ExamineStatBeauty:
    GoToIfSet FLAG_RECEIVED_PASTORIA_CITY_NORTHEAST_HOUSE_BLUE_SCARF, PastoriaCityNortheastHouse_SetResultBeautyFalse
    GetPartyMonContestStat VAR_0x8000, CONTEST_TYPE_BEAUTY, VAR_RESULT
    GoToIfLt VAR_RESULT, 200, PastoriaCityNortheastHouse_SetResultBeautyFalse
    SetVar VAR_RESULT, TRUE
    Return

PastoriaCityNortheastHouse_SetResultBeautyFalse:
    SetVar VAR_RESULT, FALSE
    Return

PastoriaCityNortheastHouse_ExamineStatCute:
    GoToIfSet FLAG_RECEIVED_PASTORIA_CITY_NORTHEAST_HOUSE_PINK_SCARF, PastoriaCityNortheastHouse_SetResultCuteFalse
    GetPartyMonContestStat VAR_0x8000, CONTEST_TYPE_CUTE, VAR_RESULT
    GoToIfLt VAR_RESULT, 200, PastoriaCityNortheastHouse_SetResultCuteFalse
    SetVar VAR_RESULT, TRUE
    Return

PastoriaCityNortheastHouse_SetResultCuteFalse:
    SetVar VAR_RESULT, FALSE
    Return

PastoriaCityNortheastHouse_ExamineStatSmart:
    GoToIfSet FLAG_RECEIVED_PASTORIA_CITY_NORTHEAST_HOUSE_GREEN_SCARF, PastoriaCityNortheastHouse_SetResultSmartFalse
    GetPartyMonContestStat VAR_0x8000, CONTEST_TYPE_SMART, VAR_RESULT
    GoToIfLt VAR_RESULT, 200, PastoriaCityNortheastHouse_SetResultSmartFalse
    SetVar VAR_RESULT, TRUE
    Return

PastoriaCityNortheastHouse_SetResultSmartFalse:
    SetVar VAR_RESULT, FALSE
    Return

PastoriaCityNortheastHouse_ExamineStatTough:
    GoToIfSet FLAG_RECEIVED_PASTORIA_CITY_NORTHEAST_HOUSE_YELLOW_SCARF, PastoriaCityNortheastHouse_SetResultToughFalse
    GetPartyMonContestStat VAR_0x8000, CONTEST_TYPE_TOUGH, VAR_RESULT
    GoToIfLt VAR_RESULT, 200, PastoriaCityNortheastHouse_SetResultToughFalse
    SetVar VAR_RESULT, TRUE
    Return

PastoriaCityNortheastHouse_SetResultToughFalse:
    SetVar VAR_RESULT, FALSE
    Return

PastoriaCityNortheastHouse_BattleGirl:
    NPCMessage PastoriaCityNortheastHouse_Text_MyInLawIsMassageGirl
    End

PastoriaCityNortheastHouse_Pachirisu:
    PokemonCryAndMessage SPECIES_PACHIRISU, PastoriaCityNortheastHouse_Text_PachirisuCry
    End

    .balign 4, 0
