#include "macros/scrcmd.inc"


    InitScriptEntry_EnterLocation 14
    InitScriptEntry_ConditionMet InitScriptConditions
    InitScriptEntryEnd

InitScriptConditions:
    InitScriptGoToIfEqual VAR_UNK_0x40B7, 1, 4
    InitScriptGoToIfEqual VAR_UNK_0x40B7, 2, 2
    InitScriptGoToIfEqual VAR_UNK_0x40B7, 3, 5
    InitScriptGoToIfEqual VAR_UNK_0x40B7, 0xFF, 3
    InitScriptConditionsEnd

    InitScriptEnd
