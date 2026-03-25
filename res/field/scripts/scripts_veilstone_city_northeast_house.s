#include "macros/scrcmd.inc"
#include "res/text/bank/veilstone_city_northeast_house.h"


    ScriptEntry VeilstoneCityNortheastHouse_PokefanM
    ScriptEntry VeilstoneCityNortheastHouse_PokefanF
    ScriptEntryEnd

VeilstoneCityNortheastHouse_PokefanM:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_RECEIVED_VEILSTONE_CITY_NORTHEAST_HOUSE_PORYGON, VeilstoneCityNortheastHouse_GalacticsBuildingBugsMe
    GoToIfSet FLAG_TALKED_TO_VEILSTONE_CITY_NORTHEAST_HOUSE_POKEFAN_M, VeilstoneCityNortheastHouse_CanYouTakePoryon
    SetFlag FLAG_TALKED_TO_VEILSTONE_CITY_NORTHEAST_HOUSE_POKEFAN_M
    Message VeilstoneCityNortheastHouse_Text_ImNoTrainerTakePorygon
    GoTo VeilstoneCityNortheastHouse_AcceptPorygonYesNo
    End

VeilstoneCityNortheastHouse_CanYouTakePoryon:
    Message VeilstoneCityNortheastHouse_Text_CanYouTakePorygon
    GoTo VeilstoneCityNortheastHouse_AcceptPorygonYesNo
    End

VeilstoneCityNortheastHouse_AcceptPorygonYesNo:
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, VeilstoneCityNortheastHouse_AcceptPorygon
    GoTo VeilstoneCityNortheastHouse_DontAcceptPorygon
    End

VeilstoneCityNortheastHouse_AcceptPorygon:
    GetPartyCount VAR_RESULT
    GoToIfEq VAR_RESULT, 6, VeilstoneCityNortheastHouse_PartyIsFull
    Message VeilstoneCityNortheastHouse_Text_Excellent
    PlayFanfare SEQ_FANFA4
    BufferPlayerName 0
    Message VeilstoneCityNortheastHouse_Text_PlayerAcceptedThePorygon
    WaitFanfare
    GivePokemon SPECIES_PORYGON, 25, ITEM_NONE, VAR_RESULT
    SetFlag FLAG_RECEIVED_VEILSTONE_CITY_NORTHEAST_HOUSE_PORYGON
    Message VeilstoneCityNortheastHouse_Text_AskNicknamePorygon
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, VeilstoneCityNortheastHouse_NicknamePorygon
    GoToIfEq VAR_RESULT, MENU_NO, VeilstoneCityNortheastHouse_DontNicknamePorygon
    End

VeilstoneCityNortheastHouse_NicknamePorygon:
    CloseMessage
    GetPartyCount VAR_MAP_LOCAL_0
    SubVar VAR_MAP_LOCAL_0, 1
    FadeScreenOut
    WaitFadeScreen
    OpenPokemonNamingScreen VAR_MAP_LOCAL_0, VAR_RESULT
    CallIfNe VAR_RESULT, 1, VeilstoneCityNortheastHouse_IncrementRecordPokemonNicknamed
    FadeScreenIn
    WaitFadeScreen
    ReleaseAll
    End

VeilstoneCityNortheastHouse_IncrementRecordPokemonNicknamed:
    IncrementGameRecord RECORD_POKEMON_NICKNAMED
    Return

VeilstoneCityNortheastHouse_DontNicknamePorygon:
    CloseMessage
    ReleaseAll
    End

VeilstoneCityNortheastHouse_PartyIsFull:
    Message VeilstoneCityNortheastHouse_Text_AlreadyWholeTeam
    GoTo VeilstoneCityNortheastHouse_PokefanMEnd
    End

VeilstoneCityNortheastHouse_DontAcceptPorygon:
    Message VeilstoneCityNortheastHouse_Text_IsThatSo
    GoTo VeilstoneCityNortheastHouse_PokefanMEnd
    End

VeilstoneCityNortheastHouse_GalacticsBuildingBugsMe:
    Message VeilstoneCityNortheastHouse_Text_GalacticsBuildingBugsMe
    GoTo VeilstoneCityNortheastHouse_PokefanMEnd
    End

VeilstoneCityNortheastHouse_PokefanMEnd:
    WaitButton
    CloseMessage
    ReleaseAll
    End

VeilstoneCityNortheastHouse_PokefanF:
    NPCMessage VeilstoneCityNortheastHouse_Text_IDontUnderstandTheirIdea
    End

    .balign 4, 0
