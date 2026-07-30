#include "macros/scrcmd.inc"
#include "res/text/bank/distortion_world_b3f.h"

    ScriptEntry DistortionWorldB3F_OnTransition
    ScriptEntry DistortionWorldB3F_CoordEvent_Cyrus
    ScriptEntryEnd

DistortionWorldB3F_OnTransition:
    InitPersistedMapFeaturesForDistortionWorld
    End

DistortionWorldB3F_CoordEvent_Cyrus:
    LockAll
    AddDistortionWorldMapObject DIST_WORLD_MAP_OBJECT_B3F_CYRUS
    ApplyMovement DIST_WORLD_MAP_OBJECT_B3F_CYRUS, DistortionWorldB3F_Movement_CyrusEnter
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
    ApplyMovement DIST_WORLD_MAP_OBJECT_B3F_CYRUS, DistortionWorldB3F_Movement_CyrusLeave
    WaitMovement
    DeleteDistortionWorldMapObject DIST_WORLD_MAP_OBJECT_B3F_CYRUS
    SetVar VAR_DISTORTION_WORLD_PROGRESS, DIST_WORLD_PROGRESS_TALKED_TO_B3F_CYRUS
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
