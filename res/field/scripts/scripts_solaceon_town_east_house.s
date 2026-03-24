#include "macros/scrcmd.inc"
#include "res/text/bank/solaceon_town_east_house.h"


    ScriptEntry SolaceonTownEastHouse_NinjaBoy
    ScriptEntry SolaceonTownEastHouse_PokefanF
    ScriptEntryEnd
    End

SolaceonTownEastHouse_NinjaBoy:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfUnset FLAG_RECEIVED_SOLACEON_TOWN_EAST_HOUSE_SEAL_CASE, SolaceonTownEastHouse_YouDontHaveASealCase
    CallIfUnset FLAG_UNK_0x0001, SolaceonTownEastHouse_SetVarFormNone
    CheckPartyHasSpecies VAR_RESULT, SPECIES_UNOWN
    GoToIfEq VAR_RESULT, TRUE, SolaceonTownEastHouse_CheckUnownForm
    Message SolaceonTownEastHouse_Text_GiveUnownForSeals
    WaitButton
    CloseMessage
    ReleaseAll
    End

SolaceonTownEastHouse_CheckUnownForm:
    FindPartySlotWithSpecies VAR_0x8004, SPECIES_UNOWN
    GetPartyMonForm VAR_0x8004, VAR_0x8006
    GoToIfEq VAR_MAP_LOCAL_0, VAR_0x8006, SolaceonTownEastHouse_IfYouGivePokemonLikeLettersIllGiveSeals
    GoTo SolaceonTownEastHouse_TryGiveSealsForUnownForm

SolaceonTownEastHouse_TryGiveSealsForUnownForm:
    SetVar VAR_0x8007, 50
    AddVar VAR_0x8007, VAR_0x8006
    CountSealOccurence VAR_0x8007, VAR_RESULT
    GoToIfEq VAR_RESULT, 99, SolaceonTownEastHouse_IfYouGivePokemonLikeLettersIllGiveSeals
    BufferPartyMonSpecies 0, VAR_0x8004
    Message SolaceonTownEastHouse_Text_ThatPokemonLooksJustLikeMySeals
    SetVar VAR_0x8000, 10
    CountSealOccurence VAR_0x8007, VAR_RESULT
    GoToIfLe VAR_RESULT, 89, SolaceonTownEastHouse_GiveSealsForUnownForm
    SubVar VAR_RESULT, 89
    SubVar VAR_0x8000, VAR_RESULT
SolaceonTownEastHouse_GiveSealsForUnownForm:
    GiveOrTakeSeal VAR_0x8007, VAR_0x8000
    SetVar VAR_MAP_LOCAL_0, VAR_0x8006
    SetFlag FLAG_UNK_0x0001
    GoToIfEq VAR_0x8000, 1, SolaceonTownEastHouse_BufferSealNameSingular
    BufferBallSealNamePlural 0, VAR_0x8007
    GoTo SolaceonTownEastHouse_TheSealsWerePutAway

SolaceonTownEastHouse_BufferSealNameSingular:
    BufferBallSealName 0, VAR_0x8007
SolaceonTownEastHouse_TheSealsWerePutAway:
    Message SolaceonTownEastHouse_Text_TheSealsWerePutAway
    WaitButton
    CloseMessage
    ReleaseAll
    End

SolaceonTownEastHouse_IfYouGivePokemonLikeLettersIllGiveSeals:
    Message SolaceonTownEastHouse_Text_GiveUnownForSeals
    WaitButton
    CloseMessage
    ReleaseAll
    End

SolaceonTownEastHouse_SetVarFormNone:
    SetVar VAR_MAP_LOCAL_0, -1
    Return

SolaceonTownEastHouse_YouDontHaveASealCase:
    Message SolaceonTownEastHouse_Text_TalkToMyMom
    WaitButton
    CloseMessage
    ReleaseAll
    End

SolaceonTownEastHouse_PokefanF:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_RECEIVED_SOLACEON_TOWN_EAST_HOUSE_SEAL_CASE, SolaceonTownEastHouse_IllExplainHowSealsWork
    Message SolaceonTownEastHouse_Text_YouDontHaveASealCase
    SetVar VAR_0x8004, ITEM_SEAL_CASE
    SetVar VAR_0x8005, 1
    Common_GiveItemQuantity
    SetFlag FLAG_RECEIVED_SOLACEON_TOWN_EAST_HOUSE_SEAL_CASE
    Call SolaceonTownEastHouse_GiveRandomSeals
    Message SolaceonTownEastHouse_Text_IllExplainHowSealsWork
    WaitButton
    CloseMessage
    ReleaseAll
    End

SolaceonTownEastHouse_IllExplainHowSealsWork:
    Message SolaceonTownEastHouse_Text_IllExplainHowSealsWork
    WaitButton
    CloseMessage
    ReleaseAll
    End

SolaceonTownEastHouse_GiveRandomSeals:
    Message SolaceonTownEastHouse_Text_NextSomeSeals
    GetRandom VAR_0x8007, 6
    AddVar VAR_0x8007, 1
    GiveOrTakeSeal VAR_0x8007, 1
    GetRandom VAR_0x8007, 6
    AddVar VAR_0x8007, 7
    GiveOrTakeSeal VAR_0x8007, 1
    GetRandom VAR_0x8007, 6
    AddVar VAR_0x8007, 7
    GiveOrTakeSeal VAR_0x8007, 1
    GetRandom VAR_0x8007, 4
    AddVar VAR_0x8007, 25
    GiveOrTakeSeal VAR_0x8007, 1
    GetRandom VAR_0x8007, 7
    AddVar VAR_0x8007, 43
    GiveOrTakeSeal VAR_0x8007, 1
    Return

    .balign 4, 0
