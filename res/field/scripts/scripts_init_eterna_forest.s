#include "macros/scrcmd.inc"


    InitScriptEntry_EnterLocation 11
    InitScriptEntry_ConditionMet InitScriptConditions
    InitScriptEntryEnd

InitScriptConditions:
    InitScriptGoToIfEqual VAR_UNK_0x40CD, 1, 12
    InitScriptConditionsEnd

    InitScriptEnd
