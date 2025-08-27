#include "macros/scrcmd.inc"


    InitScriptEntry_EnterLocation 8
    InitScriptEntry_ConditionMet InitScriptConditions
    InitScriptEntryEnd

InitScriptConditions:
    InitScriptGoToIfEqual VAR_UNK_0x40A7, 0, 7
    InitScriptConditionsEnd

    InitScriptEnd
