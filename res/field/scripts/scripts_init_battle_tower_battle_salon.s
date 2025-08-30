#include "macros/scrcmd.inc"


    InitScriptEntry_EnterLocation 7
    InitScriptEntry_MapReady 8
    InitScriptEntry_ConditionMet InitScriptConditions
    InitScriptEntryEnd

InitScriptConditions:
    InitScriptGoToIfEqual VAR_UNK_0x40DF, 1, 9
    InitScriptGoToIfEqual VAR_UNK_0x40DF, 2, 10
    InitScriptConditionsEnd

    InitScriptEnd
