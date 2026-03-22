#include "macros/scrcmd.inc"
#include "res/text/bank/hearthome_city_southeast_house_2f.h"


    ScriptEntry HearthomeCitySoutheastHouse2F_AceTrainerF
    ScriptEntry HearthomeCitySoutheastHouse2F_Clefairy
    ScriptEntryEnd

HearthomeCitySoutheastHouse2F_AceTrainerF:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_RECEIVED_HEARTHOME_CITY_SOUTHEAST_HOUSE_2F_SHELL_BELL, HearthomeCitySoutheastHouse2F_ExplainShellBell
    BufferItemName 0, ITEM_SHELL_BELL
    Message HearthomeCitySoutheastHouse2F_Text_IHaveSomethingForYourPokemon
    SetVar VAR_0x8004, ITEM_SHELL_BELL
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, HearthomeCitySoutheastHouse2F_BagIsFull
    SetFlag FLAG_RECEIVED_HEARTHOME_CITY_SOUTHEAST_HOUSE_2F_SHELL_BELL
    Common_GiveItemQuantityNoLineFeed
    CloseMessage
    ReleaseAll
    End

HearthomeCitySoutheastHouse2F_ExplainShellBell:
    BufferItemName 0, ITEM_SHELL_BELL
    Message HearthomeCitySoutheastHouse2F_Text_TheHolderRegainsHPWhenItInflictsDamage
    WaitButton
    CloseMessage
    ReleaseAll
    End

HearthomeCitySoutheastHouse2F_BagIsFull:
    Common_MessageBagIsFull
    CloseMessage
    ReleaseAll
    End

HearthomeCitySoutheastHouse2F_Clefairy:
    PokemonCryAndMessage SPECIES_CLEFAIRY, HearthomeCitySoutheastHouse2F_Text_ClefairyCryPippi
    End

    .balign 4, 0
