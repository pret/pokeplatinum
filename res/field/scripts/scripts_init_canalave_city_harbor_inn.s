#include "macros/scrcmd.inc"


    InitScriptEntry_EnterLocation 1
    InitScriptEntry_ConditionMet InitScriptConditions
    InitScriptEntryEnd

InitScriptConditions:
    InitScriptGoToIfEqual VAR_UNK_0x40F8, 1, 2
    InitScriptGoToIfEqual VAR_UNK_0x40F8, 2, 3
    InitScriptConditionsEnd

    InitScriptEnd
