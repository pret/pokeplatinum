#include "macros/scrcmd.inc"


    InitScriptEntry_EnterLocation 5
    InitScriptEntry_ConditionMet InitScriptConditions
    InitScriptEntryEnd

InitScriptConditions:
    InitScriptGoToIfEqual VAR_UNK_0x40F9, 0, 3
    InitScriptConditionsEnd

    InitScriptEnd
