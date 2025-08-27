#include "macros/scrcmd.inc"


    InitScriptEntry_EnterLocation 1
    InitScriptEntry_ConditionMet InitScriptConditions
    InitScriptEntryEnd

InitScriptConditions:
    InitScriptGoToIfEqual VAR_UNK_0x40A6, 0, 2
    InitScriptGoToIfEqual VAR_UNK_0x40A6, 2, 15
    InitScriptConditionsEnd

    InitScriptEnd
