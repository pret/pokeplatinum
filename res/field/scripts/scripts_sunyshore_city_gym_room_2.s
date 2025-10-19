#include "macros/scrcmd.inc"


    ScriptEntry SunyshoreGymRoom2_Init
    ScriptEntry SunyshoreGymRoom2_BottomButton
    ScriptEntry SunyshoreGymRoom2_TopButtons
    ScriptEntry SunyshoreGymRoom2_Empty
    ScriptEntryEnd

SunyshoreGymRoom2_Init:
    SetVar VAR_MAP_LOCAL_0, 0
    InitPersistedMapFeaturesForSunyshoreGym 1
    End

SunyshoreGymRoom2_BottomButton:
    SunyshoreGymButton 0
    End

SunyshoreGymRoom2_TopButtons:
    SunyshoreGymButton 1
    End

SunyshoreGymRoom2_Empty:
    End

    .balign 4, 0
