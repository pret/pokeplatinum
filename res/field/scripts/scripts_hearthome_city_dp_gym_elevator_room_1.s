#include "macros/scrcmd.inc"
#include "res/text/bank/hearthome_city_dp_gym_elevator_room_1.h"


    ScriptEntry HearthomeCityDPGymElevatorRoom1_OnTransition
    ScriptEntry HearthomeCityDPGymElevatorRoom1_TriggerMoveLift
    ScriptEntry HearthomeCityDPGymElevatorRoom1_SignCorrect
    ScriptEntry HearthomeCityDPGymElevatorRoom1_SignQuestion
    ScriptEntryEnd

HearthomeCityDPGymElevatorRoom1_OnTransition:
    InitPersistedMapFeaturesForHearthomeGym
    End

HearthomeCityDPGymElevatorRoom1_TriggerMoveLift:
    MoveHearthomeGymDPLift
    End

HearthomeCityDPGymElevatorRoom1_SignCorrect:
    LockAll
    PlaySE SEQ_SE_DP_UG_020
    Message HearthomeCityDPGymElevatorRoom1_Text_Correct
    WaitButton
    CloseMessage
    ReleaseAll
    End

HearthomeCityDPGymElevatorRoom1_SignQuestion:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    Message HearthomeCityDPGymElevatorRoom1_Text_WhatIs3Times13
    PlaySE SEQ_SE_DP_MAZYO4
    WaitButton
    CloseMessage
    ReleaseAll
    End
