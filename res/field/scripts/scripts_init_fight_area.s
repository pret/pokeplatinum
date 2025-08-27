#include "macros/scrcmd.inc"


    InitScriptEntry_EnterLocation 15
    InitScriptEntry_ConditionMet InitScriptConditions
    InitScriptEntryEnd

InitScriptConditions:
    InitScriptGoToIfEqual VAR_UNK_0x4081, 0, 1
    InitScriptConditionsEnd

    InitScriptEnd
