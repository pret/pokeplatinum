#include "macros/scrcmd.inc"
#include "res/text/bank/spear_pillar_distorted.h"
#include "res/field/events/events_spear_pillar_distorted.h"


    ScriptEntry SpearPillarDistorted_OnFrameAfterWarp
    ScriptEntry SpearPillarDistorted_Cynthia
    ScriptEntry SpearPillarDistorted_Jupiter
    ScriptEntry SpearPillarDistorted_Mars
    ScriptEntry SpearPillarDistorted_GruntM
    ScriptEntry SpearPillarDistorted_GruntF
    ScriptEntry SpearPillarDistorted_RiftDialga
    ScriptEntry SpearPillarDistorted_RiftPalkia
    ScriptEntryEnd

SpearPillarDistorted_OnFrameAfterWarp:
    LockAll
    ClearFlag FLAG_HIDE_SPEAR_PILLAR_DISTORTED_MESPRIT
    AddObject LOCALID_MESPRIT
    HideObject LOCALID_MESPRIT
    SetObjectEventPos LOCALID_CYNTHIA, 32, 34
    SetObjectEventDir LOCALID_CYNTHIA, DIR_NORTH
    SetObjectEventMovementType LOCALID_CYNTHIA, MOVEMENT_TYPE_LOOK_NORTH
    ClearFlag FLAG_HIDE_SPEAR_PILLAR_DISTORTED_CYNTHIA
    AddObject LOCALID_CYNTHIA
    AddFreeCamera 30, 30
    ApplyFreeCameraMovement SpearPillarDistorted_Movement_CameraMoveNorthEast
    WaitMovement
    FadeScreenIn
    WaitFadeScreen
    SetVar VAR_SPEAR_PILLAR_DISTORTED_STATE, 2
    ApplyMovement LOCALID_CYNTHIA, SpearPillarDistorted_Movement_CynthiaWalkNorth
    WaitMovement
    Message SpearPillarDistorted_Text_No
    CloseMessage
    ScrCmd_20D 4, VAR_RESULT
    WaitTime 30, VAR_RESULT
SpearPillarDistorted_WaitThenAskEnterDistortionWorld:
    ScrCmd_20D 6, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, SpearPillarDistorted_WaitThenAskEnterDistortionWorld
    RemoveObject LOCALID_MESPRIT
    ApplyFreeCameraMovement SpearPillarDistorted_Movement_CameraMoveSouthWest
    WaitMovement
    RestoreCamera
    ApplyMovement LOCALID_PLAYER, SpearPillarDistorted_Movement_PlayerWalkOnSpotEast
    ApplyMovement LOCALID_CYNTHIA, SpearPillarDistorted_Movement_CynthiaWalkOnSpotWest
    WaitMovement
    Message SpearPillarDistorted_Text_SorryITookSoLong
    CloseMessage
    ApplyMovement LOCALID_CYNTHIA, SpearPillarDistorted_Movement_CynthiaLookAround
    WaitMovement
    Message SpearPillarDistorted_Text_WorldWillBeDestroyed
    SetFlag FLAG_HIDE_GALACTIC_HQ_CONTROL_ROOM_CHARON
    GoTo SpearPillarDistorted_AskEnterDistortionWorld
    End

SpearPillarDistorted_AskEnterDistortionWorld:
    Message SpearPillarDistorted_Text_AreYouReady
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, SpearPillarDistorted_EnterDistortionWorld
    GoToIfEq VAR_RESULT, MENU_NO, SpearPillarDistorted_IllWaitHere
    End

SpearPillarDistorted_EnterDistortionWorld:
    Message SpearPillarDistorted_Text_WeHaveToHurry
    CloseMessage
    FadeScreenOut
    WaitFadeScreen
    DoDWWarp
    ReturnToField
    SetPartyGiratinaForm GIRATINA_FORM_ORIGIN
    Warp MAP_HEADER_DISTORTION_WORLD_1F, 0, 55, 40, 1
    FadeScreenIn
    WaitFadeScreen
    End

SpearPillarDistorted_IllWaitHere:
    Message SpearPillarDistorted_Text_IllWaitHere
    WaitButton
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
SpearPillarDistorted_Movement_PlayerWalkOnSpotEast:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
SpearPillarDistorted_Movement_CynthiaWalkNorth:
    WalkNormalNorth 4
    EndMovement

    .balign 4, 0
SpearPillarDistorted_Movement_CynthiaWalkOnSpotWest:
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
SpearPillarDistorted_Movement_CynthiaLookAround:
    WalkOnSpotNormalEast
    Delay8 2
    WalkOnSpotNormalSouth
    Delay8
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
SpearPillarDistorted_Movement_CameraMoveNorthEast:
    WalkNormalEast
    WalkNormalNorth 5
    EndMovement

    .balign 4, 0
SpearPillarDistorted_Movement_CameraMoveSouthWest:
    WalkNormalSouth 5
    WalkNormalWest
    EndMovement

SpearPillarDistorted_Cynthia:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message SpearPillarDistorted_Text_AreYouReady
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, SpearPillarDistorted_EnterDistortionWorld
    GoToIfEq VAR_RESULT, MENU_NO, SpearPillarDistorted_IllWaitHere2
    End

SpearPillarDistorted_IllWaitHere2:
    Message SpearPillarDistorted_Text_IllWaitHere
    WaitButton
    CloseMessage
    ReleaseAll
    End

SpearPillarDistorted_Jupiter:
    NPCMessage SpearPillarDistorted_Text_WhatWasIt
    End

SpearPillarDistorted_Mars:
    NPCMessage SpearPillarDistorted_Text_WhereDidHeGo
    End

SpearPillarDistorted_GruntM:
    NPCMessage SpearPillarDistorted_Text_CanOnlyPanicAimlessly
    End

SpearPillarDistorted_GruntF:
    NPCMessage SpearPillarDistorted_Text_CanOnlyPanicAimlessly
    End

SpearPillarDistorted_RiftDialga:
    EventMessage SpearPillarDistorted_Text_TimeEmanatesFromRift
    End

SpearPillarDistorted_RiftPalkia:
    EventMessage SpearPillarDistorted_Text_SpaceEmanatesFromRift
    End
