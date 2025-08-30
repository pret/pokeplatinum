#include "macros/scrcmd.inc"


    InitScriptEntry_EnterLocation 3
    InitScriptEntry_ConditionMet InitScriptConditions
    InitScriptEntryEnd

InitScriptConditions:
    InitScriptGoToIfEqual VAR_UNK_0x40AA, 1, 1
    InitScriptConditionsEnd

    InitScriptEnd
