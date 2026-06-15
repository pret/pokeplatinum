#include "macros/scrcmd.inc"


    ScriptEntry IronIslandB1FRightRoom_OnTransition
    ScriptEntry IronIslandB1FRightRoom_CoordEvent_PlatformLift
    ScriptEntryEnd

IronIslandB1FRightRoom_OnTransition:
    InitPersistedMapFeaturesForPlatformLift
    End

IronIslandB1FRightRoom_CoordEvent_PlatformLift:
    TriggerPlatformLift
    End

    .balign 4, 0
