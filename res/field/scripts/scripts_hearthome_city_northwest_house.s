#include "macros/scrcmd.inc"
#include "res/text/bank/hearthome_city_northwest_house.h"


    ScriptEntry HearthomeCityNorthwestHouse_Bebe
    ScriptEntryEnd

HearthomeCityNorthwestHouse_Bebe:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_RECEIVED_HEARTHOME_CITY_NORTHWEST_HOUSE_EEVEE, HearthomeCityNorthwestHouse_AlreadyReceivedEevee
    GoToIfSet FLAG_MET_BEBE, HearthomeCityNorthwestHouse_SoDoYouWantEevee
    SetFlag FLAG_MET_BEBE
    Message HearthomeCityNorthwestHouse_Text_MyNamesBebeDoYouWantEevee
    GoTo HearthomeCityNorthwestHouse_AcceptEeveeYesNoMenu
    End

HearthomeCityNorthwestHouse_SoDoYouWantEevee:
    Message HearthomeCityNorthwestHouse_Text_SoDoYouWantEevee
    GoTo HearthomeCityNorthwestHouse_AcceptEeveeYesNoMenu
    End

HearthomeCityNorthwestHouse_AcceptEeveeYesNoMenu:
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, HearthomeCityNorthwestHouse_AcceptEevee
    GoTo HearthomeCityNorthwestHouse_DeclineEevee
    End

HearthomeCityNorthwestHouse_AcceptEevee:
    GetPartyCount VAR_RESULT
    GoToIfEq VAR_RESULT, 6, HearthomeCityNorthwestHouse_PartyIsFull
    Message HearthomeCityNorthwestHouse_Text_PleaseBeGoodToIt
    PlaySound SEQ_FANFA4
    BufferPlayerName 0
    Message HearthomeCityNorthwestHouse_Text_PlayerAcceptedTheEevee
    WaitSound
    GivePokemon SPECIES_EEVEE, 20, ITEM_NONE, VAR_RESULT
    SetFlag FLAG_RECEIVED_HEARTHOME_CITY_NORTHWEST_HOUSE_EEVEE
    Message HearthomeCityNorthwestHouse_Text_WouldYouLikeToNicknameEevee
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, HearthomeCityNorthwestHouse_GiveNickname
    GoToIfEq VAR_RESULT, MENU_NO, HearthomeCityNorthwestHouse_DontGiveNickname
    End

HearthomeCityNorthwestHouse_GiveNickname:
    CloseMessage
    GetPartyCount VAR_MAP_LOCAL_0
    SubVar VAR_MAP_LOCAL_0, 1
    FadeScreenOut
    WaitFadeScreen
    OpenPokemonNamingScreen VAR_MAP_LOCAL_0, VAR_RESULT
    CallIfNe VAR_RESULT, 1, HearthomeCityNorthwestHouse_IncrementRecordPokemonNicknamed
    FadeScreenIn
    WaitFadeScreen
    ReleaseAll
    End

HearthomeCityNorthwestHouse_IncrementRecordPokemonNicknamed:
    IncrementGameRecord RECORD_POKEMON_NICKNAMED
    Return

HearthomeCityNorthwestHouse_DontGiveNickname:
    CloseMessage
    ReleaseAll
    End

HearthomeCityNorthwestHouse_PartyIsFull:
    Message HearthomeCityNorthwestHouse_Text_YouCantTakeAnyMorePokemon
    WaitButton
    CloseMessage
    ReleaseAll
    End

HearthomeCityNorthwestHouse_DeclineEevee:
    Message HearthomeCityNorthwestHouse_Text_GuessIllRaiseItMyself
    WaitButton
    CloseMessage
    ReleaseAll
    End

HearthomeCityNorthwestHouse_AlreadyReceivedEevee:
    GetNationalDexEnabled VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, HearthomeCityNorthwestHouse_NowThatsANationalDex
    Message HearthomeCityNorthwestHouse_Text_BillDevelopedTheBasicStorageSystem
    WaitButton
    CloseMessage
    ReleaseAll
    End

HearthomeCityNorthwestHouse_NowThatsANationalDex:
    Message HearthomeCityNorthwestHouse_Text_NowThatsANationalDex
    WaitButton
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
