#include "macros/scrcmd.inc"
#include "res/text/bank/hearthome_city_dp_gym_elevator_room_1.h"


    ScriptEntry HearthomeCityDPGymElevatorRoom1_OnTransition
    ScriptEntry HearthomeCityDPGymElevatorRoom1_CoordEvent_MoveLift
    ScriptEntry HearthomeCityDPGymElevatorRoom1_BgSignCorrect
    ScriptEntry HearthomeCityDPGymElevatorRoom1_BgSignQuestion
    ScriptEntryEnd

HearthomeCityDPGymElevatorRoom1_OnTransition:
    InitPersistedMapFeaturesForHearthomeGym
    End

HearthomeCityDPGymElevatorRoom1_CoordEvent_MoveLift:
    MoveHearthomeGymDPLift
    End

HearthomeCityDPGymElevatorRoom1_BgSignCorrect:
    LockAll
    PlaySE SEQ_SE_DP_UG_020
    Message HearthomeCityDPGymElevatorRoom1_Text_Correct
    WaitButton
    CloseMessage
    ReleaseAll
    End

HearthomeCityDPGymElevatorRoom1_BgSignQuestion:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    Message HearthomeCityDPGymElevatorRoom1_Text_WhatIs3Times13
    PlaySE SEQ_SE_DP_MAZYO4
    WaitButton
    CloseMessage
    ReleaseAll
    End
