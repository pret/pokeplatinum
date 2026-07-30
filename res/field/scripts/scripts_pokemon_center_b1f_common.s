#include "macros/scrcmd.inc"
#include "res/text/bank/pokemon_center_b1f_common.h"
#include "res/text/bank/menu_entries.h"


    ScriptEntry PokemonCenterB1FCommon_OnFrame_ReceivePalPad
    ScriptEntry PokemonCenterB1FCommon_AttendantInfo
    ScriptEntry PokemonCenterB1FCommon_AttendantWiFiClub
    ScriptEntry PokemonCenterB1FCommon_OnLoad
    ScriptEntry PokemonCenterB1FCommon_AttendantWifiPlaza
    ScriptEntry PokemonCenterB1FCommon_OnFrame_ExitWiFiClub
    ScriptEntryEnd

PokemonCenterB1FCommon_OnFrame_ReceivePalPad:
    LockAll
    Message PokemonCenterB1FCommon_Text_HelloRightThisWay
    CloseMessage
    ApplyMovement LOCALID_PLAYER, PokemonCenterB1FCommon_Movement_PlayerWalkToAttendantEast
    WaitMovement
    Message PokemonCenterB1FCommon_Text_GuideToWiFiClub
    SetVar VAR_0x8004, ITEM_PAL_PAD
    SetVar VAR_0x8005, 1
    Common_GiveItemQuantity
    GoTo PokemonCenterB1FCommon_ExplainPalPad
    End

PokemonCenterB1FCommon_ExplainPalPad:
    Message PokemonCenterB1FCommon_Text_ExplainPalPad
    InitGlobalTextMenu 31, 13, 0, VAR_RESULT
    SetMenuXOriginToRight
    AddMenuEntryImm MenuEntries_Text_PalPadInfo_RegisterAFriend, 0
    AddMenuEntryImm MenuEntries_Text_PalPadInfo_Understood, 1
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, PokemonCenterB1FCommon_ExplainPalPadRegisterAFriend
    GoToIfEq VAR_0x8008, 1, PokemonCenterB1FCommon_ReceivePalPadEnd
    GoTo PokemonCenterB1FCommon_ReceivePalPadEnd
    End

PokemonCenterB1FCommon_ExplainPalPadRegisterAFriend:
    Message PokemonCenterB1FCommon_Text_ExplainRegisterAFriend
    InitGlobalTextMenu 31, 13, 0, VAR_RESULT
    SetMenuXOriginToRight
    AddMenuEntryImm MenuEntries_Text_PalPadInfo_TellMeAgain, 0
    AddMenuEntryImm MenuEntries_Text_PalPadInfo_Understood, 1
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, PokemonCenterB1FCommon_ExplainPalPadRegisterAFriend
    GoToIfEq VAR_0x8008, 1, PokemonCenterB1FCommon_ReceivePalPadEnd
    GoTo PokemonCenterB1FCommon_ReceivePalPadEnd
    End

PokemonCenterB1FCommon_ReceivePalPadEnd:
    SetVar VAR_VISITED_POKEMON_CENTER_B1F, 1
    Message PokemonCenterB1FCommon_Text_EnjoyNintendoWFC
    WaitButton
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
PokemonCenterB1FCommon_Movement_PlayerWalkToAttendantEast:
    WalkOnSpotNormalNorth
    Delay8 2
    WalkNormalNorth 4
    WalkNormalWest
    FaceNorth
    Delay8 2
    EndMovement

PokemonCenterB1FCommon_AttendantInfo:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message PokemonCenterB1FCommon_Text_MayIHelpWithAnything
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, PokemonCenterB1FCommon_ExplainWiFiClub
    GoTo PokemonCenterB1FCommon_EnjoyNintendoWFC
    End

PokemonCenterB1FCommon_EnjoyNintendoWFC:
    Message PokemonCenterB1FCommon_Text_EnjoyNintendoWFC
    WaitButton
    CloseMessage
    ReleaseAll
    End

PokemonCenterB1FCommon_ExplainWiFiClub:
    Message PokemonCenterB1FCommon_Text_ExplainWiFiClub
    InitGlobalTextMenu 31, 13, 0, VAR_RESULT
    SetMenuXOriginToRight
    AddMenuEntryImm MenuEntries_Text_PalPadInfo_RegisterAFriend, 0
    AddMenuEntryImm MenuEntries_Text_PalPadInfo_Understood, 1
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, PokemonCenterB1FCommon_ExplainRegisterAFriend
    GoToIfEq VAR_0x8008, 1, PokemonCenterB1FCommon_EnjoyNintendoWFC
    GoTo PokemonCenterB1FCommon_EnjoyNintendoWFC
    End

