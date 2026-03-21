#include "macros/scrcmd.inc"
#include "res/text/bank/eterna_city_south_house.h"
#include "res/field/events/events_eterna_city_south_house.h"


    ScriptEntry EternaCitySouthHouse_ProfOak
    ScriptEntryEnd

EternaCitySouthHouse_ProfOak:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_CAUGHT_ROAMING_LEGENDARY_BIRDS, EternaCitySouthHouse_PokedexRatingsCheckOak2
    Call EternaCitySouthHouse_CheckCaughtAllRoamingLegendaryBirds
    GoToIfEq VAR_RESULT, TRUE, EternaCitySouthHouse_CaughtAllRoamingLegendaryBirds
    GoToIfSet FLAG_ACTIVATED_ROAMING_LEGENDARY_BIRDS, EternaCitySouthHouse_TryReactivateRoamingLegendaryBirds
    GoToIfSet FLAG_RECEIVED_ETERNA_CITY_SOUTH_HOUSE_UPGRADE, EternaCitySouthHouse_PokedexRatingsCheckOak
    BufferPlayerName 0
    Message EternaCitySouthHouse_Text_HowIsYourPokedexComingAlong
    CloseMessage
    ApplyMovement LOCALID_PROF_OAK, EternaCitySouthHouse_Movement_EmoteExclamationMark
    WaitMovement
    Message EternaCitySouthHouse_Text_AnAcquaintanceFromKantoHasSentSomethingQuiteInteresting
    SetVar VAR_0x8004, ITEM_UPGRADE
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, EternaCitySouthHouse_BagIsFull
    Common_GiveItemQuantity
    SetFlag FLAG_RECEIVED_ETERNA_CITY_SOUTH_HOUSE_UPGRADE
    Message EternaCitySouthHouse_Text_IUnderstandThereIsAPokemonThatEvolvesWhenItIsTradedWhileHoldingThatUpGrade
    GoTo EternaCitySouthHouse_ActivateRoamingLegendaryBirds
    End

EternaCitySouthHouse_PokedexRatingsCheckOak:
    CallCommonScript 0x26E0
    End

EternaCitySouthHouse_BagIsFull:
    Common_MessageBagIsFull
    CloseMessage
    ReleaseAll
    End

EternaCitySouthHouse_ActivateRoamingLegendaryBirds:
    ActivateRoamingPokemon ROAMING_SLOT_MOLTRES
    ActivateRoamingPokemon ROAMING_SLOT_ZAPDOS
    ActivateRoamingPokemon ROAMING_SLOT_ARTICUNO
    SetFlag FLAG_ACTIVATED_ROAMING_LEGENDARY_BIRDS
    Message EternaCitySouthHouse_Text_IveHeardThatThereHaveBeenSightingsOfArticunoZapdosAndMoltres
    GoTo EternaCitySouthHouse_ProfOakEnd
    End

EternaCitySouthHouse_TryReactivateRoamingLegendaryBirds:
    CallIfEq VAR_ROAMING_MOLTRES_STATE, ROAMER_STATE_RESET, EternaCitySouthHouse_ReactivateRoamingMoltres
    CallIfEq VAR_ROAMING_ZAPDOS_STATE, ROAMER_STATE_RESET, EternaCitySouthHouse_ReactivateRoamingZapdos
    CallIfEq VAR_ROAMING_ARTICUNO_STATE, ROAMER_STATE_RESET, EternaCitySouthHouse_ReactivateRoamingArticuno
    Message EternaCitySouthHouse_Text_ArticunoZapdosAndMoltresAreExtremelyRareEvenInKanto
    GoTo EternaCitySouthHouse_ProfOakEnd
    End

EternaCitySouthHouse_ReactivateRoamingMoltres:
    SetVar VAR_ROAMING_MOLTRES_STATE, ROAMER_STATE_ROAMING
    ActivateRoamingPokemon ROAMING_SLOT_MOLTRES
    Return

EternaCitySouthHouse_ReactivateRoamingZapdos:
    SetVar VAR_ROAMING_ZAPDOS_STATE, ROAMER_STATE_ROAMING
    ActivateRoamingPokemon ROAMING_SLOT_ZAPDOS
    Return

EternaCitySouthHouse_ReactivateRoamingArticuno:
    SetVar VAR_ROAMING_ARTICUNO_STATE, ROAMER_STATE_ROAMING
    ActivateRoamingPokemon ROAMING_SLOT_ARTICUNO
    Return

EternaCitySouthHouse_CaughtAllRoamingLegendaryBirds:
    Message EternaCitySouthHouse_Text_YouveCaughtArticunoZapdosAndMoltresAllowMeToExamineYourPokedex
    SetFlag FLAG_CAUGHT_ROAMING_LEGENDARY_BIRDS
    CallCommonScript 0x26E1
    End

EternaCitySouthHouse_PokedexRatingsCheckOak2:
    CallCommonScript 0x26E0
    End

EternaCitySouthHouse_CheckCaughtAllRoamingLegendaryBirds:
    GoToIfNe VAR_ROAMING_MOLTRES_STATE, ROAMER_STATE_CAPTURED, EternaCitySouthHouse_DidNotCatchAllRoamingLegendaryBirds
    GoToIfNe VAR_ROAMING_ZAPDOS_STATE, ROAMER_STATE_CAPTURED, EternaCitySouthHouse_DidNotCatchAllRoamingLegendaryBirds
    GoToIfNe VAR_ROAMING_ARTICUNO_STATE, ROAMER_STATE_CAPTURED, EternaCitySouthHouse_DidNotCatchAllRoamingLegendaryBirds
    SetVar VAR_RESULT, TRUE
    Return

EternaCitySouthHouse_DidNotCatchAllRoamingLegendaryBirds:
    SetVar VAR_RESULT, FALSE
    Return

EternaCitySouthHouse_ProfOakEnd:
    WaitButton
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
EternaCitySouthHouse_Movement_EmoteExclamationMark:
    EmoteExclamationMark
    EndMovement
