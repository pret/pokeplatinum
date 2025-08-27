#include "macros/scrcmd.inc"


    InitScriptEntry_EnterLocation 1
    InitScriptEntry_ConditionMet InitScriptConditions
    InitScriptEntryEnd

InitScriptConditions:
    InitScriptGoToIfEqual VAR_UNK_0x40C6, 0, 10
    InitScriptGoToIfEqual VAR_PAL_PARK_STATE, 1, 3
    InitScriptGoToIfEqual VAR_PAL_PARK_STATE, 2, 12
    InitScriptConditionsEnd

    InitScriptEnd