PokemonCenterB1FCommon_ExplainRegisterAFriend:
    Message PokemonCenterB1FCommon_Text_ExplainRegisterAFriend
    InitGlobalTextMenu 31, 13, 0, VAR_RESULT
    SetMenuXOriginToRight
    AddMenuEntryImm MenuEntries_Text_PalPadInfo_TellMeAgain, 0
    AddMenuEntryImm MenuEntries_Text_PalPadInfo_Understood, 1
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, PokemonCenterB1FCommon_ExplainRegisterAFriend
    GoToIfEq VAR_0x8008, 1, PokemonCenterB1FCommon_EnjoyNintendoWFC
    GoTo PokemonCenterB1FCommon_EnjoyNintendoWFC
    End

PokemonCenterB1FCommon_AttendantWiFiClub:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CheckPartyHasBadEgg VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, PokemonCenterB1FCommon_HasBadEgg
    GoTo PokemonCenterB1FCommon_WiFiClubMenu
    End

PokemonCenterB1FCommon_WiFiClubMenu:
    Message PokemonCenterB1FCommon_Text_WiFiClubUseNintendoWFC
    InitLocalTextMenu 31, 11, 0, VAR_RESULT
    SetMenuXOriginToRight
    AddMenuEntryImm PokemonCenterB1FCommon_Text_GoToWiFiClub, 0
    AddMenuEntryImm PokemonCenterB1FCommon_Text_InfoWiFiClub, 1
    AddMenuEntryImm PokemonCenterB1FCommon_Text_ExitWiFiClub, 2
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, PokemonCenterB1FCommon_CheckFriendsToEnterWiFiClub
    GoToIfEq VAR_0x8008, 1, PokemonCenterB1FCommon_WiFiClubInfo
    GoTo PokemonCenterB1FCommon_PleaseComeAgain
    End

PokemonCenterB1FCommon_WiFiClubInfo:
    Message PokemonCenterB1FCommon_Text_WiFiClubInfo
    GoTo PokemonCenterB1FCommon_WiFiClubMenu
    End

PokemonCenterB1FCommon_CheckFriendsToEnterWiFiClub:
    GetWiFListValidFriendsCount VAR_RESULT
    GoToIfEq VAR_RESULT, 0, PokemonCenterB1FCommon_NoFriendsCheckValidLogin
    GoTo PokemonCenterB1FCommon_TryEnterWiFiClub
    End

PokemonCenterB1FCommon_NoFriendsCheckValidLogin:
    CheckHasWiFiListValidLogin VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, PokemonCenterB1FCommon_NoRegisteredFriends
    GoTo PokemonCenterB1FCommon_NoFriendsAskGetAFriendCode
    End

PokemonCenterB1FCommon_NoFriendsAskGetAFriendCode:
    Message PokemonCenterB1FCommon_Text_NoFriendsGetAFriendCode
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, PokemonCenterB1FCommon_TryEnterWiFiClub
    GoTo PokemonCenterB1FCommon_PleaseComeAgain
    End

PokemonCenterB1FCommon_NoRegisteredFriends:
    Message PokemonCenterB1FCommon_Text_NoRegisteredFriends
    WaitButton
    CloseMessage
    ReleaseAll
    End

PokemonCenterB1FCommon_PleaseComeAgain:
    Message PokemonCenterB1FCommon_Text_PleaseComeAgain
    WaitButton
    CloseMessage
    ReleaseAll
    End

PokemonCenterB1FCommon_TryEnterWiFiClub:
    TryRevertPartyPokemonForms VAR_RESULT
    GoToIfEq VAR_RESULT, 0xFF, PokemonCenterB1FCommon_GriseousOrbCouldNotBeRemoved
    HealParty
    Common_SaveGame
    SetVar VAR_RESULT, VAR_MAP_LOCAL_0x00
    GoToIfEq VAR_RESULT, 1, PokemonCenterB1FCommon_EnterWiFiClub
    GoTo PokemonCenterB1FCommon_PleaseComeAgain
    End

PokemonCenterB1FCommon_GriseousOrbCouldNotBeRemoved:
    Common_GriseousOrbCouldNotBeRemoved
    End

