#include "macros/scrcmd.inc"


    InitScriptEntry_EnterLocation 2
    InitScriptEntry_ConditionMet InitScriptConditions
    InitScriptEntryEnd

InitScriptConditions:
    InitScriptGoToIfEqual VAR_UNK_0x4104, 1, 3
    InitScriptConditionsEnd

    InitScriptEnd
