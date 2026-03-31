#include "macros/scrcmd.inc"
#include "res/text/bank/pokemon_mansion_maids_room.h"


    ScriptEntry PokemonMansionMaidsRoom_MaidMiddle
    ScriptEntry PokemonMansionMaidsRoom_MaidEast
    ScriptEntry PokemonMansionMaidsRoom_Bed
    ScriptEntryEnd

PokemonMansionMaidsRoom_MaidMiddle:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_RECEIVED_POKEMON_MANSION_MAIDS_ROOM_SOOTHE_BELL, PokemonMansionMaidsRoom_TrainerThatPokemonLove
    Message PokemonMansionMaidsRoom_Text_PutThisOnPokemon
    SetVar VAR_0x8004, ITEM_SOOTHE_BELL
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, PokemonMansionMaidsRoom_BagIsFull
    SetFlag FLAG_RECEIVED_POKEMON_MANSION_MAIDS_ROOM_SOOTHE_BELL
    Common_GiveItemQuantityNoLineFeed
    CloseMessage
    ReleaseAll
    End

PokemonMansionMaidsRoom_BagIsFull:
    Common_MessageBagIsFull
    CloseMessage
    ReleaseAll
    End

PokemonMansionMaidsRoom_TrainerThatPokemonLove:
    Message PokemonMansionMaidsRoom_Text_TrainerThatPokemonLove
    WaitButton
    CloseMessage
    ReleaseAll
    End

PokemonMansionMaidsRoom_MaidEast:
    NPCMessage PokemonMansionMaidsRoom_Text_ImNotLoafing
    End

PokemonMansionMaidsRoom_Bed:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    Message PokemonMansionMaidsRoom_Text_WantToRest
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, PokemonMansionMaidsRoom_Rest
    GoTo PokemonMansionMaidsRoom_BedEnd
    End

PokemonMansionMaidsRoom_Rest:
    BufferPlayerName 0
    Message PokemonMansionMaidsRoom_Text_PlayerFellAsleep
    CloseMessage
    FadeScreenOut
    WaitFadeScreen
    PlayFanfare SEQ_ASA
    WaitFanfare
    HealParty
    FadeScreenIn
    WaitFadeScreen
    BufferPlayerName 0
    Message PokemonMansionMaidsRoom_Text_PokemonFullyHealed
    WaitButton
    CloseMessage
    ReleaseAll
    End

PokemonMansionMaidsRoom_BedEnd:
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
