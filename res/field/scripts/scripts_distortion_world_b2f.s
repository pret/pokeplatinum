#include "macros/scrcmd.inc"
#include "res/text/bank/distortion_world_b2f.h"

// NOTE: These constants must mirror those in ov9_02249960.c
#define LOCALID_CYNTHIA 128

    ScriptEntry DistortionWorldB2F_OnTransition
    ScriptEntry DistortionWorldB2F_OnFrameFirstEntry
    ScriptEntry DistortionWorldB2F_Cynthia
    ScriptEntryEnd

DistortionWorldB2F_OnTransition:
    InitPersistedMapFeaturesForDistortionWorld
    End

DistortionWorldB2F_OnFrameFirstEntry:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    GoToIfEq VAR_DISTORTION_WORLD_PROGRESS, 5, DistortionWorldB2F_Cynthia
    GetPlayer3DPos VAR_0x8004, VAR_0x8005, VAR_0x8006
    GoToIfEq VAR_0x8005, 232, DistortionWorldB2F_LetsSplitUpY232
    ApplyMovement LOCALID_CYNTHIA, DistortionWorldB2F_Movement_CynthiaFaceSouth
    WaitMovement
    Message DistortionWorldB2F_Text_LetsSplitUp
    CloseMessage
    ApplyMovement LOCALID_CYNTHIA, _00E4
    WaitMovement
    GoTo DistortionWorldB2F_IncreaseProgressVar

DistortionWorldB2F_LetsSplitUpY232:
    ApplyMovement LOCALID_CYNTHIA, DistortionWorldB2F_Movement_CynthiaFaceEast
    WaitMovement
    Message DistortionWorldB2F_Text_LetsSplitUp
    CloseMessage
    ApplyMovement LOCALID_CYNTHIA, _00F8
    ApplyMovement LOCALID_PLAYER, _011C
    WaitMovement
DistortionWorldB2F_IncreaseProgressVar:
    SetVar VAR_DISTORTION_WORLD_PROGRESS, 5
    ReleaseAll
    End

DistortionWorldB2F_Cynthia:
    GetPlayer3DPos VAR_0x8004, VAR_0x8005, VAR_0x8006
    GoToIfEq VAR_0x8005, 231, DistortionWorldB2F_CynthiaFaceEast
    GoToIfEq VAR_0x8005, 232, DistortionWorldB2F_CynthiaFaceSouth
    ApplyMovement LOCALID_CYNTHIA, DistortionWorldB2F_Movement_CynthiaFaceWest
    WaitMovement
    GoTo DistortionWorldB2F_DontNeedToGoTogether

DistortionWorldB2F_CynthiaFaceEast:
    ApplyMovement LOCALID_CYNTHIA, DistortionWorldB2F_Movement_CynthiaFaceEast2
    WaitMovement
    GoTo DistortionWorldB2F_DontNeedToGoTogether

DistortionWorldB2F_CynthiaFaceSouth:
    ApplyMovement LOCALID_CYNTHIA, DistortionWorldB2F_Movement_CynthiaFaceSouth2
    WaitMovement
DistortionWorldB2F_DontNeedToGoTogether:
    Message DistortionWorldB2F_Text_DontNeedToGoTogether
    WaitButton
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
DistortionWorldB2F_Movement_CynthiaFaceSouth:
    FaceSouth
    EndMovement

    .balign 4, 0
_00E4:
    MoveAction_106
    FaceWest
    EndMovement

    .balign 4, 0
DistortionWorldB2F_Movement_CynthiaFaceEast:
    FaceEast
    EndMovement

    .balign 4, 0
_00F8:
    MoveAction_106
    FaceWest
    EndMovement

    .balign 4, 0
DistortionWorldB2F_Movement_CynthiaFaceWest:
    FaceWest
    EndMovement

    .balign 4, 0
DistortionWorldB2F_Movement_CynthiaFaceEast2:
    FaceEast
    EndMovement

    .balign 4, 0
DistortionWorldB2F_Movement_CynthiaFaceSouth2:
    FaceSouth
    EndMovement

    .balign 4, 0
_011C:
    MoveAction_107
    FaceNorth
    EndMovement
