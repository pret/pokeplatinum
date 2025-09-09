#include "macros/scrcmd.inc"


    InitScriptEntry_MapLoadFinish 0x2328
    InitScriptEntry_ConditionMet InitScriptConditions
    InitScriptEntryEnd

InitScriptConditions:
    InitScriptGoToIfEqual VAR_UNK_0x40D5, 1, 0x2334
    InitScriptGoToIfEqual VAR_UNK_0x40D5, 2, 0x2335
    InitScriptGoToIfEqual VAR_UNK_0x40D5, 4, 0x2336
    InitScriptGoToIfEqual VAR_UNK_0x40D5, 3, 0x2337
    InitScriptConditionsEnd

    InitScriptEnd
