#include "macros/scrcmd.inc"
#include "res/text/bank/route_206_cycling_road_north_gate.h"
#include "res/field/events/events_route_206_cycling_road_north_gate.h"


    ScriptEntry Route206CyclingRoadNorthGate_OnTransition
    ScriptEntry Route206CyclingRoadNorthGate_CashierM
    ScriptEntry Route206CyclingRoadNorthGate_CoordEvent_OnlyBicycles
    ScriptEntry Route206CyclingRoadNorthGate_CoordEvent_ClearFlagForceBikingInGate
    ScriptEntry Route206CyclingRoadNorthGate_ScientistM
    ScriptEntry Route206CyclingRoadNorthGate_OnFrame_TryForceBiking
    ScriptEntryEnd

Route206CyclingRoadNorthGate_OnFrame_TryForceBiking:
    GetPlayerMapPos VAR_MAP_LOCAL_0x4, VAR_MAP_LOCAL_0x5
    CallIfGe VAR_MAP_LOCAL_0x5, 12, Route206CyclingRoadNorthGate_ForceBikingInGateOnFrame
    SetVar VAR_MAP_LOCAL_0x3, 1
    End

Route206CyclingRoadNorthGate_ForceBikingInGateOnFrame:
    SetFlag FLAG_FORCE_BIKING_IN_GATE
    Return

Route206CyclingRoadNorthGate_OnTransition:
    CallIfSet FLAG_RECEIVED_ROUTE_206_CYCLING_ROAD_NORTH_GATE_EXP_SHARE, Route206CyclingRoadNorthGate_HideScientistM
    End

Route206CyclingRoadNorthGate_HideScientistM:
    SetFlag FLAG_HIDE_ROUTE_206_CYCLING_ROAD_NORTH_GATE_SCIENTIST_M
    Return

Route206CyclingRoadNorthGate_CashierM:
    NPCMessage Route206CyclingRoadNorthGate_Text_LearnHowToShiftGears
    End

Route206CyclingRoadNorthGate_CoordEvent_OnlyBicycles:
    LockAll
    CheckPlayerOnBike VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, Route206CyclingRoadNorthGate_ForceBikingInGateCoordEvent
    ApplyMovement LOCALID_CASHIER_M_WEST, Route206CyclingRoadNorthGate_Movement_CashierMExclamationMark
    WaitMovement
    Message Route206CyclingRoadNorthGate_Text_OnlyForBicycles
    CloseMessage
    ApplyMovement LOCALID_PLAYER, Route206CyclingRoadNorthGate_Movement_PlayerWalkNorth
    WaitMovement
    ReleaseAll
    End

Route206CyclingRoadNorthGate_ForceBikingInGateCoordEvent:
    SetFlag FLAG_FORCE_BIKING_IN_GATE
    SetVar VAR_MAP_LOCAL_0x2, 1
    ReleaseAll
    End

    .balign 4, 0
Route206CyclingRoadNorthGate_Movement_CashierMExclamationMark:
    EmoteExclamationMark
    EndMovement

    .balign 4, 0
Route206CyclingRoadNorthGate_Movement_PlayerWalkNorth:
    WalkNormalNorth
    EndMovement

Route206CyclingRoadNorthGate_CoordEvent_ClearFlagForceBikingInGate:
    LockAll
    ClearFlag FLAG_FORCE_BIKING_IN_GATE
    SetVar VAR_MAP_LOCAL_0x2, 0
    ReleaseAll
    End

Route206CyclingRoadNorthGate_ScientistM:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_RECEIVED_ROUTE_206_CYCLING_ROAD_NORTH_GATE_EXP_SHARE, Route206CyclingRoadNorthGate_HoldingExpShareGetExpPoints
    BufferPlayerName 0
    BufferCounterpartName 1
    GetPlayerGender VAR_MAP_LOCAL_0x0
    GoToIfEq VAR_MAP_LOCAL_0x0, GENDER_MALE, Route206CyclingRoadNorthGate_MetHowManyPokemonMale
    GoTo Route206CyclingRoadNorthGate_MetHowManyPokemonFemale

Route206CyclingRoadNorthGate_MetHowManyPokemonMale:
    Message Route206CyclingRoadNorthGate_Text_PlayerMetHowManyPokemon
    GoTo Route206CyclingRoadNorthGate_CheckAmountPokemonSeen

Route206CyclingRoadNorthGate_MetHowManyPokemonFemale:
    Message Route206CyclingRoadNorthGate_Text_PlayerMetHowManyPokemon2
    GoTo Route206CyclingRoadNorthGate_CheckAmountPokemonSeen

Route206CyclingRoadNorthGate_CheckAmountPokemonSeen:
    GetNationalDexSeenCount VAR_0x8004
    BufferNumber 1, VAR_0x8004
    GoToIfLt VAR_0x8004, 35, Route206CyclingRoadNorthGate_FindAtLeast35
    Message Route206CyclingRoadNorthGate_Text_SomethingForYou
    SetVar VAR_0x8004, ITEM_EXP_SHARE
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, Route206CyclingRoadNorthGate_BagIsFull
    SetFlag FLAG_RECEIVED_ROUTE_206_CYCLING_ROAD_NORTH_GATE_EXP_SHARE
    Common_GiveItemQuantityNoLineFeed
    CloseMessage
    ReleaseAll
    End

Route206CyclingRoadNorthGate_BagIsFull:
    Common_MessageBagIsFull
    CloseMessage
    ReleaseAll
    End

Route206CyclingRoadNorthGate_HoldingExpShareGetExpPoints:
    Message Route206CyclingRoadNorthGate_Text_HoldingExpShareGetExpPoints
    WaitButton
    CloseMessage
    ReleaseAll
    End

Route206CyclingRoadNorthGate_FindAtLeast35:
    Message Route206CyclingRoadNorthGate_Text_FindAtLeast35
    WaitButton
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
