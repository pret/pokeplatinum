#include "macros/scrcmd.inc"
#include "res/text/bank/oreburgh_city_northwest_house_2f.h"


    ScriptEntry OreburghCityNorthwestHouse2F_Worker
    ScriptEntry OreburghCityNorthwestHouse2F_SchoolKidF
    ScriptEntry OreburghCityNorthwestHouse2F_Lass
    ScriptEntry OreburghCityNorthwestHouse2F_Psyduck
    ScriptEntryEnd

OreburghCityNorthwestHouse2F_Worker:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message OreburghCityNorthwestHouse2F_Text_GivingNicknamesToPokemonIsTheWayToGo
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

OreburghCityNorthwestHouse2F_SchoolKidF:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message OreburghCityNorthwestHouse2F_Text_ButHeNamedOurPsyduckYellowJustBecauseOfItsColor
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

OreburghCityNorthwestHouse2F_Lass:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_RECEIVED_OREBURGH_CITY_NORTHWEST_HOUSE_2F_DUSK_BALL, OreburghCityNorthwestHouse2F_TheDuskBallIsAPokeBallDesignedForUseInDarkness
    BufferItemName 0, ITEM_DUSK_BALL
    Message OreburghCityNorthwestHouse2F_Text_HereTakeThisIfYoudLike
    SetVar VAR_0x8004, ITEM_DUSK_BALL
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, OreburghCityNorthwestHouse2F_BagIsFull
    SetFlag FLAG_RECEIVED_OREBURGH_CITY_NORTHWEST_HOUSE_2F_DUSK_BALL
    Common_GiveItemQuantityNoLineFeed
    CloseMessage
    ReleaseAll
    End

OreburghCityNorthwestHouse2F_BagIsFull:
    Common_MessageBagIsFull
    CloseMessage
    ReleaseAll
    End

OreburghCityNorthwestHouse2F_TheDuskBallIsAPokeBallDesignedForUseInDarkness:
    Message OreburghCityNorthwestHouse2F_Text_TheDuskBallIsAPokeBallDesignedForUseInDarkness
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

OreburghCityNorthwestHouse2F_Psyduck:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    WaitFanfare SEQ_SE_CONFIRM
    PlayCry SPECIES_PSYDUCK
    Message OreburghCityNorthwestHouse2F_Text_YellowDuuuck
    WaitCry
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
