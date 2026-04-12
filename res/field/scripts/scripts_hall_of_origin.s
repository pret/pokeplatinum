#include "macros/scrcmd.inc"
#include "generated/distribution_events.h"
#include "res/text/bank/hall_of_origin.h"
#include "res/field/events/events_hall_of_origin.h"


    ScriptEntry HallOfOrigin_OnLoad
    ScriptEntry HallOfOrigin_TriggerArceus
    ScriptEntry HallOfOrigin_OnTransition
    ScriptEntry HallOfOrigin_TriggerArceus
    ScriptEntryEnd

HallOfOrigin_OnTransition:
    CheckDistributionEvent DISTRIBUTION_EVENT_ARCEUS, VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, FALSE, HallOfOrigin_HideArceus
    GoToIfSet FLAG_CAUGHT_ARCEUS, HallOfOrigin_HideArceus
    ClearFlag FLAG_HIDE_HALL_OF_ORIGIN_ARCEUS
    End

HallOfOrigin_HideArceus:
    SetFlag FLAG_HIDE_HALL_OF_ORIGIN_ARCEUS
    End

HallOfOrigin_OnLoad:
    GoToIfSet FLAG_MAP_LOCAL, HallOfOrigin_RemoveArceus
    End

HallOfOrigin_RemoveArceus:
    SetFlag FLAG_HIDE_HALL_OF_ORIGIN_ARCEUS
    RemoveObject LOCALID_ARCEUS
    ClearFlag FLAG_MAP_LOCAL
    End

HallOfOrigin_TriggerArceus:
    LockAll
    SetVar VAR_HALL_OF_ORIGIN_STATE, 0
    Call HallOfOrigin_PlayerNoticeArceus
    Call HallOfOrigin_PlayerWalkToArceus
    PlayCry SPECIES_ARCEUS
    WaitCry
    Call HallOfOrigin_PlayerWalkNorth
    PlayCry SPECIES_ARCEUS
    Message HallOfOrigin_Text_ArceusCry
    CloseMessage
    SetFlag FLAG_MAP_LOCAL
    StartLegendaryBattle SPECIES_ARCEUS, 80
    ClearFlag FLAG_MAP_LOCAL
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, HallOfOrigin_BlackOut
    CheckDidNotCapture VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, HallOfOrigin_DefeatedArceus
    CallIfEq VAR_ARCEUS_EVENT_STATE, 0, HallOfOrigin_IncreaseArceusEventState
    SetFlag FLAG_CAUGHT_ARCEUS
    ReleaseAll
    End

HallOfOrigin_IncreaseArceusEventState:
    SetVar VAR_ARCEUS_EVENT_STATE, 1
    Return

HallOfOrigin_DefeatedArceus:
    Message HallOfOrigin_Text_ArceusDisappeared
    WaitButton
    CloseMessage
    ClearFlag FLAG_HIDE_HALL_OF_ORIGIN_ARCEUS
    ReleaseAll
    End

HallOfOrigin_BlackOut:
    ClearFlag FLAG_HIDE_HALL_OF_ORIGIN_ARCEUS
    BlackOutFromBattle
    ReleaseAll
    End

HallOfOrigin_PlayerNoticeArceus:
    ApplyMovement LOCALID_PLAYER, HallOfOrigin_Movement_PlayerExclamationMark
    WaitMovement
    Return

    .balign 4, 0
HallOfOrigin_Movement_PlayerExclamationMark:
    EmoteExclamationMark
    Delay16
    EndMovement

HallOfOrigin_PlayerWalkToArceus:
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    SetVar VAR_0x8008, VAR_0x8004
    GoToIfEq VAR_0x8008, 30, HallOfOrigin_PlayerWalkToArceusX30
    GoToIfEq VAR_0x8008, 31, HallOfOrigin_PlayerWalkToArceusX31
    GoToIfEq VAR_0x8008, 32, HallOfOrigin_PlayerWalkToArceusX32
HallOfOrigin_PlayerWalkToArceusReturn:
    Return

HallOfOrigin_PlayerWalkToArceusX30:
    ApplyMovement LOCALID_PLAYER, HallOfOrigin_Movement_PlayerWalkToArceusX30
    WaitMovement
    GoTo HallOfOrigin_PlayerWalkToArceusReturn
    End

HallOfOrigin_PlayerWalkToArceusX31:
    ApplyMovement LOCALID_PLAYER, HallOfOrigin_Movement_PlayerWalkToArceusX31
    WaitMovement
    GoTo HallOfOrigin_PlayerWalkToArceusReturn
    End

HallOfOrigin_PlayerWalkToArceusX32:
    ApplyMovement LOCALID_PLAYER, HallOfOrigin_Movement_PlayerWalkToArceusX32
    WaitMovement
    GoTo HallOfOrigin_PlayerWalkToArceusReturn
    End

HallOfOrigin_PlayerWalkNorth:
    ApplyMovement LOCALID_PLAYER, HallOfOrigin_Movement_PlayerWalkNorth
    WaitMovement
    Return

    .balign 4, 0
HallOfOrigin_Movement_PlayerWalkToArceusX30:
    WalkNormalNorth 4
    WalkNormalEast
    FaceNorth
    EndMovement

    .balign 4, 0
HallOfOrigin_Movement_PlayerWalkToArceusX31:
    WalkNormalNorth 4
    EndMovement

    .balign 4, 0
HallOfOrigin_Movement_PlayerWalkToArceusX32:
    WalkNormalNorth 4
    WalkNormalWest
    FaceNorth
    EndMovement

    .balign 4, 0
HallOfOrigin_Movement_PlayerWalkNorth:
    WalkNormalNorth 2
    EndMovement
