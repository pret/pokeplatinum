#include "macros/scrcmd.inc"
#include "res/text/bank/hearthome_city_dp_gym_elevator_room_2.h"


    ScriptEntry HearthomeCityDPGymElevatorRoom2_OnTransition
    ScriptEntry HearthomeCityDPGymElevatorRoom2_TriggerMoveLift
    ScriptEntry HearthomeCityDPGymElevatorRoom2_SignCorrect
    ScriptEntry HearthomeCityDPGymElevatorRoom2_SignQuestion
    ScriptEntryEnd

HearthomeCityDPGymElevatorRoom2_OnTransition:
    InitPersistedMapFeaturesForHearthomeGym
    End

HearthomeCityDPGymElevatorRoom2_TriggerMoveLift:
    MoveHearthomeGymDPLift
    End

HearthomeCityDPGymElevatorRoom2_SignCorrect:
    LockAll
    PlaySE SEQ_SE_DP_UG_020
    Message HearthomeCityDPGymElevatorRoom2_Text_Correct
    WaitButton
    CloseMessage
    ReleaseAll
    End

HearthomeCityDPGymElevatorRoom2_SignQuestion:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    Message HearthomeCityDPGymElevatorRoom2_Text_WhatsFirstRoomsAnswer
    PlaySE SEQ_SE_DP_MAZYO4
    WaitButton
    CloseMessage
    ReleaseAll
    End
