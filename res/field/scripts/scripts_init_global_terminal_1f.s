#include "macros/scrcmd.inc"


    InitScriptEntry_MapLoadFinish 13
    InitScriptEntry_ConditionMet InitScriptConditions
    InitScriptEntryEnd

InitScriptConditions:
    InitScriptGoToIfEqual VAR_UNK_0x40D5, 6, 12
    InitScriptConditionsEnd

    InitScriptEnd
