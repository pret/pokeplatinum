#include "macros/scrcmd.inc"
#include "res/text/bank/lake_acuity_low_water.h"


    ScriptEntry LakeAcuityLowWater_Rival
    ScriptEntryEnd

LakeAcuityLowWater_Rival:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_TALKED_TO_LAKE_ACUITY_LOW_WATER_RIVAL, LakeAcuityLowWater_ChallengeSunyshoreGym
    SetFlag FLAG_TALKED_TO_LAKE_ACUITY_LOW_WATER_RIVAL
    BufferRivalName 0
    Message LakeAcuityLowWater_Text_NotSupposedToBeHere
    WaitButton
    CloseMessage
    ReleaseAll
    End

LakeAcuityLowWater_ChallengeSunyshoreGym:
    BufferRivalName 0
    Message LakeAcuityLowWater_Text_ChallengeSunyshoreGym
    WaitButton
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
