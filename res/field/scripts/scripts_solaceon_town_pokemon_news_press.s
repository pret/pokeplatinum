#include "macros/scrcmd.inc"
#include "res/text/bank/solaceon_town_pokemon_news_press.h"
#include "res/text/bank/menu_entries.h"


    ScriptEntry SolaceonTownPokemonNewsPress_GymGuide
    ScriptEntry SolaceonTownPokemonNewsPress_PokemonBreederM
    ScriptEntry SolaceonTownPokemonNewsPress_PC
    ScriptEntryEnd

SolaceonTownPokemonNewsPress_GymGuide:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_COULD_NOT_RECEIVE_POKEMON_NEWS_PRESS_REWARD, SolaceonTownPokemonNewsPress_TryGiveReward
    GoToIfSet FLAG_GOT_POKEMON_NEWS_PRESS_REWARD, SolaceonTownPokemonNewsPress_IllHaveAnotherAssignmentTomorrow
    GoToIfUnset FLAG_TALKED_TO_POKEMON_NEWS_PRESS_GYM_GUIDE, SolaceonTownPokemonNewsPress_YoureTheExpertWeveBeenLookingFor
    GoToIfEq VAR_POKEMON_NEWS_PRESS_REQUESTED_POKEMON, 0, SolaceonTownPokemonNewsPress_HeresYourAssignment
    GoTo SolaceonTownPokemonNewsPress_CheckBroughtRequestedPokemon

SolaceonTownPokemonNewsPress_YoureTheExpertWeveBeenLookingFor:
    SetFlag FLAG_TALKED_TO_POKEMON_NEWS_PRESS_GYM_GUIDE
    Message SolaceonTownPokemonNewsPress_Text_YoureTheExpert
    GoTo SolaceonTownPokemonNewsPress_SetNewsPressRequestedPokemon

SolaceonTownPokemonNewsPress_HeresYourAssignment:
    Message SolaceonTownPokemonNewsPress_Text_HeresYourAssignment
    GoTo SolaceonTownPokemonNewsPress_SetNewsPressRequestedPokemon

SolaceonTownPokemonNewsPress_SetNewsPressRequestedPokemon:
    GetRandomSeenSpecies VAR_RESULT
    SetVar VAR_POKEMON_NEWS_PRESS_REQUESTED_POKEMON, VAR_RESULT
    SetNewsPressDeadline 1
    BufferSpeciesNameFromVar 0, VAR_POKEMON_NEWS_PRESS_REQUESTED_POKEMON, 0, 0
    Message SolaceonTownPokemonNewsPress_Text_BringMeThisPokemon
    WaitButton
    CloseMessage
    ReleaseAll
    End

SolaceonTownPokemonNewsPress_CheckBroughtRequestedPokemon:
    Message SolaceonTownPokemonNewsPress_Text_DidYouBringUsThePokemon
    GetNewsPressDeadline VAR_RESULT
    GoToIfEq VAR_RESULT, 0, SolaceonTownPokemonNewsPress_FailedToBringPokemonWithinDeadline
    CheckPartyHasSpecies VAR_RESULT, VAR_POKEMON_NEWS_PRESS_REQUESTED_POKEMON
    GoToIfEq VAR_RESULT, FALSE, SolaceonTownPokemonNewsPress_DidntBringPokemonYet
    GoTo SolaceonTownPokemonNewsPress_SetReward

