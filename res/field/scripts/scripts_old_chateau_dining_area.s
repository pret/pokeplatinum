#include "macros/scrcmd.inc"
#include "res/field/events/events_old_chateau_dining_area.h"


    ScriptEntry OldChateauDiningArea_OnTransition
    ScriptEntry OldChateauDiningArea_OnFrameOldManLeave
    ScriptEntryEnd

OldChateauDiningArea_OnTransition:
    CheckShouldShowGhost 10, VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, 1, OldChateauDiningArea_ShowOldMan
    SetFlag FLAG_HIDE_OLD_CHATEAU_DINING_AREA_OLD_MAN
    End

OldChateauDiningArea_ShowOldMan:
    ClearFlag FLAG_HIDE_OLD_CHATEAU_DINING_AREA_OLD_MAN
    SetVar VAR_OLD_CHATEAU_DINING_AREA_OLD_MAN_STATE, 1
    End

OldChateauDiningArea_OnFrameOldManLeave:
    LockAll
    ApplyMovement LOCALID_PLAYER, OldChateauDiningArea_Movement_PlayerWatchOldManLeave
    ApplyMovement LOCALID_OLD_MAN, OldChateauDiningArea_Movement_OldManLeave
    WaitMovement
    SetFlag FLAG_HIDE_OLD_CHATEAU_DINING_AREA_OLD_MAN
    RemoveObject LOCALID_OLD_MAN
    SetVar VAR_OLD_CHATEAU_DINING_AREA_OLD_MAN_STATE, 0
    ReleaseAll
    End

    .balign 4, 0
OldChateauDiningArea_Movement_PlayerWatchOldManLeave:
    WalkNormalNorth
    Delay32
    FaceWest
    EndMovement

    .balign 4, 0
OldChateauDiningArea_Movement_OldManLeave:
    Delay8
    FaceWest
    Delay16
    PauseAnimation
    WalkNormalWest 10
    ResumeAnimation
    SetInvisible
    EndMovement
