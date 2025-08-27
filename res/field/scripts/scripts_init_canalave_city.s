#include "macros/scrcmd.inc"


    InitScriptEntry_EnterLocation 1
    InitScriptEntry_MapLoad 24
    InitScriptEntry_ConditionMet InitScriptConditions
    InitScriptEntryEnd

InitScriptConditions:
    InitScriptGoToIfEqual VAR_UNK_0x4078, 2, 4
    InitScriptGoToIfEqual VAR_UNK_0x4078, 4, 5
    InitScriptGoToIfEqual VAR_UNK_0x40F8, 3, 23
    InitScriptConditionsEnd

    InitScriptEnd