PokemonCenterB1FCommon_EnterWiFiClub:
    Message PokemonCenterB1FCommon_Text_RightThisWay
    CloseMessage
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    ApplyMovement LOCALID_PLAYER, PokemonCenterB1FCommon_Movement_PlayerWalkEastToGate
    WaitMovement
    GoTo PokemonCenterB1FCommon_PlayerEnterWiFiClub
    End

PokemonCenterB1FCommon_PlayerEnterWiFiClub:
    LoadDoorAnimation 0, 0, 9, 5, ANIMATION_TAG_DOOR_1
    Call PokemonCenterB1FCommon_DoorOpenAnimation
    ApplyMovement LOCALID_PLAYER, PokemonCenterB1FCommon_Movement_PlayerEnterThroughGate
    WaitMovement
    Call PokemonCenterB1FCommon_DoorCloseAnimation
    ApplyMovement LOCALID_PLAYER, PokemonCenterB1FCommon_Movement_PlayerWalkToDoor
    WaitMovement
    LoadDoorAnimation 0, 0, 9, 2, ANIMATION_TAG_DOOR_1
    Call PokemonCenterB1FCommon_DoorOpenAnimation
    ApplyMovement LOCALID_PLAYER, PokemonCenterB1FCommon_Movement_PlayerEnterWiFiClub
    WaitMovement
    Call PokemonCenterB1FCommon_DoorCloseAnimation
    GoTo PokemonCenterB1FCommon_DoWiFiClub
    End

PokemonCenterB1FCommon_DoorOpenAnimation:
    PlayDoorOpenAnimation ANIMATION_TAG_DOOR_1
    WaitForAnimation ANIMATION_TAG_DOOR_1
    Return

PokemonCenterB1FCommon_DoorCloseAnimation:
    PlayDoorCloseAnimation ANIMATION_TAG_DOOR_1
    WaitForAnimation ANIMATION_TAG_DOOR_1
    UnloadAnimation ANIMATION_TAG_DOOR_1
    Return

PokemonCenterB1FCommon_DoWiFiClub:
    FadeScreenOut
    WaitFadeScreen
    WaitForTransition
    GetWiFListValidFriendsCount VAR_RESULT
    GoToIfEq VAR_RESULT, 0, PokemonCenterB1FCommon_DoWiFiClubNoFriends
    ScrCmd_0A3
    GoTo PokemonCenterB1FCommon_ReturnToPokemonCenter

PokemonCenterB1FCommon_DoWiFiClubNoFriends:
    ScrCmd_0A3
PokemonCenterB1FCommon_ReturnToPokemonCenter:
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    LoadDoorAnimation 0, 0, 8, 2, ANIMATION_TAG_DOOR_1
    Call PokemonCenterB1FCommon_DoorOpenAnimation
    ApplyMovement LOCALID_PLAYER, PokemonCenterB1FCommon_Movement_PlayerExitWiFiClub
    WaitMovement
    Call PokemonCenterB1FCommon_DoorCloseAnimation
    ApplyMovement LOCALID_PLAYER, PokemonCenterB1FCommon_Movement_PlayerWalkSouthToGate
    WaitMovement
    LoadDoorAnimation 0, 0, 8, 5, ANIMATION_TAG_DOOR_1
    Call PokemonCenterB1FCommon_DoorOpenAnimation
    ApplyMovement LOCALID_PLAYER, PokemonCenterB1FCommon_Movement_PlayerExitThroughGate
    WaitMovement
    Call PokemonCenterB1FCommon_DoorCloseAnimation
    End

    .balign 4, 0
PokemonCenterB1FCommon_Movement_PlayerWalkEastToGate:
    WalkNormalEast
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
PokemonCenterB1FCommon_Movement_PlayerEnterThroughGate:
    WalkNormalNorth 2
    EndMovement

    .balign 4, 0
PokemonCenterB1FCommon_Movement_PlayerWalkToDoor:
    WalkNormalNorth
    EndMovement

    .balign 4, 0
PokemonCenterB1FCommon_Movement_PlayerEnterWiFiClub:
    WalkNormalNorth
    SetInvisible
    EndMovement

    .balign 4, 0
PokemonCenterB1FCommon_Movement_PlayerEnterWiFiPlaza:
    WalkNormalNorth 2
    SetInvisible
    EndMovement

    .balign 4, 0
PokemonCenterB1FCommon_Movement_PlayerExitWiFiClub:
    FaceSouth
    SetVisible
    WalkNormalSouth
    EndMovement

    .balign 4, 0
