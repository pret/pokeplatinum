#include "macros/scrcmd.inc"


    InitScriptEntry_EnterLocation 7
    InitScriptEntry_ConditionMet InitScriptConditions
    InitScriptEntryEnd

InitScriptConditions:
    InitScriptGoToIfEqual VAR_UNK_0x40DA, 1, 3
    InitScriptGoToIfEqual VAR_UNK_0x40DA, 2, 4
    InitScriptConditionsEnd

    InitScriptEnd
