#include "macros/scrcmd.inc"


    InitScriptEntry_ConditionMet InitScriptConditions
    InitScriptEntryEnd

InitScriptConditions:
    InitScriptGoToIfEqual VAR_UNK_0x40C3, 1, 1
    InitScriptConditionsEnd

    InitScriptEnd
