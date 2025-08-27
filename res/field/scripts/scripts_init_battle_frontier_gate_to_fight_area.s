#include "macros/scrcmd.inc"


    InitScriptEntry_EnterLocation 12
    InitScriptEntry_ConditionMet InitScriptConditions
    InitScriptEntryEnd

InitScriptConditions:
    InitScriptGoToIfEqual VAR_UNK_0x4113, 0, 1
    InitScriptConditionsEnd

    InitScriptEnd