SolaceonTownPokemonNewsPress_SetReward:
    BufferSpeciesNameFromVar 0, VAR_POKEMON_NEWS_PRESS_REQUESTED_POKEMON, 0, 0
    Message SolaceonTownPokemonNewsPress_Text_ThatsItThanks
    GetRandom VAR_RESULT, 12
    CallIfEq VAR_RESULT, 0, SolaceonTownPokemonNewsPress_SetRewardUltraBall
    CallIfEq VAR_RESULT, 1, SolaceonTownPokemonNewsPress_SetRewardGreatBall
    CallIfEq VAR_RESULT, 2, SolaceonTownPokemonNewsPress_SetRewardPokeBall
    CallIfEq VAR_RESULT, 3, SolaceonTownPokemonNewsPress_SetRewardNetBall
    CallIfEq VAR_RESULT, 4, SolaceonTownPokemonNewsPress_SetRewardDiveBall
    CallIfEq VAR_RESULT, 5, SolaceonTownPokemonNewsPress_SetRewardNestBall
    CallIfEq VAR_RESULT, 6, SolaceonTownPokemonNewsPress_SetRewardRepeatBall
    CallIfEq VAR_RESULT, 7, SolaceonTownPokemonNewsPress_SetRewardTimerBall
    CallIfEq VAR_RESULT, 8, SolaceonTownPokemonNewsPress_SetRewardLuxuryBall
    CallIfEq VAR_RESULT, 9, SolaceonTownPokemonNewsPress_SetRewardDuskBall
    CallIfEq VAR_RESULT, 10, SolaceonTownPokemonNewsPress_SetRewardHealBall
    CallIfEq VAR_RESULT, 11, SolaceonTownPokemonNewsPress_SetRewardQuickBall
    SetVar VAR_0x8005, 3
    CanFitItem ITEM_HEART_SCALE, 1, VAR_RESULT
    GoToIfNe VAR_RESULT, FALSE, SolaceonTownPokemonNewsPress_GiveRewardIHopeYoullHelpAgainTomorrow
    SetFlag FLAG_GOT_POKEMON_NEWS_PRESS_REWARD
    GoToIfEq VAR_RESULT, FALSE, SolaceonTownPokemonNewsPress_CouldntGiveReward
    End

SolaceonTownPokemonNewsPress_SetRewardUltraBall:
    SetVar VAR_0x8004, ITEM_ULTRA_BALL
    Return

SolaceonTownPokemonNewsPress_SetRewardGreatBall:
    SetVar VAR_0x8004, ITEM_GREAT_BALL
    Return

SolaceonTownPokemonNewsPress_SetRewardPokeBall:
    SetVar VAR_0x8004, ITEM_POKE_BALL
    Return

SolaceonTownPokemonNewsPress_SetRewardNetBall:
    SetVar VAR_0x8004, ITEM_NET_BALL
    Return

SolaceonTownPokemonNewsPress_SetRewardDiveBall:
    SetVar VAR_0x8004, ITEM_DIVE_BALL
    Return

SolaceonTownPokemonNewsPress_SetRewardNestBall:
    SetVar VAR_0x8004, ITEM_NEST_BALL
    Return

SolaceonTownPokemonNewsPress_SetRewardRepeatBall:
    SetVar VAR_0x8004, ITEM_REPEAT_BALL
    Return

SolaceonTownPokemonNewsPress_SetRewardTimerBall:
    SetVar VAR_0x8004, ITEM_TIMER_BALL
    Return

SolaceonTownPokemonNewsPress_SetRewardLuxuryBall:
    SetVar VAR_0x8004, ITEM_LUXURY_BALL
    Return

SolaceonTownPokemonNewsPress_SetRewardDuskBall:
    SetVar VAR_0x8004, ITEM_DUSK_BALL
    Return

SolaceonTownPokemonNewsPress_SetRewardHealBall:
    SetVar VAR_0x8004, ITEM_HEAL_BALL
    Return

SolaceonTownPokemonNewsPress_SetRewardQuickBall:
    SetVar VAR_0x8004, ITEM_QUICK_BALL
    Return

SolaceonTownPokemonNewsPress_GiveRewardIHopeYoullHelpAgainTomorrow:
    Common_GiveItemQuantity
    SetVar VAR_0x8004, ITEM_HEART_SCALE
    SetVar VAR_0x8005, 1
    Common_GiveItemQuantity
    ClearFlag FLAG_COULD_NOT_RECEIVE_POKEMON_NEWS_PRESS_REWARD
    SetVar VAR_POKEMON_NEWS_PRESS_REQUESTED_POKEMON, 0
    SetFlag FLAG_GOT_POKEMON_NEWS_PRESS_REWARD
    Message SolaceonTownPokemonNewsPress_Text_IHopeYoullHelpAgainTomorrow
    WaitButton
    CloseMessage
    ReleaseAll
    End

SolaceonTownPokemonNewsPress_TryGiveReward:
    GoToIfCannotFitItem ITEM_HEART_SCALE, 1, VAR_RESULT, SolaceonTownPokemonNewsPress_YourBagIsStuffedFull
    SetVar VAR_0x8004, VAR_POKEMON_NEWS_PRESS_POKE_BALL_REWARD
    SetVar VAR_0x8005, 3
    GoTo SolaceonTownPokemonNewsPress_GiveReward
    End

