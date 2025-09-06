#include "macros/scrcmd.inc"


    InitScriptEntry_EnterLocation 0x264B
    InitScriptEntry_ConditionMet InitScriptConditions
    InitScriptEntryEnd

InitScriptConditions:
    InitScriptGoToIfEqual VAR_UNK_0x40D5, 5, 0x2648
    InitScriptGoToIfEqual VAR_UNK_0x40F7, 0, 1
    InitScriptConditionsEnd

    InitScriptEnd
