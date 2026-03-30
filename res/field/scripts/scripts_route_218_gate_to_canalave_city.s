#include "macros/scrcmd.inc"
#include "res/text/bank/route_218_gate_to_canalave_city.h"
#include "res/field/events/events_route_218_gate_to_canalave_city.h"


    ScriptEntry Route218GateToCanalaveCity_Policeman
    ScriptEntry Route218GateToCanalaveCity_TriggerScientistM
    ScriptEntryEnd

Route218GateToCanalaveCity_TriggerScientistM:
    LockAll
    Call Route218GateToCanalaveCity_ScientistMWalkToPlayer
    BufferPlayerName 0
    BufferCounterpartName 1
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_MALE, Route218GateToCanalaveCity_UpgradeyourPokedexMale
    GoTo Route218GateToCanalaveCity_UpgradeyourPokedexFemale
    End

Route218GateToCanalaveCity_UpgradeyourPokedexMale:
    Message Route218GateToCanalaveCity_Text_UpgradeyourPokedexMale
    GoTo Route218GateToCanalaveCity_UpgradePokdex
    End

Route218GateToCanalaveCity_UpgradeyourPokedexFemale:
    Message Route218GateToCanalaveCity_Text_UpgradeyourPokedexFemale
    GoTo Route218GateToCanalaveCity_UpgradePokdex
    End

Route218GateToCanalaveCity_UpgradePokdex:
    Message Route218GateToCanalaveCity_Text_DisplayMaleAndFemale
    CloseMessage
    TurnOnPokedexFormDetection
    Call Route218GateToCanalaveCity_ScientistMLeave
    PlaySE SEQ_SE_DP_KAIDAN2
    SetFlag FLAG_HIDE_ROUTE_218_GATE_TO_CANALAVE_CITY_SCIENTIST_M
    RemoveObject LOCALID_SCIENTIST_M
    SetVar VAR_ROUTE_218_GATE_TO_CANALAVE_CITY_STATE, 1
    ReleaseAll
    End

Route218GateToCanalaveCity_ScientistMWalkToPlayer:
    GetPlayerMapPos VAR_0x8005, VAR_0x8006
    GoToIfEq VAR_0x8006, 5, Route218GateToCanalaveCity_ScientistMWalkToPlayerZ5
    GoToIfEq VAR_0x8006, 6, Route218GateToCanalaveCity_ScientistMWalkToPlayerZ6
    GoToIfEq VAR_0x8006, 7, Route218GateToCanalaveCity_ScientistMWalkToPlayerZ7
    GoToIfEq VAR_0x8006, 8, Route218GateToCanalaveCity_ScientistMWalkToPlayerZ8
    GoTo Route218GateToCanalaveCity_ScientistMWalkToPlayerZ9
    End

Route218GateToCanalaveCity_ScientistMWalkToPlayerZ5:
    ApplyMovement LOCALID_SCIENTIST_M, Route218GateToCanalaveCity_Movement_ScientistMWalkToPlayerZ5
    WaitMovement
    Return

Route218GateToCanalaveCity_ScientistMWalkToPlayerZ6:
    ApplyMovement LOCALID_SCIENTIST_M, Route218GateToCanalaveCity_Movement_ScientistMWalkToPlayerZ6
    WaitMovement
    Return

Route218GateToCanalaveCity_ScientistMWalkToPlayerZ7:
    ApplyMovement LOCALID_SCIENTIST_M, Route218GateToCanalaveCity_Movement_ScientistMWalkToPlayerZ7
    WaitMovement
    Return

Route218GateToCanalaveCity_ScientistMWalkToPlayerZ8:
    ApplyMovement LOCALID_SCIENTIST_M, Route218GateToCanalaveCity_Movement_ScientistMWalkToPlayerZ8
    WaitMovement
    Return

Route218GateToCanalaveCity_ScientistMWalkToPlayerZ9:
    ApplyMovement LOCALID_SCIENTIST_M, Route218GateToCanalaveCity_Movement_ScientistMWalkToPlayerZ9
    WaitMovement
    Return

