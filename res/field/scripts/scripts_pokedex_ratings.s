#include "macros/scrcmd.inc"
#include "res/text/bank/pokedex_ratings.h"


    ScriptEntry PokedexRatings_CheckRowan @ 0x26DE
    ScriptEntry PokedexRatings_CheckPC @ 0x26DF
    ScriptEntry PokedexRatings_CheckOak @ 0x26E0
    ScriptEntry PokedexRatings_CheckNationalDex @ 0x26E1
    ScriptEntryEnd

PokedexRatings_CheckRowan:
    BufferPlayerName 0
    Message PokedexRatings_Text_RowanShowMeYourPokedex
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, PokedexRatings_CheckRowanDecline
    GoTo PokedexRatings_CheckRowanAccept
    End

PokedexRatings_CheckRowanDecline:
    Message PokedexRatings_Text_RowanAfraidToShowMe
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    ReturnCommonScript
    End

PokedexRatings_CheckRowanAccept:
    Call PokedexRatings_RateLocalDex
    CloseMessage
    ReleaseAll
    ReturnCommonScript
    End

PokedexRatings_CheckOak:
    BufferPlayerName 0
    GetPlayerGender VAR_RESULT
    CallIfEq VAR_RESULT, GENDER_MALE, PokedexRatings_OakPromptMessageMale
    CallIfEq VAR_RESULT, GENDER_FEMALE, PokedexRatings_OakPromptMessageFemale
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, PokedexRatings_CheckOakDecline
    GoTo PokedexRatings_CheckNationalDex
    End

PokedexRatings_OakPromptMessageMale:
    Message PokedexRatings_Text_OakShowMeYourPokedex_Male
    Return

PokedexRatings_OakPromptMessageFemale:
    Message PokedexRatings_Text_OakShowMeYourPokedex_Female
    Return

PokedexRatings_CheckOakDecline:
    Message PokedexRatings_Text_OakComeSeeMe
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    ReturnCommonScript
    End

PokedexRatings_CheckNationalDex:
    Call PokedexRatings_RateNationalDex
    CloseMessage
    ReleaseAll
    ReturnCommonScript
    End

PokedexRatings_CheckPC:
    Call PokedexRatings_CheckPCNationalOrLocal
    ReturnCommonScript
    End

PokedexRatings_CheckPCNationalOrLocal:
    GetNationalDexEnabled VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, PokedexRatings_CheckPCLocalDex
    GoToIfEq VAR_RESULT, TRUE, PokedexRatings_CheckPCNationalDex
    End

PokedexRatings_CheckPCLocalDex:
    Message PokedexRatings_Text_AccessedProfessorRowansPC
    GoTo PokedexRatings_RateLocalDex

PokedexRatings_CheckPCNationalDex:
    Message PokedexRatings_Text_AccessedProfessorOaksPC
    GoTo PokedexRatings_RateNationalDex

PokedexRatings_RateLocalDex:
    GoToIfUnset FLAG_FIRST_ARRIVAL_ETERNA_CITY, PokedexRatings_JustRateLocalDex
    CheckLocalDexCompleted VAR_RESULT
    CallIfEq VAR_RESULT, TRUE, PokedexRatings_LocalDexCompleted
PokedexRatings_JustRateLocalDex:
    GetLocalDexSeenCount VAR_0x8004
    BufferNumber 0, VAR_0x8004
    Message PokedexRatings_Text_PokemonSpottedInSinnoh
    LoadLocalDexRating VAR_RESULT
    BufferPlayerName 0
    MessageVar VAR_RESULT
    WaitABPress
    Return

PokedexRatings_LocalDexCompleted:
    SetFlag FLAG_SHOWN_COMPLETE_LOCAL_DEX
    Return

PokedexRatings_RateNationalDex:
    GetNationalDexCaughtCount VAR_0x8004
    GetPlayerGender VAR_0x8005
    BufferNumber 0, VAR_0x8004
    Message PokedexRatings_Text_PokemonCaughtSoFar
    LoadNationalDexRating VAR_RESULT
    BufferPlayerName 0
    MessageVar VAR_RESULT
    WaitABPress
    Return

    .balign 4, 0