PokemonCenterB1FCommon_Movement_PlayerWalkSouthToGate:
    WalkNormalSouth
    EndMovement

    .balign 4, 0
PokemonCenterB1FCommon_Movement_PlayerExitThroughGate:
    WalkNormalSouth 2
    EndMovement

    .balign 4, 0
PokemonCenterB1FCommon_Movement_AttendantWalkOnSpotEast:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
PokemonCenterB1FCommon_Movement_AttendantWalkToDoor:
    WalkNormalNorth
    WalkNormalEast
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
PokemonCenterB1FCommon_Movement_AttendantEnterWiFiPlaza:
    WalkNormalNorth
    SetInvisible
    EndMovement

PokemonCenterB1FCommon_HasBadEgg:
    CallCommonScript 0x2338
    WaitButton
    CloseMessage
    ReleaseAll
    End

PokemonCenterB1FCommon_OnLoad:
    Dummy1F9 VAR_BATTLE_FACTORY_CHALLENGE_TYPE
    SetVar VAR_BATTLE_TOWER_CORRIDOR_MULTI_LOAD_ACTION, 0
    SetVar VAR_BATTLE_TOWER_MULTI_BATTLE_ROOM_LOAD_ACTION, 0
    SetVar VAR_BATTLE_FACTORY_CHALLENGE_TYPE, 0
    SetVar VAR_BATTLE_FACTORY_CHALLENGE_LEVEL, 0
    SetVar VAR_BATTLE_CASTLE_CHALLENGE_TYPE, 0
    SetVar VAR_BATTLE_HALL_CHALLENGE_TYPE, 0
    SetVar VAR_BATTLE_ARCADE_CHALLENGE_TYPE, 0
    SetVar VAR_BATTLE_TOWER_LOBBY_LOAD_ACTION, 0
    SetVar VAR_BATTLE_FACTORY_LOBBY_LOAD_ACTION, 0
    SetVar VAR_BATTLE_CASTLE_LOBBY_LOAD_ACTION, 0
    SetVar VAR_BATTLE_HALL_LOBBY_LOAD_ACTION, 0
    SetVar VAR_BATTLE_ARCADE_LOBBY_LOAD_ACTION, 0
    Dummy1F9 VAR_BATTLE_FACTORY_CHALLENGE_TYPE
    End

PokemonCenterB1FCommon_AttendantWifiPlaza:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CheckNoWiFiPlazaCooldown VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, PokemonCenterB1FCommon_PleaseComeBackLater
    GetCurrentMapID VAR_WIFI_PLAZA_RETURN_WARP_ID
    SetVar VAR_WIFI_PLAZA_ATTENDANT_ID, VAR_LAST_TALKED
    Message PokemonCenterB1FCommon_Text_WiFiPlazaUseNintendoWFC
    GoTo PokemonCenterB1FCommon_WiFiPlazaMenu
    End

PokemonCenterB1FCommon_PleaseComeBackLater:
    Message PokemonCenterB1FCommon_Text_PleaseComeBackLater
    GoTo PokemonCenterB1FCommon_AttendantWiFiPlazaEnd
    End

PokemonCenterB1FCommon_WiFiPlazaMenu:
    InitLocalTextMenu 31, 11, 0, VAR_RESULT
    SetMenuXOriginToRight
    AddMenuEntryImm PokemonCenterB1FCommon_Text_GoToWiFiPlaza, 0
    AddMenuEntryImm PokemonCenterB1FCommon_Text_InfoWiFiPlaza, 1
    AddMenuEntryImm PokemonCenterB1FCommon_Text_ExitWiFiPlaza, 2
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, PokemonCenterB1FCommon_GoToWiFiPlaza
    GoToIfEq VAR_0x8008, 1, PokemonCenterB1FCommon_WiFiPlazaInfo
    GoTo PokemonCenterB1FCommon_WiFiPlazaExit
    End

PokemonCenterB1FCommon_WiFiPlazaExit:
    Message PokemonCenterB1FCommon_Text_LookForwardToNextVisit
    GoTo PokemonCenterB1FCommon_AttendantWiFiPlazaEnd
    End

PokemonCenterB1FCommon_AttendantWiFiPlazaEnd:
    WaitButton
    CloseMessage
    ReleaseAll
    End

PokemonCenterB1FCommon_WiFiPlazaInfo:
    Message PokemonCenterB1FCommon_Text_WiFiPlazaInfo
    GoTo PokemonCenterB1FCommon_WiFiPlazaMenu
    End

