#include "macros/scrcmd.inc"
#include "res/text/bank/floaroma_town_middle_house.h"


    ScriptEntry FloaromaTownMiddleHouse_PokemonBreederF
    ScriptEntry FloaromaTownMiddleHouse_Twin
    ScriptEntry FloaromaTownMiddleHouse_Clefairy
    ScriptEntryEnd

FloaromaTownMiddleHouse_PokemonBreederF:
    NPCMessage FloaromaTownMiddleHouse_Text_FloaromaTownWasBarren
    End

FloaromaTownMiddleHouse_Twin:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_RECEIVED_FLOAROMA_TOWN_MIDDLE_HOUSE_TM88, FloaromaTownMiddleHouse_UsingPluckEatsBerry
    Message FloaromaTownMiddleHouse_Text_CuteHowPokemonPluckBerries
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, FloaromaTownMiddleHouse_HeresTMForPluck
    GoToIfEq VAR_RESULT, MENU_NO, FloaromaTownMiddleHouse_IJustLikeWeirdThings
    End

FloaromaTownMiddleHouse_IJustLikeWeirdThings:
    Message FloaromaTownMiddleHouse_Text_IJustLikeWeirdThings
    WaitButton
    CloseMessage
    ReleaseAll
    End

FloaromaTownMiddleHouse_HeresTMForPluck:
    Message FloaromaTownMiddleHouse_Text_HeresTMForPluck
    SetVar VAR_0x8004, ITEM_TM88
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, FloaromaTownMiddleHouse_BagIsFull
    SetFlag FLAG_RECEIVED_FLOAROMA_TOWN_MIDDLE_HOUSE_TM88
    Common_GiveItemQuantityNoLineFeed
    CloseMessage
    ReleaseAll
    End

FloaromaTownMiddleHouse_UsingPluckEatsBerry:
    Message FloaromaTownMiddleHouse_Text_UsingPluckEatsBerry
    WaitButton
    CloseMessage
    ReleaseAll
    End

FloaromaTownMiddleHouse_BagIsFull:
    Common_MessageBagIsFull
    CloseMessage
    ReleaseAll
    End

FloaromaTownMiddleHouse_Clefairy:
    PokemonCryAndMessage SPECIES_CLEFAIRY, FloaromaTownMiddleHouse_Text_ClefairyCry
    End
