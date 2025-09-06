#include "macros/scrcmd.inc"


    InitScriptEntry_EnterLocation 19
    InitScriptEntry_ConditionMet InitScriptConditions
    InitScriptEntryEnd

InitScriptConditions:
    InitScriptGoToIfEqual VAR_UNK_0x407E, 0, 1
    InitScriptConditionsEnd

    InitScriptEnd
