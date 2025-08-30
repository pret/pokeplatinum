#include "macros/scrcmd.inc"


    InitScriptEntry_EnterLocation 22
    InitScriptEntry_MapReady 23
    InitScriptEntry_ConditionMet InitScriptConditions
    InitScriptEntryEnd

InitScriptConditions:
    InitScriptGoToIfEqual VAR_UNK_0x40D8, 1, 4
    InitScriptGoToIfEqual VAR_UNK_0x40D8, 2, 5
    InitScriptGoToIfEqual VAR_UNK_0x40D8, 3, 8
    InitScriptGoToIfEqual VAR_UNK_0x40D8, 0xFF, 6
    InitScriptConditionsEnd

    InitScriptEnd
