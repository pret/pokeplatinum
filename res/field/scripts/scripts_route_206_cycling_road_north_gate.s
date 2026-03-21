#include "macros/scrcmd.inc"
#include "res/text/bank/route_206_cycling_road_north_gate.h"
#include "res/field/events/events_route_206_cycling_road_north_gate.h"


    ScriptEntry Route206CyclingRoadNorthGate_OnTransition
    ScriptEntry Route206CyclingRoadNorthGate_CashierM
    ScriptEntry Route206CyclingRoadNorthGate_TriggerOnlyBicycles
    ScriptEntry Route206CyclingRoadNorthGate_TriggerClearFlagForceBikingInGate
    ScriptEntry Route206CyclingRoadNorthGate_ScientistM
    ScriptEntry Route206CyclingRoadNorthGate_OnFrame
    ScriptEntryEnd

Route206CyclingRoadNorthGate_OnFrame:
    GetPlayerMapPos VAR_MAP_LOCAL_4, VAR_MAP_LOCAL_5
    CallIfGe VAR_MAP_LOCAL_5, 12, Route206CyclingRoadNorthGate_OnFrameForceBikingInGate
    SetVar VAR_MAP_LOCAL_3, 1
    End

Route206CyclingRoadNorthGate_OnFrameForceBikingInGate:
    SetFlag FLAG_FORCE_BIKING_IN_GATE
    Return

Route206CyclingRoadNorthGate_OnTransition:
    CallIfSet FLAG_RECEIVED_ROUTE_206_CYCLING_ROAD_NORTH_GATE_EXP_SHARE, Route206CyclingRoadNorthGate_HideScientistM
    End

Route206CyclingRoadNorthGate_HideScientistM:
    SetFlag FLAG_HIDE_ROUTE_206_CYCLING_ROAD_NORTH_GATE_SCIENTIST_M
    Return

Route206CyclingRoadNorthGate_CashierM:
    NPCMessage Route206CyclingRoadNorthGate_Text_LearnHowToShiftGearsAndYoullBeAbleToRideAnywhere
    End

Route206CyclingRoadNorthGate_TriggerOnlyBicycles:
    LockAll
    CheckPlayerOnBike VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, Route206CyclingRoadNorthGate_TriggerForceBikingInGate
    ApplyMovement LOCALID_CASHIER_M_WEST, Route206CyclingRoadNorthGate_Movement_CashierMExclamationMark
    WaitMovement
    Message Route206CyclingRoadNorthGate_Text_CyclingRoadIsOnlyForBicycles
    CloseMessage
    ApplyMovement LOCALID_PLAYER, Route206CyclingRoadNorthGate_Movement_PlayerWalkNorth
    WaitMovement
    ReleaseAll
    End

Route206CyclingRoadNorthGate_TriggerForceBikingInGate:
    SetFlag FLAG_FORCE_BIKING_IN_GATE
    SetVar VAR_MAP_LOCAL_2, 1
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

Route206CyclingRoadNorthGate_TriggerClearFlagForceBikingInGate:
    LockAll
    ClearFlag FLAG_FORCE_BIKING_IN_GATE
    SetVar VAR_MAP_LOCAL_2, 0
    ReleaseAll
    End

Route206CyclingRoadNorthGate_ScientistM:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_RECEIVED_ROUTE_206_CYCLING_ROAD_NORTH_GATE_EXP_SHARE, Route206CyclingRoadNorthGate_APokemonHoldingAnExpShareWillGetSomeOfTheExpPointsFromBattle
    BufferPlayerName 0
    BufferCounterpartName 1
    GetPlayerGender VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, GENDER_MALE, Route206CyclingRoadNorthGate_PlayerMaleLetMeAskYouHowManyPokemonHaveYouMet
    GoTo Route206CyclingRoadNorthGate_PlayerFemaleLetMeAskYouHowManyPokemonHaveYouMet

Route206CyclingRoadNorthGate_PlayerMaleLetMeAskYouHowManyPokemonHaveYouMet:
    Message Route206CyclingRoadNorthGate_Text_PlayerLetMeAskYouHowManyPokemonHaveYouMet
    GoTo Route206CyclingRoadNorthGate_CheckAmountPokemonSeen

Route206CyclingRoadNorthGate_PlayerFemaleLetMeAskYouHowManyPokemonHaveYouMet:
    Message Route206CyclingRoadNorthGate_Text_PlayerLetMeAskYouHowManyPokemonHaveYouMet2
    GoTo Route206CyclingRoadNorthGate_CheckAmountPokemonSeen

Route206CyclingRoadNorthGate_CheckAmountPokemonSeen:
    GetNationalDexSeenCount VAR_0x8004
    BufferNumber 1, VAR_0x8004
    GoToIfLt VAR_0x8004, 35, Route206CyclingRoadNorthGate_YouveGotToFindAtLeast35
    Message Route206CyclingRoadNorthGate_Text_ProfessorRowanShouldBeDelightedHereIsSomethingForYou
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

Route206CyclingRoadNorthGate_APokemonHoldingAnExpShareWillGetSomeOfTheExpPointsFromBattle:
    Message Route206CyclingRoadNorthGate_Text_APokemonHoldingAnExpShareWillGetSomeOfTheExpPointsFromBattle
    WaitButton
    CloseMessage
    ReleaseAll
    End

Route206CyclingRoadNorthGate_YouveGotToFindAtLeast35:
    Message Route206CyclingRoadNorthGate_Text_YouveGotToFindAtLeast35
    WaitButton
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
