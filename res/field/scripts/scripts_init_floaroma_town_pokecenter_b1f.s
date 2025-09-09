#include "macros/scrcmd.inc"


    InitScriptEntry_MapLoadStart 0x23F3
    InitScriptEntry_ConditionMet InitScriptConditions
    InitScriptEntryEnd

InitScriptConditions:
    InitScriptGoToIfEqual VAR_UNK_0x40D4, 0, 0x23F0
    InitScriptGoToIfEqual VAR_UNK_0x4080, 1, 0x23F5
    InitScriptConditionsEnd

    InitScriptEnd
