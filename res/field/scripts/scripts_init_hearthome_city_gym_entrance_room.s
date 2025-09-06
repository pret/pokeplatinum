#include "macros/scrcmd.inc"


    InitScriptEntry_ConditionMet InitScriptConditions
    InitScriptEntryEnd

InitScriptConditions:
    InitScriptGoToIfEqual VAR_UNK_0x40D1, 0, 3
    InitScriptConditionsEnd

    InitScriptEnd
