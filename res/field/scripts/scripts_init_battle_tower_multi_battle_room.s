#include "macros/scrcmd.inc"


    InitScriptEntry_EnterLocation 1
    InitScriptEntry_MapReady 2
    InitScriptEntry_ConditionMet InitScriptConditions
    InitScriptEntryEnd

InitScriptConditions:
    InitScriptGoToIfEqual VAR_UNK_0x40DE, 1, 3
    InitScriptGoToIfEqual VAR_UNK_0x40DE, 2, 4
    InitScriptConditionsEnd

    InitScriptEnd