SolaceonTownPokemonNewsPress_CouldntGiveReward:
    SetVar VAR_POKEMON_NEWS_PRESS_POKE_BALL_REWARD, VAR_0x8004
    SetFlag FLAG_COULD_NOT_RECEIVE_POKEMON_NEWS_PRESS_REWARD
    GoTo SolaceonTownPokemonNewsPress_YourBagIsStuffedFull
    End

SolaceonTownPokemonNewsPress_YourBagIsStuffedFull:
    Message SolaceonTownPokemonNewsPress_Text_YourBagIsStuffedFull
    WaitButton
    CloseMessage
    ReleaseAll
    End

SolaceonTownPokemonNewsPress_GiveReward:
    Message SolaceonTownPokemonNewsPress_Text_HeresYourReward
    ClearFlag FLAG_COULD_NOT_RECEIVE_POKEMON_NEWS_PRESS_REWARD
    SetVar VAR_POKEMON_NEWS_PRESS_REQUESTED_POKEMON, 0
    Common_GiveItemQuantity
    SetVar VAR_0x8004, ITEM_HEART_SCALE
    SetVar VAR_0x8005, 1
    Common_GiveItemQuantityNoLineFeed
    CloseMessage
    ReleaseAll
    End

SolaceonTownPokemonNewsPress_DidntBringPokemonYet:
    BufferSpeciesNameFromVar 0, VAR_POKEMON_NEWS_PRESS_REQUESTED_POKEMON, 0, 0
    GetNewsPressDeadline VAR_RESULT
    BufferNumber 1, VAR_RESULT
    Message SolaceonTownPokemonNewsPress_Text_StillHaventCaughtThePokemon
    WaitButton
    CloseMessage
    ReleaseAll
    End

SolaceonTownPokemonNewsPress_FailedToBringPokemonWithinDeadline:
    Message SolaceonTownPokemonNewsPress_Text_FailedToBringThePokemon
    SetVar VAR_POKEMON_NEWS_PRESS_REQUESTED_POKEMON, 0
    WaitButton
    CloseMessage
    ReleaseAll
    End

SolaceonTownPokemonNewsPress_IllHaveAnotherAssignmentTomorrow:
    Message SolaceonTownPokemonNewsPress_Text_IllHaveAnotherAssignmentTomorrow
    WaitButton
    CloseMessage
    ReleaseAll
    End

SolaceonTownPokemonNewsPress_PokemonBreederM:
    NPCMessage SolaceonTownPokemonNewsPress_Text_TheNewspaperIsTiny
    End

SolaceonTownPokemonNewsPress_PC:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    Message SolaceonTownPokemonNewsPress_Text_TopStory
    Message SolaceonTownPokemonNewsPress_Text_ReadWhichArticle
    InitGlobalTextMenu 1, 1, 0, VAR_RESULT
    AddMenuEntry MenuEntries_Text_Article_DuskBall, 0
    AddMenuEntry MenuEntries_Text_Article_HealBall, 1
    AddMenuEntry MenuEntries_Text_Article_QuickBall, 2
    AddMenuEntry MenuEntries_Text_Article_DiveBall, 3
    AddMenuEntry MenuEntries_Text_Article_Exit, 4
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, SolaceonTownPokemonNewsPress_ArticleDuskBall
    GoToIfEq VAR_0x8008, 1, SolaceonTownPokemonNewsPress_ArticleHealBall
    GoToIfEq VAR_0x8008, 2, SolaceonTownPokemonNewsPress_ArticleQuickBall
    GoToIfEq VAR_0x8008, 3, SolaceonTownPokemonNewsPress_ArticleDiveBall
    GoTo SolaceonTownPokemonNewsPress_PCEnd
    End

SolaceonTownPokemonNewsPress_ArticleDuskBall:
    Message SolaceonTownPokemonNewsPress_Text_ArticleDuskBall
    WaitButton
    CloseMessage
    ReleaseAll
    End

SolaceonTownPokemonNewsPress_ArticleHealBall:
    Message SolaceonTownPokemonNewsPress_Text_ArticleHealBall
    WaitButton
    CloseMessage
    ReleaseAll
    End

SolaceonTownPokemonNewsPress_ArticleQuickBall:
    Message SolaceonTownPokemonNewsPress_Text_ArticleQuickBall
    WaitButton
    CloseMessage
    ReleaseAll
    End

SolaceonTownPokemonNewsPress_ArticleDiveBall:
    Message SolaceonTownPokemonNewsPress_Text_ArticleDiveBall
    WaitButton
    CloseMessage
    ReleaseAll
    End

SolaceonTownPokemonNewsPress_PCEnd:
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
