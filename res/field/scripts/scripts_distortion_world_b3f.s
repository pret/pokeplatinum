#include "macros/scrcmd.inc"
#include "res/text/bank/distortion_world_b3f.h"

// NOTE: These constants must mirror those in ov9_02249960.c
#define LOCALID_CYRUS 128

    ScriptEntry DistortionWorldB3F_OnTransition
    ScriptEntry DistortionWorldB3F_TriggerCyrus
    ScriptEntryEnd

DistortionWorldB3F_OnTransition:
    InitPersistedMapFeaturesForDistortionWorld
    End

DistortionWorldB3F_TriggerCyrus:
    LockAll
    AddDistortionWorldMapObject LOCALID_CYRUS
    ApplyMovement LOCALID_CYRUS, DistortionWorldB3F_Movement_CyrusEnter
    WaitMovement
    Message DistortionWorldB3F_Text_DoYouUnderstandGenes
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, DistortionWorldB3F_OfCourseYouWouldnt
    Message DistortionWorldB3F_Text_YouveImpressedMe
    GoTo DistortionWorldB3F_TwoWorldsMustBalance

DistortionWorldB3F_OfCourseYouWouldnt:
    Message DistortionWorldB3F_Text_OfCourseYouWouldnt
DistortionWorldB3F_TwoWorldsMustBalance:
    Message DistortionWorldB3F_Text_TwoWorldsMustBalance
    Message DistortionWorldB3F_Text_DefeatingThatPokemonMatters
    CloseMessage
    ApplyMovement LOCALID_CYRUS, DistortionWorldB3F_Movement_CyrusLeave
    WaitMovement
    DeleteDistortionWorldMapObject LOCALID_CYRUS
    SetVar VAR_DISTORTION_WORLD_PROGRESS, 6
    ReleaseAll
    End

    .balign 4, 0
DistortionWorldB3F_Movement_CyrusEnter:
    WalkNormalNorth 7
    EndMovement

    .balign 4, 0
DistortionWorldB3F_Movement_CyrusLeave:
    WalkNormalSouth 7
    EndMovement
