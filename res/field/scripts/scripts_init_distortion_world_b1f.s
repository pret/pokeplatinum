#include "macros/scrcmd.inc"


    InitScriptEntry_EnterLocation 1
    InitScriptEntry_ConditionMet InitScriptConditions
    InitScriptEntryEnd

InitScriptConditions:
    InitScriptGoToIfEqual VAR_DISTORTION_WORLD_PROGRESS, 2, 2
    InitScriptConditionsEnd

    InitScriptEnd
