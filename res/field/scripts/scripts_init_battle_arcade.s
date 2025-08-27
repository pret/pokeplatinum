#include "macros/scrcmd.inc"


    InitScriptEntry_EnterLocation 15
    InitScriptEntry_ConditionMet InitScriptConditions
    InitScriptEntryEnd

InitScriptConditions:
    InitScriptGoToIfEqual VAR_UNK_0x40BF, 1, 4
    InitScriptGoToIfEqual VAR_UNK_0x40BF, 2, 2
    InitScriptGoToIfEqual VAR_UNK_0x40BF, 3, 5
    InitScriptGoToIfEqual VAR_UNK_0x40BF, 0xFF, 3
    InitScriptConditionsEnd

    InitScriptEnd
