#include "macros/scrcmd.inc"


    InitScriptEntry_EnterLocation 4
    InitScriptEntry_ConditionMet InitScriptConditions
    InitScriptEntryEnd

InitScriptConditions:
    InitScriptGoToIfEqual VAR_UNK_0x411F, 1, 2
    InitScriptConditionsEnd

    InitScriptEnd
