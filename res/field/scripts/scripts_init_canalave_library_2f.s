#include "macros/scrcmd.inc"


    InitScriptEntry_EnterLocation 5
    InitScriptEntry_ConditionMet InitScriptConditions
    InitScriptEntryEnd

InitScriptConditions:
    InitScriptGoToIfEqual VAR_ARCEUS_EVENT_STATE, 2, 6
    InitScriptConditionsEnd

    InitScriptEnd
