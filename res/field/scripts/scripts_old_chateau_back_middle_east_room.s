#include "macros/scrcmd.inc"
#include "res/field/events/events_old_chateau_back_middle_east_room.h"


    ScriptEntry OldChateauBackMiddleEastRoom_OnTransition
    ScriptEntry OldChateauBackMiddleEastRoom_OnFrameTwinLeave
    ScriptEntryEnd

OldChateauBackMiddleEastRoom_OnTransition:
    CheckShouldShowGhost 25, VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, 1, OldChateauBackMiddleEastRoom_ShowTwin
    SetFlag FLAG_HIDE_OLD_CHATEAU_BACK_MIDDLE_EAST_ROOM_TWIN
    End

OldChateauBackMiddleEastRoom_ShowTwin:
    ClearFlag FLAG_HIDE_OLD_CHATEAU_BACK_MIDDLE_EAST_ROOM_TWIN
    SetVar VAR_OLD_CHATEAU_BACK_MIDDLE_EAST_ROOM_TWIN_STATE, 1
    End

OldChateauBackMiddleEastRoom_OnFrameTwinLeave:
    LockAll
    ApplyMovement LOCALID_TWIN, OldChateauBackMiddleEastRoom_Movement_TwinLeave
    WaitMovement
    SetFlag FLAG_HIDE_OLD_CHATEAU_BACK_MIDDLE_EAST_ROOM_TWIN
    RemoveObject LOCALID_TWIN
    SetVar VAR_OLD_CHATEAU_BACK_MIDDLE_EAST_ROOM_TWIN_STATE, 0
    ReleaseAll
    End

    .balign 4, 0
OldChateauBackMiddleEastRoom_Movement_TwinLeave:
    Delay16
    FaceSouth
    Delay16
    PauseAnimation
    WalkNormalSouth 2
    ResumeAnimation
    SetInvisible
    EndMovement
