#include "macros/scrcmd.inc"
#include "res/text/bank/route_206_cycling_road_south_gate.h"
#include "res/field/events/events_route_206_cycling_road_south_gate.h"


    ScriptEntry Route206CyclingRoadSouthGate_OnTransition
    ScriptEntry Route206CyclingRoadSouthGate_CashierM
    ScriptEntry Route206CyclingRoadSouthGate_CoordEvent_OnlyCyclists
    ScriptEntry Route206CyclingRoadSouthGate_CoordEvent_ClearFlagForceBikingInGate
    ScriptEntry Route206CyclingRoadSouthGate_BattleGirl
    ScriptEntry Route206CyclingRoadSouthGate_OnFrame_TryForceBiking
    ScriptEntryEnd

Route206CyclingRoadSouthGate_OnTransition:
    End

Route206CyclingRoadSouthGate_OnFrame_TryForceBiking:
    GetPlayerMapPos VAR_MAP_LOCAL_0x04, VAR_MAP_LOCAL_0x05
    CallIfLe VAR_MAP_LOCAL_0x05, 3, Route206CyclingRoadSouthGate_ForceBikingInGateOnFrame
    SetVar VAR_MAP_LOCAL_0x03, 1
    End

Route206CyclingRoadSouthGate_ForceBikingInGateOnFrame:
    SetFlag FLAG_FORCE_BIKING_IN_GATE
    Return

Route206CyclingRoadSouthGate_CashierM:
    NPCMessage Route206CyclingRoadSouthGate_Text_LearnHowToShiftGears
    End

Route206CyclingRoadSouthGate_CoordEvent_OnlyCyclists:
    LockAll
    CheckPlayerOnBike VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, Route206CyclingRoadSouthGate_ForceBikingInGateCoordEvent
    ApplyMovement LOCALID_CASHIER_M_WEST, Route206CyclingRoadSouthGate_Movement_CashierMExclamationMark
    WaitMovement
    Message Route206CyclingRoadSouthGate_Text_OpenOnlyToCyclists
    CloseMessage
    ApplyMovement LOCALID_PLAYER, Route206CyclingRoadSouthGate_Movement_PlayerWalkSouth
    WaitMovement
    ReleaseAll
    End

Route206CyclingRoadSouthGate_ForceBikingInGateCoordEvent:
    SetFlag FLAG_FORCE_BIKING_IN_GATE
    SetVar VAR_MAP_LOCAL_0x02, 1
    ReleaseAll
    End

    .balign 4, 0
Route206CyclingRoadSouthGate_Movement_CashierMExclamationMark:
    EmoteExclamationMark
    EndMovement

    .balign 4, 0
Route206CyclingRoadSouthGate_Movement_PlayerWalkSouth:
    WalkNormalSouth
    EndMovement

Route206CyclingRoadSouthGate_CoordEvent_ClearFlagForceBikingInGate:
    LockAll
    ClearFlag FLAG_FORCE_BIKING_IN_GATE
    SetVar VAR_MAP_LOCAL_0x02, 0
    ReleaseAll
    End

Route206CyclingRoadSouthGate_BattleGirl:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_RECEIVED_ROUTE_206_CYCLING_ROAD_SOUTH_GATE_ACCESSORY_FLAG, Route206CyclingRoadSouthGate_GoThroughMtCoronet
    SetVar VAR_0x8004, ACCESSORY_FLAG
    BufferAccessoryName 0, VAR_0x8004
    Message Route206CyclingRoadSouthGate_Text_HaveAFlag
    SetVar VAR_0x8005, 1
    Common_GiveAccessoryWaitForConfirm
    SetFlag FLAG_RECEIVED_ROUTE_206_CYCLING_ROAD_SOUTH_GATE_ACCESSORY_FLAG
    CloseMessage
    ReleaseAll
    End

Route206CyclingRoadSouthGate_GoThroughMtCoronet:
    Message Route206CyclingRoadSouthGate_Text_GoThroughMtCoronet
    WaitButton
    CloseMessage
    ReleaseAll
    End
