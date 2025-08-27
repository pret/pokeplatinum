#include "macros/scrcmd.inc"


    InitScriptEntry_EnterLocation 7
    InitScriptEntry_ConditionMet InitScriptConditions
    InitScriptEntryEnd

InitScriptConditions:
    InitScriptGoToIfEqual VAR_UNK_0x411D, 0, 5
    InitScriptConditionsEnd

    InitScriptEnd
