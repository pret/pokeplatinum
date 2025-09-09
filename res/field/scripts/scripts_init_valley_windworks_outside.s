#include "macros/scrcmd.inc"


    InitScriptEntry_MapLoadStart 2
    InitScriptEntry_EnterLocation 1
    InitScriptEntry_MapLoadFinish 7
    InitScriptEntry_ConditionMet InitScriptConditions
    InitScriptEntryEnd

InitScriptConditions:
    InitScriptGoToIfEqual VAR_UNK_0x411E, 1, 8
    InitScriptConditionsEnd

    InitScriptEnd
