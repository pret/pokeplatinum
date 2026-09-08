#include "macros/scrcmd.inc"
#include "res/text/bank/hearthome_city_dp_gym_elevator_room_2.h"


    ScriptEntry HearthomeCityDPGymElevatorRoom2_OnTransition
    ScriptEntry HearthomeCityDPGymElevatorRoom2_CoordEvent_MoveLift
    ScriptEntry HearthomeCityDPGymElevatorRoom2_BgSignCorrect
    ScriptEntry HearthomeCityDPGymElevatorRoom2_BgSignQuestion
    ScriptEntryEnd

HearthomeCityDPGymElevatorRoom2_OnTransition:
    InitPersistedMapFeaturesForHearthomeGym
    End

HearthomeCityDPGymElevatorRoom2_CoordEvent_MoveLift:
    MoveHearthomeGymDPLift
    End

HearthomeCityDPGymElevatorRoom2_BgSignCorrect:
    LockAll
    PlaySE SEQ_SE_DP_UG_020_sseq
    Message HearthomeCityDPGymElevatorRoom2_Text_Correct
    WaitButton
    CloseMessage
    ReleaseAll
    End

HearthomeCityDPGymElevatorRoom2_BgSignQuestion:
    PlaySE SE_CONFIRM_sseq_3
    LockAll
    Message HearthomeCityDPGymElevatorRoom2_Text_WhatsFirstRoomsAnswer
    PlaySE SEQ_SE_DP_MAZYO4_sseq
    WaitButton
    CloseMessage
    ReleaseAll
    End