PokemonCenterB1FCommon_GoToWiFiPlaza:
    HealParty
    Common_SaveGame
    SetVar VAR_RESULT, VAR_MAP_LOCAL_0x00
    GoToIfEq VAR_RESULT, 0, PokemonCenterB1FCommon_WiFiPlazaExit
    Message PokemonCenterB1FCommon_Text_PleaseEnterThisWay
    CloseMessage
    ApplyMovement LOCALID_PLAYER, PokemonCenterB1FCommon_Movement_PlayerWalkEastToGate
    WaitMovement
    LoadDoorAnimation 0, 0, 5, 5, ANIMATION_TAG_DOOR_1
    Call PokemonCenterB1FCommon_DoorOpenAnimation
    ApplyMovement VAR_LAST_TALKED, PokemonCenterB1FCommon_Movement_AttendantWalkOnSpotEast
    ApplyMovement LOCALID_PLAYER, PokemonCenterB1FCommon_Movement_PlayerEnterThroughGate
    WaitMovement
    Call PokemonCenterB1FCommon_DoorCloseAnimation
    ApplyMovement VAR_LAST_TALKED, PokemonCenterB1FCommon_Movement_AttendantWalkToDoor
    WaitMovement
    LoadDoorAnimation 0, 0, 5, 2, ANIMATION_TAG_DOOR_1
    Call PokemonCenterB1FCommon_DoorOpenAnimation
    ApplyMovement LOCALID_PLAYER, PokemonCenterB1FCommon_Movement_PlayerEnterWiFiPlaza
    ApplyMovement VAR_LAST_TALKED, PokemonCenterB1FCommon_Movement_AttendantEnterWiFiPlaza
    WaitMovement
    Call PokemonCenterB1FCommon_DoorCloseAnimation
    SetVar VAR_MAP_LOCAL_0x03, 0
    FadeScreenOut
    WaitFadeScreen
    Warp MAP_HEADER_WIFI_PLAZA_ENTRANCE, 20, 11, DIR_NORTH
    FadeScreenIn
    WaitFadeScreen
    End

PokemonCenterB1FCommon_Unused:
    FadeScreenOut
    WaitFadeScreen
    WaitForTransition
    ScrCmd_0B3 VAR_RESULT
    SetVar VAR_0x8004, VAR_RESULT
    ScrCmd_2F7 VAR_0x8004
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    LoadDoorAnimation 0, 0, 5, 2, ANIMATION_TAG_DOOR_1
    Call PokemonCenterB1FCommon_DoorOpenAnimation
    ApplyMovement LOCALID_PLAYER, PokemonCenterB1FCommon_Movement_PlayerExitWiFiClub
    WaitMovement
    Call PokemonCenterB1FCommon_DoorCloseAnimation
    ApplyMovement LOCALID_PLAYER, PokemonCenterB1FCommon_Movement_PlayerWalkSouthToGate
    WaitMovement
    LoadDoorAnimation 0, 0, 5, 5, ANIMATION_TAG_DOOR_1
    Call PokemonCenterB1FCommon_DoorOpenAnimation
    ApplyMovement LOCALID_PLAYER, PokemonCenterB1FCommon_Movement_PlayerExitThroughGate
    WaitMovement
    Call PokemonCenterB1FCommon_DoorCloseAnimation
    ReleaseAll
    End

PokemonCenterB1FCommon_OnFrame_ExitWiFiClub:
    LockAll
    LoadDoorAnimation 0, 0, 5, 2, ANIMATION_TAG_DOOR_1
    Call PokemonCenterB1FCommon_DoorOpenAnimation
    ApplyMovement LOCALID_PLAYER, PokemonCenterB1FCommon_Movement_PlayerExitWiFiClub
    WaitMovement
    Call PokemonCenterB1FCommon_DoorCloseAnimation
    ApplyMovement LOCALID_PLAYER, PokemonCenterB1FCommon_Movement_PlayerWalkSouthToGate
    WaitMovement
    LoadDoorAnimation 0, 0, 5, 5, ANIMATION_TAG_DOOR_1
    Call PokemonCenterB1FCommon_DoorOpenAnimation
    ApplyMovement LOCALID_PLAYER, PokemonCenterB1FCommon_Movement_PlayerExitThroughGate
    WaitMovement
    Call PokemonCenterB1FCommon_DoorCloseAnimation
    SetVar VAR_ENTERED_WIFI_PLAZA, 0
    ReleaseAll
    End
