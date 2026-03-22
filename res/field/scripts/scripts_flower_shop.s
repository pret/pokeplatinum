#include "macros/scrcmd.inc"
#include "res/text/bank/flower_shop.h"


    ScriptEntry FlowerShop_PokemonBreederF
    ScriptEntry FlowerShop_Lass
    ScriptEntry FlowerShop_Beauty
    ScriptEntryEnd

FlowerShop_PokemonBreederF:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_OBTAINED_FLOWER_SHOP_BERRY, FlowerShop_PleasePlantThatBerryInSoftEarthySoil
    Message FlowerShop_Text_ASingleBerryWillGrowIntoAPlantThatMakesSeveralBerries
    GetRandom VAR_0x8004, 5
    AddVar VAR_0x8004, ITEM_CHERI_BERRY /* Cheri, Chesto, Pecha, Rawst or Aspear */
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, FlowerShop_BagIsFull
    SetFlag FLAG_OBTAINED_FLOWER_SHOP_BERRY
    Common_GiveItemQuantityNoLineFeed
    CloseMessage
    ReleaseAll
    End

FlowerShop_PleasePlantThatBerryInSoftEarthySoil:
    Message FlowerShop_Text_PleasePlantThatBerryInSoftEarthySoil
    WaitButton
    CloseMessage
    ReleaseAll
    End

FlowerShop_BagIsFull:
    Common_MessageBagIsFull
    CloseMessage
    ReleaseAll
    End

FlowerShop_Lass:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_RECEIVED_FLOWER_SHOP_SPRAYDUCK, FlowerShop_UseThatSprayduckToWaterTheSoilWhereYouvePlantedBerries
    Message FlowerShop_Text_TrainerPleaseWaterBerriesUsingThisSprayduckWateringCan
    SetVar VAR_0x8004, ITEM_SPRAYDUCK
    SetVar VAR_0x8005, 1
    SetFlag FLAG_RECEIVED_FLOWER_SHOP_SPRAYDUCK
    Common_GiveItemQuantityNoLineFeed
    CloseMessage
    ReleaseAll
    End

FlowerShop_UseThatSprayduckToWaterTheSoilWhereYouvePlantedBerries:
    Message FlowerShop_Text_UseThatSprayduckToWaterTheSoilWhereYouvePlantedBerries
    WaitButton
    CloseMessage
    ReleaseAll
    End

FlowerShop_Beauty:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ShowAccessoryShop
    ReleaseAll
    End

    .balign 4, 0
