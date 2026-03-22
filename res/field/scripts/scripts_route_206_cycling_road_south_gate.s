#include "macros/scrcmd.inc"
#include "res/text/bank/route_206_cycling_road_south_gate.h"
#include "res/field/events/events_route_206_cycling_road_south_gate.h"


    ScriptEntry Route206CyclingRoadSouthGate_OnTransition
    ScriptEntry Route206CyclingRoadSouthGate_CashierM
    ScriptEntry Route206CyclingRoadSouthGate_TriggerOnlyCyclists
    ScriptEntry Route206CyclingRoadSouthGate_TriggerClearFlagForceBikingInGate
    ScriptEntry Route206CyclingRoadSouthGate_BattleGirl
    ScriptEntry Route206CyclingRoadSouthGate_OnFrame
    ScriptEntryEnd

Route206CyclingRoadSouthGate_OnTransition:
    End

Route206CyclingRoadSouthGate_OnFrame:
    GetPlayerMapPos VAR_MAP_LOCAL_4, VAR_MAP_LOCAL_5
    CallIfLe VAR_MAP_LOCAL_5, 3, Route206CyclingRoadSouthGate_OnFrameForceBikingInGate
    SetVar VAR_MAP_LOCAL_3, 1
    End

Route206CyclingRoadSouthGate_OnFrameForceBikingInGate:
    SetFlag FLAG_FORCE_BIKING_IN_GATE
    Return

Route206CyclingRoadSouthGate_CashierM:
    NPCMessage Route206CyclingRoadSouthGate_Text_LearnHowToShiftGearsAndYoullBeAbleToRideAnywhere
    End

Route206CyclingRoadSouthGate_TriggerOnlyCyclists:
    LockAll
    CheckPlayerOnBike VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, Route206CyclingRoadSouthGate_TriggerForceBikingInGate
    ApplyMovement LOCALID_CASHIER_M_WEST, Route206CyclingRoadSouthGate_Movement_CashierMExclamationMark
    WaitMovement
    Message Route206CyclingRoadSouthGate_Text_CyclingRoadIsOpenOnlyToCyclists
    CloseMessage
    ApplyMovement LOCALID_PLAYER, Route206CyclingRoadSouthGate_Movement_PlayerWalkSouth
    WaitMovement
    ReleaseAll
    End

Route206CyclingRoadSouthGate_TriggerForceBikingInGate:
    SetFlag FLAG_FORCE_BIKING_IN_GATE
    SetVar VAR_MAP_LOCAL_2, 1
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

Route206CyclingRoadSouthGate_TriggerClearFlagForceBikingInGate:
    LockAll
    ClearFlag FLAG_FORCE_BIKING_IN_GATE
    SetVar VAR_MAP_LOCAL_2, 0
    ReleaseAll
    End

Route206CyclingRoadSouthGate_BattleGirl:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_RECEIVED_ROUTE_206_CYCLING_ROAD_SOUTH_GATE_ACCESSORY_FLAG, Route206CyclingRoadSouthGate_GoThroughMtCoronetFromHereAndYouCanGetToHearthomeCity
    SetVar VAR_0x8004, ACCESSORY_FLAG
    BufferAccessoryName 0, VAR_0x8004
    Message Route206CyclingRoadSouthGate_Text_WhatsABicycleWithoutThisYouveGotToHaveAFlag
    SetVar VAR_0x8005, 1
    Common_GiveAccessoryWaitForConfirm
    SetFlag FLAG_RECEIVED_ROUTE_206_CYCLING_ROAD_SOUTH_GATE_ACCESSORY_FLAG
    CloseMessage
    ReleaseAll
    End

Route206CyclingRoadSouthGate_GoThroughMtCoronetFromHereAndYouCanGetToHearthomeCity:
    Message Route206CyclingRoadSouthGate_Text_GoThroughMtCoronetFromHereAndYouCanGetToHearthomeCity
    WaitButton
    CloseMessage
    ReleaseAll
    End
