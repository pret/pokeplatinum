#include "macros/scrcmd.inc"


    InitScriptEntry_EnterLocation 1
    InitScriptEntry_ConditionMet InitScriptConditions
    InitScriptEntryEnd

InitScriptConditions:
    InitScriptGoToIfEqual VAR_UNK_0x40AD, 0, 2
    InitScriptConditionsEnd

    InitScriptEnd
