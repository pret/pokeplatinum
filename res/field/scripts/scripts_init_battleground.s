#include "macros/scrcmd.inc"


    InitScriptEntry_EnterLocation 4
    InitScriptEntry_ConditionMet InitScriptConditions
    InitScriptEntryEnd

InitScriptConditions:
    InitScriptGoToIfEqual VAR_UNK_0x40C1, 0, 3
    InitScriptConditionsEnd

    InitScriptEnd
