#include "macros/scrcmd.inc"
#include "res/text/bank/distortion_world_1f.h"

// NOTE: These constants must mirror those in ov9_02249960.c
#define LOCALID_CYNTHIA 128

    ScriptEntry DistortionWorld1F_OnTransition
    ScriptEntry DistortionWorld1F_Portal
    ScriptEntry DistortionWorld1F_OnFrameFirstEntry
    ScriptEntry DistortionWorld1F_TriggerCynthiaElevator
    ScriptEntry DistortionWorld1F_CynthiaElevator
    ScriptEntryEnd

DistortionWorld1F_OnTransition:
    InitPersistedMapFeaturesForDistortionWorld
    End

DistortionWorld1F_Portal:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    Message DistortionWorld1F_Text_ReturnToSpearPillar
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, DistortionWorld1F_ReturnToSpearPillar
    CloseMessage
    ReleaseAll
    End

DistortionWorld1F_ReturnToSpearPillar:
    BufferPlayerName 0
    Message DistortionWorld1F_Text_PlayerHeadedForSpearPillar
    CloseMessage
    PlaySE SEQ_SE_PL_SYUWA
    SetPartyGiratinaForm GIRATINA_FORM_ALTERED
    FadeScreenOut
    WaitFadeScreen
    Warp MAP_HEADER_SPEAR_PILLAR_DISTORTED, 0, 31, 33, DIR_SOUTH
    FadeScreenIn
    WaitFadeScreen
    End

DistortionWorld1F_OnFrameFirstEntry:
    LockAll
    ApplyMovement LOCALID_PLAYER, DistortionWorld1F_Movement_PlayerWalkWest
    WaitMovement
    ApplyMovement LOCALID_PLAYER, DistortionWorld1F_Movement_PlayerWalkOnSpotEast
    WaitMovement
    AddDistortionWorldMapObject LOCALID_CYNTHIA
    ApplyMovement LOCALID_CYNTHIA, DistortionWorld1F_Movement_CynthiaLookAround
    WaitMovement
    Message DistortionWorld1F_Text_ThisPlace
    CloseMessageWithoutErasing
    ApplyMovement LOCALID_CYNTHIA, DistortionWorld1F_Movement_CynthiaWalkOnSpotSouth
    WaitMovement
    Message DistortionWorld1F_Text_SpaceCalledDistortionWorld
    CloseMessageWithoutErasing
    ApplyMovement LOCALID_CYNTHIA, DistortionWorld1F_Movement_CynthiaWalkOnSpotWest
    WaitMovement
    Message DistortionWorld1F_Text_LetsFindGiratina
    CloseMessage
    ApplyMovement LOCALID_PLAYER, DistortionWorld1F_Movement_PlayerWatchCynthiaWalkSouth
    ApplyMovement LOCALID_CYNTHIA, DistortionWorld1F_Movement_CynthiaWalkSouth
    WaitMovement
    StartDistortionWorldGiratinaShadowEvent 0
    ApplyMovement LOCALID_PLAYER, DistortionWorld1F_Movement_PlayerNoticeGiratina
    ApplyMovement LOCALID_CYNTHIA, DistortionWorld1F_Movement_CynthiaNoticeGiratina
    WaitMovement
    WaitTime 30, VAR_RESULT
    FinishDistortionWorldGiratinaShadowEvent
    Message DistortionWorld1F_Text_ThatWasGiratina
    WaitButton
    CloseMessage
    ApplyMovement LOCALID_PLAYER, DistortionWorld1F_Movement_PlayerWalkOnSpotSouth
    ApplyMovement LOCALID_CYNTHIA, DistortionWorld1F_Movement_CynthiaWalkOnSpotNorth
    WaitMovement
    Message DistortionWorld1F_Text_WeHaveToHurry
    CloseMessage
    ApplyMovement LOCALID_CYNTHIA, DistortionWorld1F_Movement_CynthiaLeave
    WaitMovement
    DeleteDistortionWorldMapObject LOCALID_CYNTHIA
    SetVar VAR_DISTORTION_WORLD_PROGRESS, 1
    ReleaseAll
    End

DistortionWorld1F_TriggerCynthiaElevator:
    LockAll
    Message DistortionWorld1F_Text_SlabMovesIfYouStep
    WaitABPadPress
    CloseMessage
    ReleaseAll
    End

DistortionWorld1F_CynthiaElevator:
    NPCMessage DistortionWorld1F_Text_WhyIsGroundColoredDifferently
    End

    .balign 4, 0
DistortionWorld1F_Movement_PlayerWalkWest:
    WalkNormalWest
    Delay8
    EndMovement

    .balign 4, 0
DistortionWorld1F_Movement_PlayerWalkOnSpotEast:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
DistortionWorld1F_Movement_PlayerWatchCynthiaWalkSouth:
    Delay8
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
DistortionWorld1F_Movement_PlayerNoticeGiratina:
    Delay4
    FaceWest
    EmoteExclamationMark
    FaceEast
    EndMovement

    .balign 4, 0
DistortionWorld1F_Movement_PlayerWalkOnSpotSouth:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
DistortionWorld1F_Movement_CynthiaLookAround:
    WalkOnSpotNormalSouth
    Delay16 2
    WalkOnSpotNormalEast
    Delay8
    WalkOnSpotNormalNorth
    Delay8
    EndMovement

    .balign 4, 0
DistortionWorld1F_Movement_CynthiaWalkOnSpotSouth:
    WalkOnSpotNormalSouth
    Delay8
    EndMovement

    .balign 4, 0
DistortionWorld1F_Movement_CynthiaWalkOnSpotWest:
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
DistortionWorld1F_Movement_CynthiaWalkSouth:
    WalkNormalSouth 2
    EndMovement

    .balign 4, 0
DistortionWorld1F_Movement_CynthiaNoticeGiratina:
    FaceWest
    EmoteExclamationMark
    FaceEast
    EndMovement

    .balign 4, 0
DistortionWorld1F_Movement_CynthiaWalkOnSpotNorth:
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
DistortionWorld1F_Movement_CynthiaLeave:
    WalkNormalWest 3
    WalkNormalSouth 3
    WalkNormalWest 2
    WalkNormalSouth
    WalkNormalWest 6
    EndMovement
