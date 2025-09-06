#include "macros/scrcmd.inc"


    InitScriptEntry_EnterLocation 14
    InitScriptEntry_ConditionMet InitScriptConditions
    InitScriptEntryEnd

InitScriptConditions:
    InitScriptGoToIfEqual VAR_UNK_0x40BC, 1, 4
    InitScriptGoToIfEqual VAR_UNK_0x40BC, 2, 2
    InitScriptGoToIfEqual VAR_UNK_0x40BC, 3, 5
    InitScriptGoToIfEqual VAR_UNK_0x40BC, 0xFF, 3
    InitScriptConditionsEnd

    InitScriptEnd
