#include "macros/scrcmd.inc"


    InitScriptEntry_ConditionMet InitScriptConditions
    InitScriptEntryEnd

InitScriptConditions:
    InitScriptGoToIfEqual VAR_MAP_LOCAL_1, 0, 2
    InitScriptConditionsEnd

    InitScriptEnd
