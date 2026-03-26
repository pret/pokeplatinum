#include "macros/scrcmd.inc"
#include "res/text/bank/pastoria_city_southwest_house.h"


    ScriptEntry PastoriaCitySouthwestHouse_PokemonBreederF
    ScriptEntry PastoriaCitySouthwestHouse_Twin
    ScriptEntryEnd

PastoriaCitySouthwestHouse_PokemonBreederF:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_RECEIVED_PASTORIA_CITY_SOUTHWEST_HOUSE_RANDOM_BERRY, PastoriaCitySouthwestHouse_PlantingIsGood
    Message PastoriaCitySouthwestHouse_Text_PlantThisBerry
    GetRandom VAR_0x8004, 17
    AddVar VAR_0x8004, ITEM_OCCA_BERRY /* Random type berry */
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, PastoriaCitySouthwestHouse_BagIsFull
    SetFlag FLAG_RECEIVED_PASTORIA_CITY_SOUTHWEST_HOUSE_RANDOM_BERRY
    Common_GiveItemQuantityNoLineFeed
    CloseMessage
    ReleaseAll
    End

PastoriaCitySouthwestHouse_PlantingIsGood:
    Message PastoriaCitySouthwestHouse_Text_PlantingIsGood
    WaitButton
    CloseMessage
    ReleaseAll
    End

PastoriaCitySouthwestHouse_BagIsFull:
    Common_MessageBagIsFull
    CloseMessage
    ReleaseAll
    End

PastoriaCitySouthwestHouse_Twin:
    NPCMessage PastoriaCitySouthwestHouse_Text_SisterGathersBerries
    End

    .balign 4, 0
