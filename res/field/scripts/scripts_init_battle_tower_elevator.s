#include "macros/scrcmd.inc"


    InitScriptEntry_EnterLocation 1
    InitScriptEntry_ConditionMet InitScriptConditions
    InitScriptEntryEnd

InitScriptConditions:
    InitScriptGoToIfEqual VAR_UNK_0x40DB, 1, 2
    InitScriptGoToIfEqual VAR_UNK_0x40DB, 2, 3
    InitScriptGoToIfEqual VAR_UNK_0x40DB, 3, 4
    InitScriptConditionsEnd

    InitScriptEnd
