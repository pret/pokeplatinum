#include "macros/scrcmd.inc"


    InitScriptEntry_EnterLocation 1
    InitScriptEntry_MapLoadFinish 5
    InitScriptEntry_ConditionMet InitScriptConditions
    InitScriptEntryEnd

InitScriptConditions:
    InitScriptGoToIfEqual VAR_UNK_0x40D9, 1, 2
    InitScriptGoToIfEqual VAR_UNK_0x40D9, 2, 3
    InitScriptConditionsEnd

    InitScriptEnd
