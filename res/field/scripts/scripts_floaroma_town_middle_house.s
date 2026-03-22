#include "macros/scrcmd.inc"
#include "res/text/bank/floaroma_town_middle_house.h"


    ScriptEntry FloaromaTownMiddleHouse_PokemonBreederF
    ScriptEntry FloaromaTownMiddleHouse_Twin
    ScriptEntry FloaromaTownMiddleHouse_Clefairy
    ScriptEntryEnd

FloaromaTownMiddleHouse_PokemonBreederF:
    NPCMessage FloaromaTownMiddleHouse_Text_FloaromaTownWasABarrenDesolateHillLongAgo
    End

FloaromaTownMiddleHouse_Twin:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_RECEIVED_FLOAROMA_TOWN_MIDDLE_HOUSE_TM88, FloaromaTownMiddleHouse_WhenAPokemonUsesPluckItEatsABerryHeldByItsFoe
    Message FloaromaTownMiddleHouse_Text_DoYouThinkItsCuteHowPokemonPluckBerries
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, FloaromaTownMiddleHouse_HeresTheTMForTheMovePluck
    GoToIfEq VAR_RESULT, MENU_NO, FloaromaTownMiddleHouse_OhIGuessIJustLikeWeirdThings
    End

FloaromaTownMiddleHouse_OhIGuessIJustLikeWeirdThings:
    Message FloaromaTownMiddleHouse_Text_OhIGuessIJustLikeWeirdThings
    WaitButton
    CloseMessage
    ReleaseAll
    End

FloaromaTownMiddleHouse_HeresTheTMForTheMovePluck:
    Message FloaromaTownMiddleHouse_Text_HeresTheTMForTheMovePluck
    SetVar VAR_0x8004, ITEM_TM88
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, FloaromaTownMiddleHouse_BagIsFull
    SetFlag FLAG_RECEIVED_FLOAROMA_TOWN_MIDDLE_HOUSE_TM88
    Common_GiveItemQuantityNoLineFeed
    CloseMessage
    ReleaseAll
    End

FloaromaTownMiddleHouse_WhenAPokemonUsesPluckItEatsABerryHeldByItsFoe:
    Message FloaromaTownMiddleHouse_Text_WhenAPokemonUsesPluckItEatsABerryHeldByItsFoe
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
    PokemonCryAndMessage SPECIES_CLEFAIRY, FloaromaTownMiddleHouse_Text_ClefairyRii
    End