Route218GateToCanalaveCity_ScientistMLeave:
    GetPlayerMapPos VAR_0x8005, VAR_0x8006
    GoToIfEq VAR_0x8006, 5, Route218GateToCanalaveCity_ScientistMLeaveZ5
    GoToIfEq VAR_0x8006, 6, Route218GateToCanalaveCity_ScientistMLeaveZ6
    GoToIfEq VAR_0x8006, 7, Route218GateToCanalaveCity_ScientistMLeaveZ7
    GoToIfEq VAR_0x8006, 8, Route218GateToCanalaveCity_ScientistMLeaveZ8
    GoTo Route218GateToCanalaveCity_ScientistMLeaveZ9
    End

Route218GateToCanalaveCity_ScientistMLeaveZ5:
    ApplyMovement LOCALID_SCIENTIST_M, Route218GateToCanalaveCity_Movement_ScientistMLeaveZ5
    WaitMovement
    Return

Route218GateToCanalaveCity_ScientistMLeaveZ6:
    ApplyMovement LOCALID_SCIENTIST_M, Route218GateToCanalaveCity_Movement_ScientistMLeaveZ6
    WaitMovement
    Return

Route218GateToCanalaveCity_ScientistMLeaveZ7:
    ApplyMovement LOCALID_SCIENTIST_M, Route218GateToCanalaveCity_Movement_ScientistMLeaveZ7
    WaitMovement
    Return

Route218GateToCanalaveCity_ScientistMLeaveZ8:
    ApplyMovement LOCALID_SCIENTIST_M, Route218GateToCanalaveCity_Movement_ScientistMLeaveZ8
    WaitMovement
    Return

Route218GateToCanalaveCity_ScientistMLeaveZ9:
    ApplyMovement LOCALID_SCIENTIST_M, Route218GateToCanalaveCity_Movement_ScientistMLeaveZ9
    WaitMovement
    Return

    .balign 4, 0
Route218GateToCanalaveCity_Movement_ScientistMWalkToPlayerZ5:
    EmoteExclamationMark
    WalkNormalEast
    WalkNormalNorth 2
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
Route218GateToCanalaveCity_Movement_ScientistMWalkToPlayerZ6:
    EmoteExclamationMark
    WalkNormalEast
    WalkNormalNorth
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
Route218GateToCanalaveCity_Movement_ScientistMWalkToPlayerZ7:
    EmoteExclamationMark
    WalkNormalEast
    EndMovement

    .balign 4, 0
Route218GateToCanalaveCity_Movement_ScientistMWalkToPlayerZ8:
    EmoteExclamationMark
    WalkNormalEast
    WalkNormalSouth
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
Route218GateToCanalaveCity_Movement_ScientistMWalkToPlayerZ9:
    EmoteExclamationMark
    WalkNormalEast
    WalkNormalSouth 2
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
Route218GateToCanalaveCity_Movement_ScientistMLeaveZ5:
    WalkNormalSouth 2
    WalkNormalEast 4
    EndMovement

    .balign 4, 0
Route218GateToCanalaveCity_Movement_ScientistMLeaveZ6:
    WalkNormalSouth
    WalkNormalEast 4
    EndMovement

    .balign 4, 0
Route218GateToCanalaveCity_Movement_ScientistMLeaveZ7:
    WalkNormalNorth
    WalkNormalEast 3
    WalkNormalSouth
    WalkNormalEast
    EndMovement

    .balign 4, 0
Route218GateToCanalaveCity_Movement_ScientistMLeaveZ8:
    WalkNormalNorth
    WalkNormalEast 4
    EndMovement

    .balign 4, 0
Route218GateToCanalaveCity_Movement_ScientistMLeaveZ9:
    WalkNormalNorth 2
    WalkNormalEast 4
    EndMovement

Route218GateToCanalaveCity_Policeman:
    NPCMessage Route218GateToCanalaveCity_Text_ISureAmThirsty
    End

    .balign 4, 0
