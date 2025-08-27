#include "macros/scrcmd.inc"


    InitScriptEntry_ConditionMet InitScriptConditions
    InitScriptEntryEnd

InitScriptConditions:
    InitScriptGoToIfEqual VAR_UNK_0x40D3, 1, 1
    InitScriptConditionsEnd

    InitScriptEnd
