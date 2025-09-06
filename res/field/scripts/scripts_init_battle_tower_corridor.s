#include "macros/scrcmd.inc"


    InitScriptEntry_EnterLocation 1
    InitScriptEntry_MapReady 2
    InitScriptEntry_ConditionMet InitScriptConditions
    InitScriptEntryEnd

InitScriptConditions:
    InitScriptGoToIfEqual VAR_UNK_0x40DC, 1, 3
    InitScriptConditionsEnd

    InitScriptEnd
