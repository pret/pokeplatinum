#include "macros/scrcmd.inc"
#include "res/text/bank/oreburgh_city_northwest_house_3f.h"


    ScriptEntry OreburghCityNorthwestHouse3F_Lass
    ScriptEntry OreburghCityNorthwestHouse3F_Psyduck
    ScriptEntryEnd

OreburghCityNorthwestHouse3F_Lass:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_RECEIVED_OREBURGH_CITY_NORTHWEST_HOUSE_3F_HARD_STONE, OreburghCityNorthwestHouse3F_ThatItemIntensifiesThePowerOfRockTypeMoves
    BufferItemName 0, ITEM_HARD_STONE
    Message OreburghCityNorthwestHouse3F_Text_IfYoudLikeLetOneHoldThisItem
    SetVar VAR_0x8004, ITEM_HARD_STONE
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, OreburghCityNorthwestHouse3F_BagIsFull
    SetFlag FLAG_RECEIVED_OREBURGH_CITY_NORTHWEST_HOUSE_3F_HARD_STONE
    Common_GiveItemQuantityNoLineFeed
    CloseMessage
    ReleaseAll
    End

OreburghCityNorthwestHouse3F_ThatItemIntensifiesThePowerOfRockTypeMoves:
    BufferItemName 0, ITEM_HARD_STONE
    Message OreburghCityNorthwestHouse3F_Text_ThatItemIntensifiesThePowerOfRockTypeMoves
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

OreburghCityNorthwestHouse3F_BagIsFull:
    Common_MessageBagIsFull
    CloseMessage
    ReleaseAll
    End

OreburghCityNorthwestHouse3F_Psyduck:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    WaitFanfare SEQ_SE_CONFIRM
    PlayCry SPECIES_PSYDUCK
    Message OreburghCityNorthwestHouse3F_Text_PsyduckDuuuck
    WaitCry
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
