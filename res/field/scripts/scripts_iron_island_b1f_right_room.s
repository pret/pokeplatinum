#include "macros/scrcmd.inc"


    ScriptEntry IronIslandB1FRightRoom_OnTransition
    ScriptEntry IronIslandB1FRightRoom_TriggerPlatformLift
    ScriptEntryEnd

IronIslandB1FRightRoom_OnTransition:
    InitPersistedMapFeaturesForPlatformLift
    End

IronIslandB1FRightRoom_TriggerPlatformLift:
    TriggerPlatformLift
    End

    .balign 4, 0
