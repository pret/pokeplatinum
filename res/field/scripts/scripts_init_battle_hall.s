#include "macros/scrcmd.inc"


    InitScriptEntry_MapLoadStart 21
    InitScriptEntry_EnterLocation 16
    InitScriptEntry_MapLoadFinish 22
    InitScriptEntry_ConditionMet InitScriptConditions
    InitScriptEntryEnd

InitScriptConditions:
    InitScriptGoToIfEqual VAR_UNK_0x40BA, 1, 4
    InitScriptGoToIfEqual VAR_UNK_0x40BA, 2, 2
    InitScriptGoToIfEqual VAR_UNK_0x40BA, 3, 5
    InitScriptGoToIfEqual VAR_UNK_0x40BA, 0xFF, 3
    InitScriptConditionsEnd

    InitScriptEnd
