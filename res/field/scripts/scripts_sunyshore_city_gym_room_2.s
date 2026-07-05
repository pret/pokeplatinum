#include "macros/scrcmd.inc"
#include "constants/sunyshore_gym_buttons.h"


    ScriptEntry SunyshoreGymRoom2_Init
    ScriptEntry SunyshoreGymRoom2_BottomButton
    ScriptEntry SunyshoreGymRoom2_TopButtons
    ScriptEntry SunyshoreGymRoom2_Dummy4
    ScriptEntryEnd

SunyshoreGymRoom2_Init:
    SetVar VAR_MAP_LOCAL_0x00, 0
    InitPersistedMapFeaturesForSunyshoreGym 1
    End

SunyshoreGymRoom2_BottomButton:
    PressSunyshoreGymButton SUNYSHORE_GYM_BUTTON_NORMAL
    End

SunyshoreGymRoom2_TopButtons:
    PressSunyshoreGymButton SUNYSHORE_GYM_BUTTON_REVERSE
    End

SunyshoreGymRoom2_Dummy4:
    End

    .balign 4, 0
