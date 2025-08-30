#include "macros/scrcmd.inc"


    InitScriptEntry_EnterLocation 1
    InitScriptEntry_ConditionMet InitScriptConditions
    InitScriptEntryEnd

InitScriptConditions:
    InitScriptGoToIfEqual VAR_UNK_0x4074, 1, 5
    InitScriptConditionsEnd

    InitScriptEnd
