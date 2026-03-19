#include "macros/scrcmd.inc"
#include "res/text/bank/hearthome_city_pokemon_fan_club.h"


    ScriptEntry HearthomeCityPokemonFanClub_Gentleman
    ScriptEntry HearthomeCityPokemonFanClub_Beauty
    ScriptEntry HearthomeCityPokemonFanClub_Psyduck
    ScriptEntry HearthomeCityPokemonFanClub_Buneary
    ScriptEntry HearthomeCityPokemonFanClub_Clefairy
    ScriptEntry HearthomeCityPokemonFanClub_OnTransition
    ScriptEntryEnd

HearthomeCityPokemonFanClub_OnTransition:
    CheckTVInterviewEligible TV_PROGRAM_SEGMENT_YOUR_POKEMON_CORNER, VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, FALSE, HearthomeCityPokemonFanClub_HideReporter
    ClearFlag FLAG_HIDE_HEARTHOME_CITY_POKEMON_FAN_CLUB_REPORTER
    End

HearthomeCityPokemonFanClub_HideReporter:
    SetFlag FLAG_HIDE_HEARTHOME_CITY_POKEMON_FAN_CLUB_REPORTER
    End

HearthomeCityPokemonFanClub_Gentleman:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_RECEIVED_HEARTHOME_CITY_POKEMON_FAN_CLUB_POFFIN_CASE, HearthomeCityPokemonFanClub_WeAreTheNumberOneFanClub
    Message HearthomeCityPokemonFanClub_Text_IAmTheChairman
    SetVar VAR_0x8004, ITEM_POFFIN_CASE
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, HearthomeCityPokemonFanClub_BagIsFull
    Common_GiveItemQuantity
    SetFlag FLAG_RECEIVED_HEARTHOME_CITY_POKEMON_FAN_CLUB_POFFIN_CASE
    Message HearthomeCityPokemonFanClub_Text_FillItWithPoffins
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

HearthomeCityPokemonFanClub_WeAreTheNumberOneFanClub:
    Message HearthomeCityPokemonFanClub_Text_WeAreTheNumberOneFanClub
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

HearthomeCityPokemonFanClub_BagIsFull:
    Common_MessageBagIsFull
    CloseMessage
    ReleaseAll
    End

HearthomeCityPokemonFanClub_Beauty:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GetFirstNonEggInParty VAR_0x8000
    BufferPartyMonNickname 0, VAR_0x8000
    Message HearthomeCityPokemonFanClub_Text_OhYourPokemon
    GetPartyMonFriendship VAR_RESULT, VAR_0x8000
    GoToIfGe VAR_RESULT, 255, HearthomeCityPokemonFanClub_Friendship255
    GoToIfGe VAR_RESULT, 200, HearthomeCityPokemonFanClub_Friendship200To254
    GoToIfGe VAR_RESULT, 150, HearthomeCityPokemonFanClub_Friendship150To199
    GoToIfGe VAR_RESULT, 100, HearthomeCityPokemonFanClub_Friendship100To149
    GoToIfGe VAR_RESULT, 50, HearthomeCityPokemonFanClub_Friendship50To99
    GoToIfGe VAR_RESULT, 1, HearthomeCityPokemonFanClub_Friendship1To49
    GoTo HearthomeCityPokemonFanClub_Friendship0
    End

HearthomeCityPokemonFanClub_Friendship255:
    Message HearthomeCityPokemonFanClub_Text_ItSimplyAdoresYou
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

HearthomeCityPokemonFanClub_Friendship200To254:
    Message HearthomeCityPokemonFanClub_Text_ItsVeryFriendlyTowardYou
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

HearthomeCityPokemonFanClub_Friendship150To199:
    Message HearthomeCityPokemonFanClub_Text_ItsQuiteFriendlyToYou
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

HearthomeCityPokemonFanClub_Friendship100To149:
    Message HearthomeCityPokemonFanClub_Text_ItsWarmingUpToYou
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

HearthomeCityPokemonFanClub_Friendship50To99:
    Message HearthomeCityPokemonFanClub_Text_ItsFeelingNeutralTowardYou
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

HearthomeCityPokemonFanClub_Friendship1To49:
    Message HearthomeCityPokemonFanClub_Text_ItSeemsToDislikeYouALittle
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

HearthomeCityPokemonFanClub_Friendship0:
    Message HearthomeCityPokemonFanClub_Text_ThisOneReallyHasntTakenTooKindlyToYou
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

HearthomeCityPokemonFanClub_Psyduck:
    PokemonCryAndMessage SPECIES_PSYDUCK, HearthomeCityPokemonFanClub_Text_PsyduckCryGuaGwah
    End

HearthomeCityPokemonFanClub_Buneary:
    PokemonCryAndMessage SPECIES_BUNEARY, HearthomeCityPokemonFanClub_Text_BunearyCryKukuuh
    End

HearthomeCityPokemonFanClub_Clefairy:
    PokemonCryAndMessage SPECIES_CLEFAIRY, HearthomeCityPokemonFanClub_Text_ClefairyCryPipPiiih
    End

    .balign 4, 0
