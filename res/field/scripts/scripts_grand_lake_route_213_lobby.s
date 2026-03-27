#include "macros/scrcmd.inc"
#include "res/text/bank/grand_lake_route_213_lobby.h"
#include "res/field/events/events_grand_lake_route_213_lobby.h"


    ScriptEntry GrandLakeRoute213Lobby_OnTransition
    ScriptEntry GrandLakeRoute213Lobby_Policeman
    ScriptEntry GrandLakeRoute213Lobby_AceTrainerF
    ScriptEntry GrandLakeRoute213Lobby_Looker
    ScriptEntryEnd

GrandLakeRoute213Lobby_OnTransition:
    End

GrandLakeRoute213Lobby_Policeman:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message GrandLakeRoute213Lobby_Text_YouMayRest
    CloseMessage
    FadeScreenOut
    WaitFadeScreen
    PlayFanfare SEQ_ASA
    WaitFanfare
    HealParty
    FadeScreenIn
    WaitFadeScreen
    Message GrandLakeRoute213Lobby_Text_RestoredYourPokemon
    WaitButton
    CloseMessage
    ReleaseAll
    End

GrandLakeRoute213Lobby_AceTrainerF:
    NPCMessage GrandLakeRoute213Lobby_Text_HotelIsSoRomantic
    End

GrandLakeRoute213Lobby_Looker:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    GoToIfSet FLAG_TALKED_TO_GRAND_LAKE_ROUTE_213_LOBBY_LOOKER, GrandLakeRoute213Lobby_IWillSearchInside
    SetFlag FLAG_TALKED_TO_GRAND_LAKE_ROUTE_213_LOBBY_LOOKER
    FacePlayer
    Message GrandLakeRoute213Lobby_Text_GoSearchOutside
    WaitButton
    CloseMessage
    ReleaseAll
    End

GrandLakeRoute213Lobby_IWillSearchInside:
    ApplyMovement LOCALID_LOOKER, GrandLakeRoute213Lobby_Movement_LookerFaceEast
    WaitMovement
    Message GrandLakeRoute213Lobby_Text_BraggingIsNotNecessary
    FacePlayer
    Message GrandLakeRoute213Lobby_Text_IWillSearchInside
    WaitButton
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
GrandLakeRoute213Lobby_Movement_LookerFaceEast:
    FaceEast
    EndMovement
