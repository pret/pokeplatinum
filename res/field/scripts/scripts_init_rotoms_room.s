#include "macros/scrcmd.inc"


    InitScriptEntry_EnterLocation 7
    InitScriptEntry_MapReady 8
    InitScriptEntry_ConditionMet InitScriptConditions
    InitScriptEntryEnd

InitScriptConditions:
    InitScriptGoToIfEqual VAR_UNK_0x411B, 1, 11
    InitScriptConditionsEnd

    InitScriptEnd
